#
# Copyright (C) 2017 The LineageOS Project
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
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),sagit)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

PERSIST_FPCALIBRATION_SYMLINK := $(TARGET_OUT_VENDOR)/etc/fp/calibrationimage.pndat
$(PERSIST_FPCALIBRATION_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "FPC Calibrationimage link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /mnt/vendor/persist/misc/calibration_image.pndat $@

ALL_DEFAULT_INSTALLED_MODULES += $(PERSIST_FPCALIBRATION_SYMLINK)

endif
