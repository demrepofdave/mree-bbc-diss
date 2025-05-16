# Builds Mr.EE

beebasm -i mree.asm -v 2>&1 | tee mree_asm_log.txt

# Combine into a single image
cat R-1-0C00 R-2-0400 R-3-0900 R-4-4300 > MREE
rm R-1-0C00 R-2-0400 R-3-0900 R-4-4300

# Done.
echo "MREE binary built"

