pragma Singleton
import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0

ColumnLayout{
    id: _editor
    visible: false
    property double minValue: 0
    property double maxValue: 10
    property double currentValue: 0.0
    property int  precition: 1
    property EditableParam view: null
    //signal valueChanged(double value)

    Slider {
        id: slider
        width: parent.width

        value: currentValue
        minimumValue: minValue
        maximumValue: maxValue
        onValueChanged: {
            //valueChanged(value)
            if (view !== null){
                view.valueChanged2(value)
            }
        }

    }
    function checkValue(value) {
        return value.toFixed(precition);
    }

    Item{
        Layout.fillWidth: true
        height: _min.height
       // width: 300
        BaseText {
            id:_min
            anchors.left: parent.left
            text: checkValue(minValue)
        }
        BaseText {
            anchors.right: parent.right
            text: checkValue(maxValue)
        }
    }

    function embeddToParent(param, elem){
        view = null
        visible = true
        parent = elem
        precition = param.precition
        minValue = param.minValue
        maxValue = param.maxValue
        width = elem.width
        currentValue = param.value
        view = param
    //    y = elem.height + 10
    //    parent.height = parent.height + 20
    }

    Component.onCompleted: {

    }


}

