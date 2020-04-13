import QtQuick 2.14
import QtQuick.Controls 2.14

Rectangle {
    width: 200
    height: 500

    ListView {
        id: cityList
        anchors.fill: parent
        model: cityListModel
        focus: true

        Component {
            id: cityListDelegate
            Item {
                width: parent.width
                height: textid.height
                Text {
                    id: textid
                    text: model.display
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: cityList.currentIndex = index
                }
            }
        }
        delegate: cityListDelegate

        onCurrentItemChanged: console.log(cityList.currentIndex + ' selected')

        highlight: Rectangle {
            width: parent.width
            height: textid.height
            color: "lightsteelblue"
        }

    }



}