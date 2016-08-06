import common
import edify_generator

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def InstallSuperSU(info):
    supersu = info.input_zip.read("META/supersu/UPDATE-SuperSU.zip")
    common.ZipWriteStr(info.output_zip, "supersu/UPDATE-SuperSU.zip", supersu)

def FlashSUperSU(info):
    info.script.AppendExtra(('ui_print("Flashing SuperSU...");'))
    info.script.AppendExtra(('package_extract_dir("supersu", "/tmp/supersu");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "unzip", "/tmp/supersu/UPDATE-SuperSU.zip", "META-INF/com/google/android/*", "-d", "/tmp/supersu");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "sh", "/tmp/supersu/META-INF/com/google/android/update-binary", "dummy", "1", "/tmp/supersu/UPDATE-SuperSU.zip");'))

def FullOTA_InstallEnd(info):
    WritePolicyConfig(info)
    InstallSuperSU(info)
    FlashSUperSU(info)
