import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if " ||" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(" ||", ' getprop("ro.product.device") == "xt1052" || getprop("ro.build.product") == "xt1052" || getprop("ro.product.device") == "ghost" || getprop("ro.build.product") == "ghost" || getprop("ro.product.device") == "xt1053" || getprop("ro.build.product") == "xt1053" || getprop("ro.product.device") == "ghost_retail" || getprop("ro.build.product") == "ghost_retail" || getprop("ro.product.device") == "xt1055" || getprop("ro.build.product") == "xt1055" || getprop("ro.product.device") == "ghost_usc" || getprop("ro.build.product") == "ghost_usc" || getprop("ro.product.device") == "xt1056" || getprop("ro.build.product") == "xt1056" || getprop("ro.product.device") == "ghost_sprint" || getprop("ro.build.product") == "ghost_sprint" || getprop("ro.product.device") == "xt1058" || getprop("ro.build.product") == "xt1058" || getprop("ro.product.device") == "ghost_att" || getprop("ro.build.product") == "ghost_att" || getprop("ro.product.device") == "ghost_rcica" || getprop("ro.build.product") == "ghost_rcica" || getprop("ro.product.device") == "xt1060" || getprop("ro.build.product") == "xt1060" || getprop("ro.product.device") == "ghost_verizon" || getprop("ro.build.product") == "ghost_verizon" ||')
            return

def AddArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "format(" in edify.script[i] and "/dev/block/platform/msm_sdcc.1/by-name/system" in edify.script[i]:
      edify.script[i] = 'format("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/system", "0", "/system");'
      return

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def FullOTA_InstallEnd(info):
    WritePolicyConfig(info)
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
