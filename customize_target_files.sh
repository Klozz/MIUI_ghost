#/bin/bash
WD=`pwd`
METADATA_DIR=$PWD/metadata
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/target_files
build_prop_file=$TARGET_FILES_DIR/SYSTEM/build.prop
OTHER_DIR=$PWD/other

cp -f misc/file_contexts out/target_files/META/
rm -rf out/target_files/SYSTEM/vendor/preinstall

cp -f misc/ghost.xml out/target_files/SYSTEM/etc/device_features
cp -f misc/ghost.xml out/target_files/SYSTEM/etc/device_features/ghost_retail.xml
cp -f misc/ghost.xml out/target_files/SYSTEM/etc/device_features/ghost_verizon.xml
cp -f misc/ghost.xml out/target_files/SYSTEM/etc/device_features/ghost_sprint.xml
cp -f misc/ghost.xml out/target_files/SYSTEM/etc/device_features/ghost_usc.xml
cp -f misc/ghost.xml out/target_files/SYSTEM/etc/device_features/ghost_att
