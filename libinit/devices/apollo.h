static const variant_info_t apollocn_info = {
    .hwc_value = "CN",
    .sku_value = "",

    .brand = "Redmi",
    .device = "apollo",
    .marketname = "K30S Ultra",
    .model = "M2007J3SC",
    .build_fingerprint = "Redmi/apollo/apollo:11/RKQ1.200826.002/V12.5.7.0.RJDCNXM:user/release-keys",

    .nfc = true,
};

static const variant_info_t apollo_global_info = {
    .hwc_value = "",
    .sku_value = "std",

    .brand = "Xiaomi",
    .device = "apollo",
    .marketname = "Mi 10T",
    .model = "M2007J3SY",
    .build_fingerprint = "Xiaomi/apollo_global/apollo:11/RKQ1.200826.002/V12.5.4.0.RJDMIXM:user/release-keys",

    .nfc = true,
};

static const variant_info_t apollopro_info = {
    .hwc_value = "",
    .sku_value = "pro",

    .brand = "Xiaomi",
    .device = "apollo",
    .marketname = "Mi 10T Pro",
    .model = "M2007J3SG",
    .build_fingerprint = "Xiaomi/apollopro_global/apollo:11/RKQ1.200826.002/V12.5.5.0.RJDMIXM:user/release-keys",

    .nfc = true,
};

static const variant_info_t apollo_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Redmi",
    .device = "apollo",
    .marketname = "Redmi K30S Ultra",
    .model = "M2007J3SC",
    .build_fingerprint = "Redmi/apollo_global/apollo:11/RKQ1.200826.002/V12.5.5.0.RJDMIXM:user/release-keys",

    .nfc = true,
};

static const std::vector<variant_info_t> apollo_variants = {
    apollocn_info,
    apollo_global_info,
    apollopro_info,
    apollo_info,
};
