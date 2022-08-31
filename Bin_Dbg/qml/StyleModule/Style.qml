pragma Singleton
import QtQuick 2.0
import QtQuick.Window 2.13

QtObject {
    readonly property real defaultOpacity: 1
    readonly property real emphasisOpacity: 0.87
    readonly property real secondaryOpacity: 0.6
    readonly property real disabledOpacity: 0.38

    readonly property int bigOffset: dp(20)
    readonly property int defaultOffset: dp(15)
    readonly property int mediumOffset: dp(10)
    readonly property int tinyOffset: dp(5)

    readonly property int bigSpacing: dp(20)
    readonly property int mediumSpacing: dp(15)
    readonly property int smallSpacing: dp(7)

    readonly property color captionColor: "white"
    readonly property int   captionFont: 10
    readonly property int textFieldFont: 7
    readonly property int editFieldWidth: dp(200)
    readonly property int defaultBtnWidth: dp(130);
    readonly property int textElemHeight: dp(40)

    readonly property double hostMachinePpMm:   141.6 / 25.4
    readonly property double deviceMachinePpMm: Screen.pixelDensity
    function dp(src){
        return parseInt(src * deviceMachinePpMm / hostMachinePpMm + 0.5)
    }
}
