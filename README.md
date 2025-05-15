# mree-bbc-diss
Dissassembly of Mr Ee! for BBC Micro with annotations that allow the reader to better
understand the code.

This code can also be built by installing beebasm and the code produced can be run
on b-em.

# Building

## Install beebasm (Linux)

beebasm source repository is located at https://github.com/stardot/beebasm

Install the required cmake and git packages. For debuan based OSs (e.g. Ubuntu):

sudo apt update
sudo apt install cmake git

Then download the sourcecode:

git clone https://github.com/stardot/beebasm.git

To build and install

cd beebasm
cmake .
make
sudo make install
cd ..

This will make the 'beebasm' command available at the command line.

MREE can now be built.

## Build MrEe! from source.
In the root source directory of MrEE type:

./build.sh

This will build the file /build/MREE from source.

## Running the MREE binary on b-em

Start b-em

Select VDFS and make the location of MREE VDFS root.
Press break (F12)

Type the following:

PAGE=&1100
*LOAD MREE
CALL&4300

The following message should be displayed:

Press SPACE or FIRE to continue

Press SPACE/FIRE button and the game will start.


