/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt Charts module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.1
import QtQuick.Layouts 1.0
//import QtQuick.Controls 2.2

import QtQuick.Controls 1.0
import StyleModule 1.0


Item {
    anchors.bottomMargin: Style.mediumOffset

    EditableParam{
        id: signalSearchThreshold
        width: parent.width
        caption: "Порог поиска сигнала %:"
        precition: 1
        minValue: 1
        maxValue: 100
        anchors.top: parent.top
        //Component.onCompleted:
    }

    EditableParam{
        id: signalSpectrumThreshold
        width: parent.width
        caption: "Порог спектра сигнала %:"
        minValue: 1
        maxValue: 100
        precition: 0
        anchors.top: signalSearchThreshold.bottom
    }
    EditableParam{
        id: amplification
        width: parent.width
        caption: "Усиление, ДБ: "
        precition: 2
        minValue: 1
        maxValue: 50
        anchors.top: signalSpectrumThreshold.bottom
    }
    EditableParam{
        id: filterHZ
        width: parent.width
        caption: "Фильтр, Hz:"
        precition: 2
        minValue: 1
        maxValue: 50
        anchors.top: amplification.bottom
    }
    EditableParam{
        id: impactTime
        width: parent.width
        caption: "Время удара, мс:"
        precition: 2
        minValue: 1
        maxValue: 20
        anchors.top: filterHZ.bottom
    }
    EditableParam{
        id: replayoFHit
        width: parent.width
        caption: "Повтор удара, мс:"
        precition: 2
        minValue: 0.00
        maxValue: 10
        anchors.top: impactTime.bottom
    }
    EditableParam{
        id: timeSweep
        width: parent.width
        caption: "Время, мс, развёртка:"
        precition: 2
        minValue: 1
        maxValue: 50
        anchors.top: replayoFHit.bottom
    }

    signal lostFocus()

    height: childrenRect.height + anchors.topMargin + anchors.bottomMargin

    Component.onCompleted: {
       // height = timeSweep.y + timeSweep.height + 10
        console.log("cplllh", height)
    }

    onLostFocus: {
        ValueEditor.visible = false
    }
}
