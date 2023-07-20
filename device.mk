#
# Copyright 2013 The Android Open-Source Project
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

# rild
PRODUCT_PACKAGES := \
    rild \
    CarrierConfig \
    BasicSmsReceiver

# Features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml

# Camera
PRODUCT_PACKAGES += \
    camera.debx

PRODUCT_PACKAGES += \
    hostapd_default.conf

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib/libril-qc-qmi-1.so

# the actual meat of the device-specific product definition
$(call inherit-product, device/asus/flox/device-common.mk)

# inherit from the non-open-source side, if present
$(call inherit-product, vendor/asus/debx/debx-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += \
    device/asus/debx/overlay

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.debx:$(TARGET_COPY_OUT_RAMDISK)/fstab.flox \
    $(LOCAL_PATH)/rootdir/etc/fstab.debx:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.flox
