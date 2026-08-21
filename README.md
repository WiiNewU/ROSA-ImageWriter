# ROSA-ImageWriter
This is a modernization to qt6 (from qt4) for ROSA's USB Image Writer.

Rosa was a now discontinued Linux Distro, and this is the USB media creation tool that can write iso files to USB storage. This will work on other Linux distros such as Ubuntu/Debian.

Code for Windows/Mac ports are currently still here but are currently abandoned. 

TO BUILD:

git clone --recursive https://github.com/WiiNewU/ROSA-ImageWriter/

cd ROSA-ImageWriter

qmake6 RosaImageWriter.pro

make -j$(nproc)

sudo ./RosaImageWriter


The wanted files to bundle after successful build:

root/

    RosaImageWriter
    
    LICENSE.html
    
    README.html
    
    lang/
    
        de_DE.ts
        
        fr_FR.ts
        
        ru_RU.ts

Source for last offical build of ROSA-ImageWriter (version 2.6.2 from 2016) was sourced here: https://abf.io/soft/rosa-imagewriter.git        
