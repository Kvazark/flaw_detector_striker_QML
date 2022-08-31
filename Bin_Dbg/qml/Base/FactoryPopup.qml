import QtQuick 2.0
import StyleModule 1.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.13
import Models 1.0

Popup {
    id: _root
    modal: true
    focus: true
    implicitWidth:  _dd.implicitWidth  + Style.mediumOffset
    implicitHeight: _dd.implicitHeight + Style.mediumOffset

    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
    property string result: "null"

    ColumnLayout{
        id: _dd
        anchors.fill: parent
        anchors.leftMargin: Style.defaultOffset
        spacing: 0
        GridView{
            id: _grid
            model: FactoriesModel{}
            cellWidth : Style.dp(100)
            cellHeight: cellWidth
            implicitWidth: Math.round(Math.sqrt(_grid.count)) * _grid.cellWidth +
                           Style.defaultOffset * 2
            implicitHeight: implicitWidth
            Layout.topMargin: 0
            Layout.bottomMargin: 0
            delegate: Button {
                text: name
                font.pointSize: Style.textFieldFont
                implicitHeight: _grid.cellWidth - 2.0 * Style.smallSpacing
                implicitWidth:  implicitHeight
                onClicked: {
                    _root.result = value
                    close()
                }
            }
        }

        Button{
            id: _close
            text: qsTr("Close")
			font.pointSize: Style.textFieldFont
            Layout.alignment: Qt.AlignRight
            Layout.topMargin: 0
            Layout.rightMargin: Style.bigOffset
            implicitWidth:  Style.defaultBtnWidth
            implicitHeight: implicitWidth * 0.64
            onClicked: close()
        }
    }
}


