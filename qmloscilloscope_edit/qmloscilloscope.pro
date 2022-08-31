QT += charts qml quick
QT += quickcontrols2

HEADERS += \
    datasource.h \
    devicecommands.h

SOURCES += \
    devicecommands.cpp \
    main.cpp \
    datasource.cpp

DESTDIR = $$PWD/../Bin_Dbg

MOC_DIR      += .moc
OBJECTS_DIR  += .obj
UI_DIR       += .ui
RCC_DIR      += .rcc

QML_IMPORT_PATH += $$PWD/../Bin_Dbg/qml
QML2_IMPORT_PATH += $$PWD/../Bin_Dbg/qml
QML2_IMPORT_PATH += $$PWD/../Bin_Dbg/qml/Base

#QML_IMPORT_PATH  += C:/Projects/QT/FVibr/Bin_Dbg/qml
#QML2_IMPORT_PATH += C:/Projects/QT/FVibr/Bin_Dbg/qml
#QML2_IMPORT_PATH += C:/Projects/QT/FVibr/Bin_Dbg/qml/Base


#RESOURCES += \
#    resources.qrc

DISTFILES += \
    qml/Base/BaseText.qml \
    qml/Base/ControlPanel.qml \
    qml/Base/ControlPanelTwo.qml \
    qml/Base/EditableParam.qml \
    qml/Base/MultiButton.qml \
    qml/Base/ScopeView.qml \
    qml/Base/ValueEditor.qml \
    qml/Base/qmldir \
    qml/Impl/main.qml \
    qml/StyleModule/Style.qml \
    qml/StyleModule/qmldir

target.path = $$[QT_INSTALL_EXAMPLES]/charts/qmloscilloscope
INSTALLS += target


