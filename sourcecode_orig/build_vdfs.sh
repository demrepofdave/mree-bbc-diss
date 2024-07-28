# Builds Mr.EE

mkdir -p build_vdfs

beebasm -i mree_original.asm -v

# Combine into a single image

cat R-1-0C00 R-2-0400 R-3-0900 R-4-4300 > build_vdfs/MREE
# Copy MREE files into directory to make bootable disk
cd build_vdfs
cp ../../\!BOOT_00_00.bin ./\!BOOT
cp ../../MR.EE_1100_8023.bin ./MR.EE
cp ../../MR.EE-L_1900_1900.bin ./MR.EE-L
cd -

# Done.
echo "VDFS Built"
