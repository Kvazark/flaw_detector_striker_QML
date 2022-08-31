import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.0
import QtQuick.Layouts 1.0

Item {
    id: slider
    Slider {
        id: sliderSearch
        from: 0; to: 10; stepSize: 1
    }
    Text {
        text: "THIN"
        anchors.top: slide.bottom
        anchors.left: sliderSearch.left
      }
      Text {
        text: "THICK"
        anchors.top: slide.bottom
        anchors.right: sliderSearch.right
      }


//    ColumnLayout {
//        spacing: 1
//        anchors.centerIn: parent
//        function hash(x) {
//               var table = [10, 20, 30, 40, 50,60,70, 80,90, 100];

//               return table[x];
//        }




//        Text {
//            text: hash(slider.value)
//            Layout.alignment: Layout.Center
//        }
  //  }
}
import QtQuick 2.1
import QtQuick.Layouts 1.0
//import QtQuick.Controls 2.2

import QtQuick.Controls 1.0


RowLayout {
  //  property alias openGLButton: openGLButton
   // property alias antialiasButton: antialiasButton
    spacing: 20
    Layout.fillHeight: true

    Text{
        anchors.top: parent.top
        text: "Настройка: "
        font.pointSize: 10
        color: "white"
    }

   // signal animationsEnabled(bool enabled)
    //signal seriesTypeChanged(string type)
   // signal refreshRateChanged(variant rate);
  //  signal signalSourceChanged(string source, int signalCount, int sampleCount);
    //signal antialiasingEnabled(bool enabled)
  //  signal openGlChanged(bool enabled)

//    MultiButton {
//        id: openGLButton
//        text: "OpenGL: "
//        items: ["false", "true"]
//        currentSelection: 1
//        onSelectionChanged: openGlChanged(currentSelection == 1);
//    }

    ColumnLayout{
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.rightMargin: 30
        spacing: 30
        RowLayout{
            spacing: 20
            MultiButton {
                text: "Фильтр: "
                items: ["Вкл  ", "Выкл"]
                currentSelection: 1

                //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
            }
             MultiButton {
                 anchors.rightMargin: 30
                 anchors.leftMargin: 50
                 //anchors.leftMargin: 45
                 text: "Удар"
                 items: [""]

                //currentSelection: 0
                //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
            }
             MultiButton {
                 text: "Авто. удар"
                 items: [""]

                 //currentSelection: 0
                 //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
             }
        }
        RowLayout{
            spacing: 15
            MultiButton {
                text: "Начать запись"
                items: [""]
                //currentSelection: 0
                //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
            }
            MultiButton {
                text: "Загрузить"
                items: [""]
                //currentSelection: 0
                //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
            }
            MultiButton {
                anchors.rightMargin: 10
                text: "Сохранить"
                items: [""]

                //currentSelection: 0
                //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
            }

        }

    }

}

