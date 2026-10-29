# frozen_string_literal: false
require 'test/unit'
require 'resolv'

# Decoding a response with unknown (type, class) pairs
# used to register a generated class permanently, so a malicious response could
# exhaust memory even after the response was discarded.
class TestResolvResourceLeak < Test::Unit::TestCase
  # Number of dynamically-registered "Type<n>_Class<n>" constants on +mod+.
  def type_const_count(mod)
    mod.constants(false).count { |c| c.to_s.match?(/\AType\d+_Class\d+\z/) }
  end

  # A DNS response whose answer section holds +count+ RRs, each with a distinct
  # unknown (type, class) pair.
  def unknown_typeclass_response(count)
    body = "".b
    count.times do |i|
      type  = 40000 + i
      klass = 60000
      rdata = "\x01\x02\x03".b
      body << "\x00".b                                    # NAME = root
      body << [type, klass, 0, rdata.bytesize].pack('nnNn')
      body << rdata
    end
    header = "\x00\x00\x00\x00".b + [0, count, 0, 0].pack('nnnn')
    (header + body).b
  end

  def test_unknown_typeclass_does_not_leak_classes
    resource = Resolv::DNS::Resource
    generic  = Resolv::DNS::Resource::Generic

    before_resource = type_const_count(resource)
    before_generic  = type_const_count(generic)

    [100, 1000].each do |count|
      msg = unknown_typeclass_response(count)
      3.times { Resolv::DNS::Message.decode(msg) }
    end
    GC.start

    assert_equal before_resource, type_const_count(resource),
      'decoding unknown (type, class) RRs must not register new Resource constants'
    assert_equal before_generic, type_const_count(generic),
      'decoding unknown (type, class) RRs must not register new Generic constants'
  end

  # Dropping the permanent registration must not break decoding of the unknown
  # values themselves.
  def test_unknown_values_still_decode
    msg = Resolv::DNS::Message.decode(unknown_typeclass_response(3))
    assert_equal 3, msg.answer.size
    _, _, rr = msg.answer.first
    assert_kind_of Resolv::DNS::Resource::Generic, rr
    assert_equal "\x01\x02\x03".b, rr.data
  end
end
