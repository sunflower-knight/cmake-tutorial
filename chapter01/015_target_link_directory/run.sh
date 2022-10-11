mkdir build
cd build

cmake   -S ..  -B .  && cmake  --build .

# run exe
echo " ------------------------- "
./exefile
echo " ------------------------- "
echo "exe link info:"

ldd exefile