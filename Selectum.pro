QT += core gui network widgets
TARGET = Selectum
TEMPLATE = app
VERSION = 1.0.0.0
DEFINES += QT_DEPRECATED_WARNINGS NVIDIA AMD
CONFIG  += openssl-linked
CONFIG -= embed_manifest_exe

CONFIG(debug, debug|release) {
    nvidia.path = $$PWD/debug/
    ssl.path = $$PWD/debug/
    cryptonight.path = $$PWD/debug/
    ethash.path = $$PWD/debug/
}
CONFIG(release, debug|release) {
    nvidia.path = $$PWD/release/
    ssl.path = $$PWD/release/
    cryptonight.path = $$PWD/release/
    ethash.path = $$PWD/release/
}

nvidia.files += $$PWD/DEPLOY/nvml.dll
ssl.files += $$PWD/DEPLOY/libeay32.dll
ssl.files += $$PWD/DEPLOY/ssleay32.dll
cryptonight.files += $$PWD/DEPLOY/cryptonight/*
ethash.files += $$PWD/DEPLOY/ethash/*

INSTALLS += nvidia ssl cryptonight ethash

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    minerprocess.cpp \
    highlighter.cpp \
    helpdialog.cpp \
    nvidianvml.cpp \
    nvocdialog.cpp \
    nvidiaapi.cpp \
    amdapi_adl.cpp

HEADERS += \
    mainwindow.h \
    minerprocess.h \
    highlighter.h \
    helpdialog.h \
    nvidianvml.h \
    nvocdialog.h \
    nvidiaapi.h \
    amdapi_adl.h

FORMS += \
    mainwindow.ui \
    helpdialog.ui \
    nvocdialog.ui

DISTFILES += \
    selectum.rc \
    selectum.manifest

RC_FILE = selectum.rc
RC_ICONS += selectum.ico
RESOURCES += \
    resources.qrc

LIBS += -L'C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64/' -lnvml
INCLUDEPATH += 'C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/include'
DEPENDPATH += 'C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/include'
INCLUDEPATH += $$PWD/nvapi
INCLUDEPATH += $$PWD/adl/include

