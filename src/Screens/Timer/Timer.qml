import QtQuick

import "Components"
import "../../Components"

Item {
    id: screen

    Item {
        id: content

        anchors.fill: parent
        anchors.margins: 16


        Header {
            id: header
        }

        TimerModel {
            id: timerModel
            data: data
            title: title
        }

        PiloramaTimer {
            id: globalTimer
        }

        Sequence {
            id: sequence

            anchors.top: header.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }

    }
}