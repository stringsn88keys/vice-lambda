```
sudo yum update
sudo yum install links -y
# retrieve tarball via `links https://vice-emu.sourceforge.io`
tar zxvf vice-3.5.tar.gz
sudo yum install -y gcc gcc-c++ flex bison dos2unix libpng-devel.x86_64 # because pkgconfig won't find libpng
links https://www.floodgap.com/retrotech/xa/
# download xa-2.3.11.tar.gz
tar zxvf xa-2.3.11.tar.gz
cd xa-2.3.11
make
PATH=~/xa-2.3.11:$PATH
# sudo yum install SDL2-static
# sudo yum install SDL2-devel
# sudo yum install text2dvi
# ( may need a different option than headlessui )
./configure --disable-pdf-docs --enable-headlessui --without-pulse --without-alsa
make
cd data/C128
../../src/x128 -keybuf "10 graphic 1
  20 scnclr
  30 circle 1,100,100,20
  run
" -limitcycles 10000000 -exitscreenshotvicii haha.png

# pkg-config libpng
# echo $? # should return 0
# export PKG_CONFIG_PATH=/usr/lib64/pkgconfig:/usr/share/pkgconfig:/usr/local/lib/pkgconfig
#  sudo yum install libtool # for SDL2_image?
```
