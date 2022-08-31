import QtQuick 2.0
import StyleModule 1.0
import QtQuick.Controls 2.13
import QtQuick.Controls.Material 2.13

TextField {
    leftPadding: Style.tinyOffset
    rightPadding: Style.tinyOffset
    implicitWidth: Style.editFieldWidth

    //color: Material.accentColor
   /* background: Rectangle {
        visible: true
        color: Material.backgroundColor
        border.color: parent.focus ? Material.accentColor : Material.frameColor
        implicitWidth: 200
        radius: height / 10
    }*/
}
