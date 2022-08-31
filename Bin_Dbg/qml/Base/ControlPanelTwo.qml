import QtQuick 2.1
import QtQuick.Layouts 1.0
//import QtQuick.Controls 2.0
//import QtQuick.Controls 1.4 as OldCtrl

import QtQuick.Controls 1.0

GridLayout{
    //height: 200
   // Layout.alignment: Qt.AlignBottom
    Layout.fillWidth: true
    id: grid
    columns: 2
   // height: 200
    rowSpacing: 40
    columnSpacing: 30
    Component.onCompleted: {
         console.log(grid.width, grid.height)
    }

    MultiButton {
        Layout.fillWidth: true
        //Layout.fillHeight: true

        text: "Удар"
        items: [""]
        Component.onCompleted: {
             console.log(width, height)
        }

        //onSelectionChanged: seriesTypeChanged(items[currentSelection]);

    }
    MultiButton {
        Layout.fillWidth: true
       // Layout.fillHeight: true

        text: "Авто. удар"
        items: [""]

        //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
    }

    MultiButton {
        Layout.fillWidth: true
       // Layout.fillHeight: true

        text: "Фильтр: "
        items: ["Вкл  ", "Выкл"]
        currentSelection: 1

        //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
    }
    MultiButton {
        Layout.fillWidth: true
       // Layout.fillHeight: true
        text: "Начать запись"
        items: [""]
        //currentSelection: 0
        //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
    }
    MultiButton {
        Layout.fillWidth: true
        //Layout.fillHeight: true
        text: "Загрузить"
        items: [""]
        onClicked: {
            commands.loadSettings();
        }
        //currentSelection: 0
        //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
    }
    MultiButton {
        Layout.fillWidth: true
       // Layout.fillHeight: true
        text: "Сохранить"
        items: [""]

        //currentSelection: 0
        //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
    }
    Rectangle{
        color: "transparent"
        //width: 150
        Layout.rowSpan: 2
        Layout.columnSpan: 2
        Layout.maximumWidth: 250
        Layout.minimumWidth: 230
        Layout.fillHeight: true
        Layout.preferredWidth: Layout.columnSpan
        Layout.preferredHeight: Layout.rowSpan
        Text{
            anchors.top: parent.top
            text: "Настройка: "
            font.pointSize: 10
            color: "white"
        }
    }




}

/*GridLayout{
    id: grid
    columns: 6
    anchors.bottom: parent.bottom

    Rectangle{
        color: "transparent"
        //width: 150
        Layout.rowSpan: 2
        Layout.columnSpan: 2
        Layout.maximumWidth: 250
        Layout.minimumWidth: 230
        Layout.fillHeight: true
        Layout.preferredWidth: Layout.columnSpan
        Layout.preferredHeight: Layout.rowSpan
        Text{
            anchors.top: parent.top
            text: "Настройка: "
            font.pointSize: 10
            color: "white"
        }
    }

    Rectangle{
        color: "transparent"
        MultiButton {

            text: "Фильтр: "
            items: ["Вкл  ", "Выкл"]
            currentSelection: 1

            //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
        }
        Layout.fillWidth: true
        Layout.fillHeight: true
    }

    Rectangle{
        color: "transparent"
        MultiButton {
            text: "Начать запись"
            items: [""]
            //currentSelection: 0
            //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
        }
        Layout.fillWidth: true
        Layout.fillHeight: true
    }
    Rectangle{
        color: "transparent"
        MultiButton {
            text: "Загрузить"
            items: [""]
            //currentSelection: 0
            //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
        }
        Layout.fillWidth: true
        Layout.fillHeight: true
    }
    Rectangle{
        color: "transparent"
        MultiButton {
//            anchors.right: parent.right
//            anchors.rightMargin: 30
            text: "Сохранить"
            items: [""]

            //currentSelection: 0
            //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
        }

        Layout.fillWidth: true
        Layout.fillHeight: true
    }
    Rectangle{
        color: "transparent"
        Layout.fillWidth: true
        Layout.fillHeight: true

        MultiButton {
//            anchors.right: parent.right
//            anchors.rightMargin: 30
            text: "Подключение"
            items: [""]

            //currentSelection: 0
            //onSelectionChanged: seriesTypeChanged(items[currentSelection]);
        }
    }


}*/

