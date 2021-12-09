static const variant_info_t lmi_global_info = {
    .hwc_value = "",
    .sku_value = "std",

    .brand = "POCO",
    .device = "lmi",
    .marketname = "",
    .model = "POCO F2 Pro",
    .build_fingerprint = "POCO/lmi_global/lmi:11/RKQ1.200826.002/V12.5.3.0.RJKMIXM:user/release-keys",

    .nfc = true,
};

static const variant_info_t lmipro_info = {
    .hwc_value = "",
    .sku_value = "pro",

    .brand = "Redmi",
    .device = "lmi",
    .marketname = "",
    .model = "Redmi K30 Pro Zoom Edition",
    .build_fingerprint = "Redmi/lmipro/lmipro:11/RKQ1.200826.002/V12.5.3.0.RJKMIXM:user/release-keys",

    .nfc = true,
};

static const variant_info_t lmi_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Redmi",
    .device = "lmi",
    .marketname = "",
    .model = "Redmi K30 Pro",
    .build_fingerprint = "Redmi/lmi/lmi:11/RKQ1.200826.002/V12.5.3.0.RJKMIXM:user/release-keys",

    .nfc = true,
};

static const std::vector<variant_info_t> lmi_variants = {
    lmi_global_info,
    lmipro_info,
    lmi_info,
};
