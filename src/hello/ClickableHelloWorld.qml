import QtQuick

Window {
    id: root
    width: 200
    height: 100
    color: isRed ? "red" : "blue"
    visible: true

    property bool isRed: true  // Track the color state

    Text {
        anchors.centerIn: parent
        text: "Hello, World!"
    }

    TapHandler {
        onTapped: root.isRed = !root.isRed  // Toggle state
    }
}
