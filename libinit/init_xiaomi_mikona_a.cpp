/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include <android-base/file.h>
#include "vendor_init.h"

#define PRODUCT_NAME_PATH "/sys/socinfo_xiaomi/product_name"

using android::base::ReadFileToString;

#include "devices/apollo.h"
#include "devices/cas.h"
#include "devices/cmi.h"
#include "devices/lmi.h"
#include "devices/umi.h"

void vendor_load_properties() {
	std::string product_name;

	set_dalvik_heap();

	if (!ReadFileToString(PRODUCT_NAME_PATH, &product_name, true))
		return;

	if (product_name == "apollo")
		search_variant(apollo_variants);
	if (product_name == "cas")
		search_variant(cas_variants);
	if (product_name == "cmi")
		search_variant(cmi_variants);
	if (product_name == "lmi")
		search_variant(lmi_variants);
	if (product_name == "umi")
		search_variant(umi_variants);
}
