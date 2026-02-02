import QtQuick

Window {
    id: root
    width: 200
    height: 100
    color: "red"
    visible: true

    property int animatedValue

    SequentialAnimation on animatedValue {
        loops: Animation.Infinite
        PropertyAnimation {
            to: 150
            duration: 1000
        }
        PropertyAnimation {
            to: 0
            duration: 1000
        }
    }

    Text {
        anchors.centerIn: parent
        text: root.animatedValue
    }
}
