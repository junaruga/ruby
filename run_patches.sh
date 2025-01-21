#!/bin/bash

set -eux

# Patch0: ruby-2.3.0-ruby_version.patch
# Patch1: ruby-2.1.0-Prevent-duplicated-paths-when-empty-version-string-i.patch
# Patch2: ruby-2.1.0-Enable-configuration-of-archlibdir.patch
# Patch3: ruby-2.1.0-always-use-i386.patch
# Patch4: ruby-2.1.0-custom-rubygems-location.patch
# Patch6: ruby-2.7.0-Initialize-ABRT-hook.patch
# Patch9: ruby-3.3.0-Disable-syntax-suggest-test-case.patch
# Patch12: ruby-3.4.0-Extract-hardening-CFLAGS-to-a-special-hardenflags-variable.patch
# Patch13: rubygems-3.5.17-Avoid-another-race-condition-of-open-mode.patch
# Patch14: rubygems-3.5.17-Remove-the-lock-file-for-binstubs.patch

# %patch 0 -p1

cat ruby-2.3.0-ruby_version.patch | patch -p1

# %patch 1 -p1

cat ruby-2.1.0-Prevent-duplicated-paths-when-empty-version-string-i.patch | patch -p1

# %patch 2 -p1

cat ruby-2.1.0-Enable-configuration-of-archlibdir.patch | patch -p1

# %patch 3 -p1

cat ruby-2.1.0-always-use-i386.patch | patch -p1

# %patch 4 -p1

cat ruby-2.1.0-custom-rubygems-location.patch | patch -p1

# %patch 6 -p1
# Hunk

# %patch 9 -p1
# %patch 12 -p1
# %patch 13 -p1
# %patch 14 -p1

