import QtQuick 2.0
import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    property string sliderTitle

    property real sliderMin
    property real sliderMax
    property real sliderVal

    ColumnLayout{
        Label {
            text: qsTr(sliderTitle)
            font.pointSize: 10

        }
        Slider {
            id: touchSlider1

            minimumValue: sliderMin
            maximumValue: sliderMax

            orientation: Qt.Horizontal
            value: sliderVal
//            onValueChanged: function(){
//                sliderVal = Math.round(this.value);
//                labelSliderValue.text = qsTr(JSON.stringify(sliderVal));
//            }
        }

        Label {
            id: labelSliderValue
            text: qsTr(JSON.stringify(sliderVal))
            font.pointSize: 10
        }
        MultiPointTouchArea{
            anchors.fill: touchSlider1
            touchPoints: [
                TouchPoint {
                    id: point1
//                    onPressedChanged: function(){
//                        if(pressed){
//                            //console.log("pressed");
//                            //console.log(touchslider.testStringReturn());
//                            touchslider.sliderSetValueFromTouch(touchSlider1,point1.y);

//                        }
//                    }

                }
            ]
//            onTouchUpdated: function(){
//                touchslider.sliderSetValueFromTouch(touchSlider1,point1.y);
//            }
        }
    }
}
