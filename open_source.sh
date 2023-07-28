#!/bin/bash
cd
mkdir APPS
mkdir PROJECTS
mkdir PDKS
cd APPS

sudo apt-get install git make cmake --assume-yes
sudo apt-get install cmake npm autoconf libtool swig doxygen clang libz cudd --assume-yes
sudo apt install tcl-dev tk-dev csh libjpeg-dev tcllib python3-pandas --assume-yes
sudo apt-get install libgtk-3-dev gtk3.0 gtk+3.0 gtk+2.0 --assume-yes
sudo apt-get install libx11-6 libx11-dev libxrender1 libxrender-dev libxcb1 libx11-xcb-dev libcairo2 libcairo2-dev tcl tcl-dev tk tk-dev flex bison libxpm4 libxpm-dev gawk mawk tcl-tclreadline libxaw7-dev --assume-yes

sudo apt install -y cmake qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools \
    libmng2 qt5-image-formats-plugins tcl-tclreadline \
    swig libboost-all-dev libeigen3-dev libspdlog-dev --assume-yes

sudo apt-get install m4 tcsh csh libx11-dev tcl tk tcl-dev tk-dev libcairo2-dev mesa-common-dev libglu1-mesa-dev libncurses-dev --assume-yes



sudo apt install -y qtcreator qtbase5-dev qt5-qmake cmake --assume-yes



sudo apt-get install autoconf libtool automake libxaw7-dev libreadline6-dev libtool-bin --assume-yes


sudo apt-get install build-essential bison flex \
	libreadline-dev gawk tcl-dev tk-dev libffi-dev git \
	graphviz xdot pkg-config python3 --assume-yes
sudo apt install libglu1-mesa-dev freeglut3-dev --assume-yes

sudo apt-get install m4 --assume-yes
sudo apt-get install libx11-dev --assume-yes
sudo apt-get install tcsh --assume-yes
sudo apt-get install tclsh --assume-yes

sudo apt-get install iverilog --assume-yes
sudo apt-get install gtkwave --assume-yes


sudo apt-get install autoconf --assume-yes
sudo apt-get install automake --assume-yes
sudo apt-get install libtool --assume-yes
sudo apt-get install swig --assume-yes

git clone git://opencircuitdesign.com/magic

cd magic


./configure
sudo make
sudo make install

cd ..
echo "magic installed"


git clone https://github.com/StefanSchippers/xschem.git
cd xschem

./configure
sudo make
sudo make install

cd ..
echo "xschem installed"


git clone https://git.code.sf.net/p/ngspice/ngspice ngspice-ngspice
cd ngspice-ngspice

./autogen.sh –adms
mkdir release
cd release
../configure --with-x --enable-xspice --disable-debug --enable-cider --with-readline=yes --enable-openmp
sudo make -j4
sudo make install

cd ..
cd ..
echo "ngspice installed"

mkdir gaw
cd gaw
wget http://download.tuxfamily.org/gaw/download/gaw-20110707.tar.gz
tar zxvf gaw-20110707.tar.gz
cd gaw-20110707


./configure
sudo make
sudo make install

cd ..
cd ..

echo "GAW installed"

git clone git://opencircuitdesign.com/netgen
cd netgen
./configure
sudo make
sudo make install

cd ..

echo "netgen installed"


wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-6.0 main" -y 
sudo apt-get update 
sudo apt-get install -y clang-6.0 --assume-yes
sudo apt-get install gsl-bin libgsl0-dev --assume-yes
sudo add-apt-repository ppa:saltmakrell/ppa -y 
sudo apt-get update
sudo apt-get install yosys --assume-yes
git clone https://github.com/rubund/graywolf.git
cd graywolf/
mkdir build
cd build
cmake ..
sudo make
sudo make install
cd ../../

git clone git://opencircuitdesign.com/qrouter

cd qrouter
sudo ./configure 
sudo make
sudo make install 
cd ..


git clone git://opencircuitdesign.com/qflow 
cd qflow

./configure
sudo make
sudo make install


cd ..

mkdir klayout 
cd klayout
wget https://www.klayout.org/downloads/Ubuntu-22/klayout_0.28.8-1_amd64.deb
sudo apt install -y ./klayout_0.28.8-1_amd64.deb
cd ..


git clone https://github.com/The-OpenROAD-Project/OpenSTA.git
cd OpenSTA
mkdir build
cd build
cmake ..
make
cd ../
sudo ln -s $PWD/app/sta /usr/bin/sta
cd ../
sudo apt-get install tcllib --assume-yes

sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update

git clone git://opencircuitdesign.com/irsim
cd irsim
./configure
sudo make
sudo make install
cd ..


cd
cd 

cd PDKS
git clone https://github.com/RTimothyEdwards/open_pdks
cd open_pdks
./configure --enable-sky130-pdk
sudo make
sudo make install
cd ..
cd ..
cd
sudo apt-get update

python3 -m pip install --upgrade --user ortools
sudo apt-get install make python3 python3-pip
pip install cocotb
sudo apt-get install autoconf --assume-yes
sudo apt-get install lib32readline lib32readline-dev --assume-yes
sudo apt-get install gperf --assume-yes
sudo apt-get update --assume-yes

echo "PDK skywater130 installed"
cd
cd PROJECTS
mkdir 2COPY
cd 2COPY
mkdir mag
mkdir xschem
mkdir netgen

cd xschem
ln -s /usr/local/share/pdk/sky130A/libs.tech/xschem/xschemrc
ln -s /usr/local/share/pdk/sky130A/libs.tech/ngspice/spinit .spiceinit
cd ../mag
ln -s /usr/local/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
cd ../netgen
ln -s /usr/local/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl setup.tcl

echo "PDK skywater130 configured"
