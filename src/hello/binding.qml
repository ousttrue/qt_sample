import QtQuick

Window {
    id: root
    width: 200
    height: 100
    color: "red"
    visible: true


    Rectangle {
        width: root.width / 2
        height: root.height
        color: "blue"
    }

    Rectangle {
        width: root.width / 2
        height: root.height
        x: root.width / 2
        color: "green"
    }
}
