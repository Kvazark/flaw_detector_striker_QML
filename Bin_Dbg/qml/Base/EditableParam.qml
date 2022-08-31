import QtQuick 2.0
import StyleModule 1.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0


Rectangle{
    id: _id
    property string caption: "caption"
    property double value: 0.0
    property int  precition: 1
    property double minValue: 0
    property double maxValue: 10

    property  Item ppp : null
    anchors.topMargin: Style.smallSpacing

    color: "transparent"

    implicitHeight: 20
    Layout.fillWidth: true
    height: _column.height + 2

    ColumnLayout {
        id:_column

        BaseText {
            id:_text
            text: caption + " " + value.toFixed(precition)
            Layout.alignment: Qt.AlignTop
            Layout.preferredHeight: 20

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    //console.log(_id.width, _id.height)
                    ValueEditor.embeddToParent(_id, _column)
                  //  console.log(_id.width, _id.height)
                }
            }
        }
    }

    function valueChanged2(_value){
        value = _value
    }


    Component.onCompleted: {
        ppp = parent
    }
}
