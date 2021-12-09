#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        vendor/lib/hw/audio.primary.apollo.so)
            sed -i 's|/vendor/etc/mixer_paths_overlay_dynamic.xml|/vendor/etc/audio/sku_apollo/mix_pa_dyn.xml|g' "${2}"
            sed -i 's|/vendor/etc/mixer_paths_overlay_static.xml|/vendor/etc/audio/sku_apollo/mix_pa_st.xml|g' "${2}"
            ;;
        vendor/lib/hw/audio.primary.cas.so)
            sed -i 's|/vendor/etc/mixer_paths_overlay_dynamic.xml|/vendor/etc/audio/sku_cas/mix_pa_dyn.xml\x0\x0\x0|g' "${2}"
            sed -i 's|/vendor/etc/mixer_paths_overlay_static.xml|/vendor/etc/audio/sku_cas/mix_pa_st.xml\x0\x0\x0|g' "${2}"
            ;;
        vendor/lib/hw/audio.primary.cmi.so)
            sed -i 's|/vendor/etc/mixer_paths_overlay_dynamic.xml|/vendor/etc/audio/sku_cmi/mix_pa_dyn.xml\x0\x0\x0|g' "${2}"
            sed -i 's|/vendor/etc/mixer_paths_overlay_static.xml|/vendor/etc/audio/sku_cmi/mix_pa_st.xml\x0\x0\x0|g' "${2}"
            ;;
        vendor/lib/hw/audio.primary.lmi.so)
            sed -i 's|/vendor/etc/mixer_paths_overlay_dynamic.xml|/vendor/etc/audio/sku_lmi/mix_pa_dyn.xml\x0\x0\x0|g' "${2}"
            sed -i 's|/vendor/etc/mixer_paths_overlay_static.xml|/vendor/etc/audio/sku_lmi/mix_pa_st.xml\x0\x0\x0|g' "${2}"
            ;;
        vendor/lib/hw/audio.primary.umi.so)
            sed -i 's|/vendor/etc/mixer_paths_overlay_dynamic.xml|/vendor/etc/audio/sku_umi/mix_pa_dyn.xml\x0\x0\x0|g' "${2}"
            sed -i 's|/vendor/etc/mixer_paths_overlay_static.xml|/vendor/etc/audio/sku_umi/mix_pa_st.xml\x0\x0\x0|g' "${2}"
            ;;
        vendor/lib64/hw/fingerprint.goodix_fod.cas.so|vendor/lib64/libgf_cas.so)
            sed -i 's|libgf_hal.so|libgf_cas.so|g' "${2}"
            sed -i 's|/dev/goodix_fp|/dev/gx_fod_fp|g' "${2}"
            ;;
        vendor/lib64/hw/fingerprint.goodix_fod.cmi.so|vendor/lib64/libgf_cmi.so)
            sed -i 's|libgf_hal.so|libgf_cmi.so|g' "${2}"
            sed -i 's|/dev/goodix_fp|/dev/gx_fod_fp|g' "${2}"
            ;;
        vendor/lib64/hw/fingerprint.goodix_fod.lmi.so|vendor/lib64/libgf_lmi.so|vendor/lib64/libgf_lmi6.so)
            sed -i 's|libgf_hal.so|libgf_lmi.so|g' "${2}"
            sed -i 's|libgf_hal6.so|libgf_lmi6.so|g' "${2}"
            sed -i 's|/dev/goodix_fp|/dev/gx_fod_fp|g' "${2}"
            ;;
        vendor/lib64/hw/fingerprint.goodix_fod.umi.so|vendor/lib64/libgf_umi.so)
            sed -i 's|libgf_hal.so|libgf_umi.so|g' "${2}"
            sed -i 's|/dev/goodix_fp|/dev/gx_fod_fp|g' "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=mikona_a
export DEVICE_COMMON=sm8250-common
export VENDOR=xiaomi

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
