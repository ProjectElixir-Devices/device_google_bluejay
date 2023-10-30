rm -rf device/google/gs101
git clone --depth=1 https://github.com/ProjectElixir-Devices/device_google_gs101 device/google/gs101

rm -rf vendor/google/bluejay
git clone --depth=1 https://github.com/Tree-Junkyard/proprietary_vendor_google_bluejay vendor/google/bluejay -b lineage-21

rm -rf kernel/google/gs201/private/gs-google
git clone --depth=1 https://github.com/Evolution-X-Devices/kernel_google_gs201 kernel/google/gs201/private/gs-google

rm -rf packages/apps/PixelParts
git clone --depth=1 https://github.com/Evolution-X-Devices/packages_apps_PixelParts.git -b udc packages/apps/PixelParts
