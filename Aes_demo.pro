#-------------------------------------------------
#
# Project created by QtCreator 2019-04-28T16:38:23
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Aes_demo
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


INCLUDEPATH += $$PWD/common
win32 {
   CONFIG(release, debug|release){
        DEFINES+=MOC_RELEASE
        DESTDIR = $$PWD/bin_release
        MOC_DIR = $$PWD/QtGeneratedFiles_release
        OBJECTS_DIR = $$PWD/QtGeneratedFiles_release
        RCC_DIR = $$PWD/QtGeneratedFiles_release
        UI_DIR = $$PWD/QtGeneratedFiles_release
    }
    CONFIG(debug, debug|release){
        DEFINES+=MOC_DEBUG
        DESTDIR = $$PWD/bin_debug
        MOC_DIR = $$PWD/QtGeneratedFiles_debug
        OBJECTS_DIR = $$PWD/QtGeneratedFiles_debug
        RCC_DIR = $$PWD/QtGeneratedFiles_debug
        UI_DIR = $$PWD/QtGeneratedFiles_debug
    }
}


SOURCES += main.cpp\
    common/aes_core.c \
    common/aes_core.c \
    common/aes.c \
    common/aes_cbc.c \
    common/aes_ecb.c \
    common/cbc128.c\
    common/base64.cpp \
    common/hex.cpp \
    aesencrypt.cpp \
    test.cpp

HEADERS  += \
    common/base64.h \
    common/hex.h \
    common/aes.h \
    common/aes_locl.h \
    common/modes.h\
    aesencrypt.h \
    test.h


FORMS    += \
    test.ui
