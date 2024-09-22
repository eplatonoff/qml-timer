import QtQuick
import QtQuick.Controls.Fusion

import "../../../Components"

Item {
    id: theme

    height: 32
    anchors.right: parent.right
    anchors.left: parent.left

    Text {
        id: colorThemeLabel

        text: qsTr("Theme")

        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: colorThemeDropdown.left
        anchors.rightMargin: 8
        color: colors.getColor("dark")

        font.family: localFont.name
        font.pixelSize: 16

        renderType: Text.NativeRendering
    }

    ComboBox {
        id: colorThemeDropdown

        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: 90

        palette.buttonText: colors.getColor("dark")

        indicator: Rectangle {
            color: "transparent"

            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter

            height: 24
            width: 24

            FaIcon {
                id: dropDownButton

                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                glyph: "\uf150"

                onReleased: {
                    colorThemeDropdown.popup.open()
                }
            }
        }

        background: Rectangle {
            border {
                color: "#00FFFFFF"
                width: 1
            }
            color: "transparent"
        }

        contentItem: Text {
            leftPadding: 0
            rightPadding: colorThemeDropdown.indicator.width

            text: colorThemeDropdown.displayText
            font.pixelSize: 16
            font.family: localFont.name

            color: colors.getColor("dark")

            renderType: Text.NativeRendering

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
        }


        model: ["Light", "Dark", "System"]
        currentIndex: {
            const index = colorThemeDropdown.model.indexOf(appSettings.colorTheme);
            return index !== -1 ? index : 0;
        }

        onActivated: {
            appSettings.colorTheme = colorThemeDropdown.currentText
        }
    }

}