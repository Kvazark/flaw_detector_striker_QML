import QtQuick 2.0
import StyleModule 1.0
import QtQuick.Controls 2.13
import QtQuick.Controls.Material 2.13

TextArea {
   //height: 148
    leftPadding:  Style.tinyOffset
    rightPadding: Style.tinyOffset
    height:       Style.textElemHeight + 10
    //color: Material.accentColor

    /*background: Rectangle {
        visible: true
        color: Material.backgroundColor
        border.color: parent.focus ? Material.accentColor : Material.frameColor
        implicitWidth: 320
        implicitHeight: implicitWidth * 0.6
        radius: height / 30
    }*/
}
