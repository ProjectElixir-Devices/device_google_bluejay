rm -rf device/google/gs101
git clone https://github.com/ProjectElixir-Devices/device_google_gs101 device/google/gs101 --depth 1

rm -rf kernel/google/gs201/private/gs-google
git clone https://github.com/ProjectElixir-Devices/kernel_google_gs201 kernel/google/gs201/private/gs-google --depth 1

rm -rf vendor/google/bluejay
git clone https://gitlab.com/projectelixiros/vendor_google_bluejay vendor/google/bluejay --depth 1

rm -rf packages/apps/PixelParts
git clone https://github.com/ProjectElixir-Devices/packages_apps_PixelParts packages/apps/PixelParts --depth 1

rm -rf hardware/google/pixel-sepolicy
git clone https://github.com/ItsLynix/android_hardware_google_pixel-sepolicy hardware/google/sepolicy --depth 1

rm -rf kernel/google/gs201/private/devices/google/bluejay
git clone https://android.googlesource.com/kernel/devices/google/bluejay --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/devices/google/bluejay

rm -rf kernel/google/gs201/private/google-modules/amplifiers
git clone https://android.googlesource.com/kernel/google-modules/amplifiers --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/amplifiers

rm -rf kernel/google/gs201/private/google-modules/aoc
git clone https://android.googlesource.com/kernel/google-modules/aoc --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/aoc

rm -rf kernel/google/gs201/private/google-modules/aoc_ipc
git clone https://android.googlesource.com/kernel/google-modules/aoc-ipc --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/aoc_ipc

rm -rf kernel/google/gs201/private/google-modules/bluetooth
git clone https://android.googlesource.com/kernel/google-modules/bluetooth/broadcom --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/bluetooth/broadcom

rm -rf kernel/google/gs201/private/google-modules/bms
git clone https://android.googlesource.com/kernel/google-modules/bms --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/bms

rm -rf kernel/google/gs201/private/google-modules/display
git clone https://android.googlesource.com/kernel/google-modules/display --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/display

rm -rf kernel/google/gs201/private/google-modules/edgetpu/
git clone https://android.googlesource.com/kernel/google-modules/edgetpu/abrolhos --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/edgetpu/abrolhos

rm -rf kernel/google/gs201/private/google-modules/fingerprint
git clone https://android.googlesource.com/kernel/google-modules/fingerprint/fpc --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/fingerprint/fpc

rm -rf kernel/google/gs201/private/google-modules/gpu
git clone https://android.googlesource.com/kernel/google-modules/gpu --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/gpu

rm -rf kernel/google/gs201/private/google-modules/lwis
git clone https://android.googlesource.com/kernel/google-modules/lwis --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/lwis

rm -rf kernel/google/gs201/private/google-modules/nfc
git clone https://android.googlesource.com/kernel/google-modules/nfc --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/nfc

rm -rf kernel/google/gs201/private/google-modules/power/
git clone https://android.googlesource.com/kernel/google-modules/power/reset --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/power/reset

rm -rf kernel/google/gs201/private/google-modules/sensors/hall_sensor
git clone https://android.googlesource.com/kernel/google-modules/sensors/hall_sensor --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/sensors/hall_sensor

rm -rf kernel/google/gs201/private/google-modules/touch/
git clone https://android.googlesource.com/kernel/google-modules/touch/common --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/touch/common
git clone https://android.googlesource.com/kernel/google-modules/touch/fts_touch --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/touch/fts
git clone https://android.googlesource.com/kernel/google-modules/touch/sec_touch --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/touch/sec

rm -rf kernel/google/gs201/private/google-modules/uwb
git clone https://android.googlesource.com/kernel/google-modules/uwb --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/uwb

rm -rf kernel/google/gs201/private/google-modules/video/
git clone https://android.googlesource.com/kernel/google-modules/video/gchips --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/video/gchips

rm -rf kernel/google/gs201/private/google-modules/wlan
git clone https://android.googlesource.com/kernel/google-modules/wlan/bcmdhd/bcm4389 --depth 1 --no-tags --single-branch -b android-13.0.0_r0.106 kernel/google/gs201/private/google-modules/wlan/bcmdhd4389

TOP=$(pwd)

function reset() {
  REPO=${1/\/LineageOS\//|} # Convert "/LineageOS/" to |
  IFS='|' read -ra REPO <<< "$REPO" # Split by delimiter
  FOLDER=${REPO[1]/android_/} # Remove platform_ from dir name
  FOLDER=${FOLDER//_//} # replace _ with / to make a path to directory to patch

  rm -rf $TOP/$FOLDER
  git clone $1 $TOP/$FOLDER
  cd $TOP/$FOLDER
  git reset --hard $2
}

# Reclones repo + resets to hash
#reset "https://github.com/LineageOS/android_hardware_google_graphics_common" "0af754a"
#reset "https://github.com/LineageOS/android_hardware_google_gchips" "5ff4c71032539ed63b7fd78d65ca501b87976a13"
#reset "https://github.com/LineageOS/android_hardware_google_pixel" "222544ec1166be5d49face442f5c6600fd9e8424"

cd $TOP
