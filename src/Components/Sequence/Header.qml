import QtQuick 2.0
import QtGraphicalEffects 1.12

Rectangle {
    id: rectangle
    height: 40
    color: colors.get()

    property real fontSize: 18

    Text {
        text: qsTr('Classic Pomodoro')
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: fontSize
        color: colors.get("dark")
    }

    Item {
        id: libraryButton
        height: parent.height
        width: 40

        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.verticalCenter: parent.verticalCenter

        Image {
            id: libraryIcon
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "../../assets/img/library.svg"
            fillMode: Image.PreserveAspectFit


            ColorOverlay{
                id: libraryOverlay
                source: parent
                color: colors.get('light')
                anchors.fill: parent
                antialiasing: true
            }
        }
        MouseArea {
            id: libraryTrigger
            anchors.fill: parent
            propagateComposedEvents: true
            cursorShape: Qt.PointingHandCursor
            onReleased: views.push(pattern)
        }
    }
}
