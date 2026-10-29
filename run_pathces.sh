#!/bin/bash

set -euxo pipefail

# %patch0 -p1
cat ruby-2.3.0-ruby_version.patch | patch -p1
# %patch1 -p1
cat ruby-2.1.0-Prevent-duplicated-paths-when-empty-version-string-i.patch | patch -p1
# %patch2 -p1
cat ruby-2.1.0-Enable-configuration-of-archlibdir.patch | patch -p1
# %patch3 -p1
cat ruby-2.1.0-always-use-i386.patch | patch -p1
# %patch4 -p1
cat ruby-2.1.0-custom-rubygems-location.patch | patch -p1
# %patch5 -p1
cat ruby-1.9.3-mkmf-verbose.patch | patch -p1
# %patch6 -p1
cat ruby-2.7.0-Initialize-ABRT-hook.patch | patch -p1
# %patch7 -p1
cat ruby-3.1.0-Don-t-query-RubyVM-FrozenCore-for-class-path.patch | patch -p1
# %patch15 -p1
cat ruby-3.1.0-Support-GCCs-DWARF-5.patch | patch -p1
# %patch16 -p1
cat ruby-3.1.0-Get-rid-of-type-punning-pointer-casts.patch | patch -p1
# %patch17 -p1
cat ruby-3.1.0-Ignore-DW_FORM_ref_addr.patch | patch -p1
# %patch18 -p1
cat ruby-3.1.0-addr2line-DW_FORM_ref_addr.patch | patch -p1
# %patch19 -p1
cat ruby-2.7.1-Timeout-the-test_bug_reporter_add-witout-raising-err.patch | patch -p1
# %patch20 -p1
cat ruby-3.1.0-Use-mmap-for-allocating-heap-pages-in-the-GC.patch | patch -p1
# %patch21 -p1
cat ruby-3.1.0-Properly-exclude-test-cases.patch | patch -p1
# %patch22 -p1
cat rubygems-3.2.33-Fix-loading-operating_system-rb-customizations-too-late.patch | patch -p1
# %patch30 -p1
cat ruby-ext-openssl-extconf.rb-ignore-OpenSSL-version-check.patch | patch -p1
# %patch31 -p1
cat rubygems-3.2.30-Provide-distinguished-name-which-will-be-correctly-p.patch | patch -p1
# %patch40 -p1
cat ruby-3.1.0-Refactor-PEM-DER-serialization-code.patch | patch -p1
# %patch41 -p1
cat ruby-3.1.0-Add-more-support-for-generic-pkey-types.patch | patch -p1
# %patch42 -p1
cat ruby-3.1.0-Migrate-from-the-low-level-HMAC-API-to-the-EVP-API.patch | patch -p1
# %patch43 -p1
cat ruby-3.1.0-Allow-setting-algorithm-specific-options-in-sign-and-verify.patch | patch -p1
# %patch44 -p1
cat ruby-3.1.0-Use-high-level-EVP-interface-to-generate-parameters-and-keys.patch | patch -p1
# %patch45 -p1
cat ruby-3.1.0-Use-EVP-API-in-more-places.patch | patch -p1
# %patch46 -p1
cat ruby-3.1.0-Implement-PKey-encrypt-decrypt-sign_raw-verify_raw-and-verify_recover.patch | patch -p1
# %patch47 -p1
cat ruby-3.1.0-test-openssl-utils-remove-dup_public-helper-method.patch | patch -p1
# %patch48 -p1
cat ruby-3.1.0-test-openssl-test_digest-do-not-test-constants-for-l.patch | patch -p1
# %patch49 -p1
cat ruby-3.1.0-test-openssl-test_ssl-relax-regex-to-match-OpenSSL-s.patch | patch -p1
# %patch50 -p1
cat ruby-3.1.0-test-openssl-test_pkcs12-fix-test-failures-with-Open.patch | patch -p1
# %patch51 -p1
cat ruby-3.1.0-test-openssl-test_pkey-use-EC-keys-for-PKey.generate.patch | patch -p1
# %patch52 -p1
cat ruby-3.1.0-Miscellaneous-changes-for-OpenSSL-3.0-support.patch | patch -p1
# %patch53 -p1
cat ruby-3.1.0-Use-OSSL_DECODER-to-load-encrypted-PEM-on-OpenSSL-3.0.patch | patch -p1
# %patch54 -p1
cat ruby-3.1.0-Allocate-EVP_PKEY-on-initialize.patch | patch -p1
# %patch55 -p1
cat ruby-3.1.0-Disable-test_no_private_exp-on-OpenSSL-3.0.patch | patch -p1
# %patch56 -p1
cat ruby-3.1.0-Deprecate-PKey-set_-and-PKey-DH-EC-generate_key.patch | patch -p1
# %patch57 -p1
cat rubygems-3.3.1-Fix-compatibility-with-OpenSSL3.0.patch | patch -p1
# %patch58 -p1
cat ruby-3.1.0-Miscellaneous-changes-for-OpenSSL-3.0-support-part-2.patch | patch -p1
# %patch59
cat ruby-3.1.1-ossl_ocsp-use-null.patch | patch -p0
# %patch60 -p1
cat ruby-3.1.2-ossl-tests-replace-sha1.patch | patch -p1
# %patch62 -p1
cat ruby-spec-Fix-tests-on-tzdata-2022b.patch | patch -p1
# %patch64 -p1
cat ruby-3.3.0-test-file-utime.patch | patch -p1
# %patch65 -p1
cat ruby-3.3.0-openssl-3.2.0-fix-fips-get-set-in-openssl-3.patch | patch -p1
# %patch66 -p1
cat ruby-3.3.0-openssl-3.2.0-fips-fix-pkey-read-in-openssl-3.patch | patch -p1
# %patch67 -p1
cat ruby-3.3.0-openssl-3.2.0-fips-enable-tests.patch | patch -p1
# %patch68 -p1
cat ruby-3.3.0-openssl-3.2.0-fips-fix-pkey-dh-require-openssl.patch | patch -p1
# %patch69 -p1
cat ruby-3.4.0-ruby-net-http-Renew-test-certificates.patch | patch -p1
# %patch72 -p1
cat ruby-3.2.0-define-unsupported-gc-compaction-methods-as-rb_f_notimplement.patch | patch -p1
# %patch73 -p1
cat ruby-3.2.0-define-unsupported-gc-compaction-methods_generated-files.patch | patch -p1
# %patch74 -p1
cat ruby-3.2.0-Detect-compaction-support-during-runtime.patch | patch -p1
# %patch75 -p1
cat rubygem-irb-1.4.2-Fix-already-initialized-constant-messages-from-require-in-scripts.patch | patch -p1
# %patch76 -p1
cat rubygem-cgi-0.3.5.1-Fix-DoS-in-CGI-Cookie-parse-CVE-2025-27219.patch | patch -p1
# %patch77 -p1
cat rubygem-cgi-0.3.5.1-Fix-ReDoS-in-CGI-CVE-2025-27220.patch | patch -p1
# %patch78 -p1
cat rubygem-openssl-3.3.0-Only-CSR-version-1-encoded-as-0-is-allowed-by-PKIX.patch | patch -p1
# %patch79 -p1
cat rubygem-openssl-3.3.0-test_asn1.rb-Remove-the-assertions-of-the-time.patch | patch -p1
# %patch80 -p1
cat ruby-3.4.0-ruby-net-http-test_https.rb-fix-test_session_reuse_but_expire.patch | patch -p1
# %patch81 -p1
cat rubygem-erb-4.0.3.1-Fix-arbitrary-code-execution-via-deserialization-bypass-CVE-2026-41316.patch | patch -p1
# %patch82 -p1
cat rubygem-net-imap-0.3.10-Fix-Information-disclosure-via-man-in-the-middle-attack-bypassing-TLS-CVE-2026-42246.patch | patch -p1
# %patch83 -p1
cat rubygem-net-imap-0.4.24-Fix-IMAP-Command-Injection-via-Symbol-Arguments-CVE-2026-42258.patch | patch -p1
# %patch84 -p1
cat ruby-3.0.7-Rescue-networking-exceptions-for-localhost-only-host-networking.patch | patch -p1
# %patch85 -p1
cat rubygem-resolv-0.2.1-Do-Not-Register-On-Demand-Classes-for-Unknown-DNS-Types-CVE-2026-80212.patch | patch -p1
