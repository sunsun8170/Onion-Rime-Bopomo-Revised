import os
import shutil


def copy_files(dst: str, exclude: dict[str, set[str]] = None):
  src = "rimefiles"
  exclude_items = exclude.get(dst, set()) if exclude else set()

  for item in os.listdir(src):
    if item in exclude_items:
      continue

    src_path = os.path.join(src, item)
    dst_path = os.path.join(dst, item)

    if os.path.isfile(src_path):
      shutil.copy2(src_path, dst_path)
    elif os.path.isdir(src_path):
      shutil.copytree(src_path, dst_path)


exclude_files = {
    "bopomo_onion_enhanced": {
        "cangjie5.dict.yaml",
        "cangjie5.schema.yaml",
    }
}

copy_files("bopomo_onion_enhanced", exclude_files)
copy_files("bopomo_onionplus_lightweight")
