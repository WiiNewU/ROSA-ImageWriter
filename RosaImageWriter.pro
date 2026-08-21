QT += core gui widgets

TARGET = RosaImageWriter
TEMPLATE = app

CONFIG += c++11

SOURCES += \
    main.cpp \
    maindialog.cpp \
    imagewriter.cpp \
    common.cpp \
    physicaldevice.cpp \
    mainapplication.cpp

HEADERS += \
    maindialog.h \
    imagewriter.h \
    common.h \
    platform.h \
    externalprogressbar.h \
    physicaldevice.h \
    usbdevicemonitor.h \
    usbdevice.h \
    mainapplication.h

FORMS += \
    maindialog.ui

RESOURCES += \
    RosaImageWriter.qrc

linux {
    SOURCES += \
        platform_lin.cpp \
        externalprogressbar_lin.cpp \
        usbdevicemonitor_lin.cpp

    HEADERS += \
        usbdevicemonitor_lin_p.h \

    LIBS += -ludev
}

win32 {
    SOURCES += \
        platform_win.cpp \
        externalprogressbar_win.cpp \
        usbdevicemonitor_win.cpp

    HEADERS += \
        usbdevicemonitor_win_p.h

    RC_FILE = RosaImageWriter.rc
}

macx {
    OBJECTIVE_SOURCES += \
        platform_mac.mm \
        externalprogressbar_mac.mm \
        usbdevicemonitor_mac.mm

    HEADERS += \
        usbdevicemonitor_mac_p.h

    ICON = res/icon-rosa.icns
    QMAKE_INFO_PLIST = res/Info.plist
}

TRANSLATIONS = \
    lang/ru_RU.ts \
    lang/de_DE.ts \
    lang/fr_FR.ts

VERSION = 2.6.2.0
