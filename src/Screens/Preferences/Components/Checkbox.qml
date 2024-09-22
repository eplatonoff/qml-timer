import QtQuick

import "../../../Components"

Item {
    id: checkbox

    property bool checked: false

    height: 24
    width: 24

    FaIcon {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        color: colors.getColor('lighter')
        glyph: "\uf0c8"
        size: 16
    }

    FaIcon {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        color: colors.getColor('dark')
        glyph: "\uf00c"
        visible: checkbox.checked

        Behavior on opacity {
            PropertyAnimation {
                duration: 200
                easing.type: Easing.OutQuad
            }
        }
    }
}