#
# Makefile for ghost
#

PORT_PRODUTC = ghost_global

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI8_ghost.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=

local-modified-priv-apps := 

local-modified-jars := org.cyanogenmod.platform 
# All apks from MIUI
local-miui-removed-apps := GameCenter MiGameCenterSDKService Mipay MiuiSuperMarket MiuiVideo SogouInput SystemAdSolution XMPass

local-miui-removed-priv-apps := 

local-miui-modified-apps := TeleService

# All apps need to be removed from original ZIP file
local-remove-apps   := 

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XHDPI
local-target-bit := 32

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include phoneapps.mk

include $(PORT_BUILD)/porting.mk

local-pre-zip-misc:
	@echo copying files!
	@echo remove miui prebuilt binaries!
	rm -rf $(ZIP_DIR)/system/bin/app_process32_vendor
	cp -rf stockrom/system/bin/app_process32 $(ZIP_DIR)/system/bin/app_process32
	@echo remove unnecessary libs!
	rm -rf $(ZIP_DIR)/system/lib64
	rm -rf $(ZIP_DIR)/system/lib/libDecRes_sdk.so
	rm -rf $(ZIP_DIR)/system/lib/libapssdk.so
	rm -rf $(ZIP_DIR)/system/lib/libjni_eglfence.so
	rm -rf $(ZIP_DIR)/system/lib/libjni_filtershow_filters.so
	rm -rf $(ZIP_DIR)/system/lib/libjni_jpegstream.so
	rm -rf $(ZIP_DIR)/system/lib/libjni_latinime.so
	rm -rf $(ZIP_DIR)/system/lib/libjni_terminal.so
	rm -rf $(ZIP_DIR)/system/lib/librsjni.so
	rm -rf $(ZIP_DIR)/system/lib/libminivenus.so
	rm -rf $(ZIP_DIR)/system/lib/libmresearch.so
	rm -rf $(ZIP_DIR)/system/lib/libsecurities_sdk.so
	rm -rf $(ZIP_DIR)/system/lib/libwebp.so
	rm -rf $(ZIP_DIR)/system/lib/libweibosdkcore_sogou.so
	rm -rf $(ZIP_DIR)/system/lib/libxmpass_sdk_patcher.so
	rm -rf $(ZIP_DIR)/system/lib/xmpass_libweibosdkcore.so
