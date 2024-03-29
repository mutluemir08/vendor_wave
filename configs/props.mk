# Copyright (C) 2019 Wave-OS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Override undesired Google defaults
ADDITIONAL_BUILD_PROPERTIES += \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.setupwizard.require_network=any \
    ro.setupwizard.mode=OPTIONAL \
    ro.opa.eligible_device=true

# Allow tethering without provisioning app
ADDITIONAL_BUILD_PROPERTIES += net.tethering.noprovisioning=true

# Don't Hide APNs
ADDITIONAL_BUILD_PROPERTIES += persist.sys.hideapn=false

# Branding Props
ADDITIONAL_BUILD_PROPERTIES += \
    ro.modversion=$(WAVE_VERSION)-$(shell date -u +%Y%m%d) \
    ro.qti.caf.version=$(CAF_VERSION) \
    ro.wave.version=$(WAVE_VERSION) \
    ro.wave.version_code=$(PLATFORM_WAVE_VERSION_CODE) \
    ro.wave.device=$(WAVE_BUILD) \
    ro.wave.display.version=$(WAVE_VERSION) \
    ro.wave.releasetype=$(WAVE_BUILD_TYPE) \
    ro.wave.build=$(PLATFORM_WAVE_BUILD_NUMBER) \
    ro.wave.maintenance_patch=$(PLATFORM_WAVE_MAINTENANCE_PATCH)
