import QtQuick 2.0
import QtGraphicalEffects 1.12

Item {
    id: element
    visible: window.clockMode === "start"
    width: 200
    height: 200
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter

//    Image {
//        id: startPomoBG
//        anchors.horizontalCenter: parent.horizontalCenter
//        sourceSize.height: 200
//        sourceSize.width: 200
//        antialiasing: true
//        visible: masterModel.count > 0 && masterModel.totalDuration() > 0
//        anchors.verticalCenter: parent.verticalCenter
//        fillMode: Image.PreserveAspectFit
//        source: "../assets/img/background.svg"

//        ColorOverlay{
//            id: startPomoBGOverlay
//            anchors.fill: parent
//            source: parent
//            color: colors.getColor("light")
//            antialiasing: true
//        }
//    }

    Image {
        id: startPomoIcon
        anchors.horizontalCenter: parent.horizontalCenter
        sourceSize.height: 150
        sourceSize.width: 150
        antialiasing: true
        visible: masterModel.count > 0 && masterModel.totalDuration() > 0
        anchors.verticalCenter: parent.verticalCenter
        fillMode: Image.PreserveAspectFit
        source: "../assets/img/play.svg"

        ColorOverlay{
            id: startPomoOverlay
            anchors.fill: parent
            source: parent
            color: colors.getColor("mid")
            antialiasing: true
        }

        MouseArea {
            id: startPomoTrigger
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            cursorShape: Qt.PointingHandCursor

            onReleased: {
                window.clockMode = "pomodoro"
                pomodoroQueue.infiniteMode = true
                globalTimer.start()

            }
        }
    }
}
