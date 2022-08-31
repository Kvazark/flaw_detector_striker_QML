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

import QtQuick 2.0
import Base 1.0

//![1]
Item {
    id: main
    width: 800
    height: 500

    Item{
        id: panel
        width: 230
        anchors.left: parent.left
        height: parent.height
        anchors.leftMargin: 10

        ControlPanel {
          //  height: 500
            id: controlPanel
            anchors.top: parent.top
            anchors.topMargin: 5
            width: parent.width
          //  anchors.bottom: parent.bottom

        }

        ControlPanelTwo {
            id: controlPanelTwo
            z:1
            width: parent.width
            anchors.top: controlPanel.bottom
            Component.onCompleted: {
                console.log("y=", y, " cph=", controlPanel.height)
            }
        }

        MouseArea{
            anchors.left: controlPanelTwo.left
            anchors.top: controlPanelTwo.top
            height: controlPanelTwo.height
            width : controlPanelTwo.width
          //  propagateComposedEvents: true
            z:0
            onClicked: {
                controlPanel.lostFocus()
            }
        }
    }

//![2]
    ScopeView {
        id: scopeView
        anchors.top: parent.top
       // anchors.bottom: controlPanelTwo.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.left: panel.right
        anchors.leftMargin: 20
       // height: 510

        onOpenGLSupportedChanged: {
            if (!openGLSupported) {
                controlPanel.openGLButton.enabled = false
                controlPanel.openGLButton.currentSelection = 0
            }
        }
    }
//![2]

}
