import QtQuick 2.0
import StyleModule 1.0
import QtQuick.Controls 2.13
import QtQuick.Controls.Material 2.13

Label{
    id:_date
    width:  Style.dp(200)
    height:  Style.textElemHeight
    bottomPadding: Style.mediumOffset
    topPadding:    Style.mediumOffset
    leftPadding :  Style.tinyOffset
    rightPadding:  Style.tinyOffset
    color: Material.primaryTextColor// accentColor
  //  Material.
   /* background: Rectangle {
        visible: true
        color: Material.backgroundColor
       // border.color: Material.rippleColor
        border.color: Material.frameColor
        implicitWidth: 200
        radius: height / 10
    }*/
}
