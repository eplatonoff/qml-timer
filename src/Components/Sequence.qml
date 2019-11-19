import QtQuick 2.13
import QtQuick.Controls 2.13
import QtGraphicalEffects 1.12
import QtQuick.Layouts 1.1
import QtQml.Models 2.13

import "Sequence"
import ".."


Item {
    id: sequence

    Rectangle {

        color: colors.get()
//        Behavior on color { ColorAnimation { duration: 100 } }

        anchors.top: sequenceHeader.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.topMargin: 5
        anchors.bottomMargin: 45


//        DelegateModel {
//            id: visualModel
//            model: SequenceModel{ id: sequenceModel }
//            delegate: SequenceItem { id: sequenceItem }
//            }



        ListView {
            id: sequenceSet
            anchors.fill: parent
            spacing: 0
            cacheBuffer: 40
            snapMode: ListView.SnapOneItem
            model: SequenceModel{ id: sequenceModel }
            delegate: SequenceItem { id: sequenceItem }
        }
    }

    Header {
        id: sequenceHeader
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
    }

    Tools {
        id: tools
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/