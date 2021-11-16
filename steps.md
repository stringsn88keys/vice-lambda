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


./x128 -keybuf "10 graphic 1
  20 scnclr
  30 circle 1,100,100,20
  run
" +warp -limitcycles 1000000 -exitscreenshotvicii haha.png

mkdir vice
cd vice
cp vice-3.5/src/x128 .
cp vice-3.5/data/common/* .
cp vice-3.5/data/C128/* .
cp vice-3.5/data/DRIVES/* .
cp vice-3.5/data/PRINTER/* .


❯ zip things.zip vice/* lib64/* bootstrap things.sh


Error - failed to create user cache dir
https://fossies.org/dox/vice-3.5/archdep__user__cache__path_8c_source.html

https://www.lemon64.com/forum/viewtopic.php?t=45074&sid=c07247d81d9dc2b82f156af1ff40c7e2
export XDG_CACHE_HOME=/tmp
export XDG_CONFIG_HOME=/tmp

up timeout to 10 seconds

zip things.zip vice/* libpng15* bootstrap things.sh

have to write to /tmp
```

[3 Invoking the Emulators](https://vice-emu.sourceforge.io/vice_3.html)
[6 Settings and resources](https://vice-emu.sourceforge.io/vice_6.html#SEC43)
[Return binary file from Lambda?](https://stackoverflow.com/a/58107099)
[Publishing a custom runtime](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-walkthrough.html)
[6502 cloud exists](http://www.6502cloud.com)
