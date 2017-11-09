import QtQuick 2.4

Item {
    width: 400
    height: 400

    Image {
        id: image
        x: 105
        y: 172
        width: 111
        height: 88
        source: "Visitapplogo.PNG"
    }

    Text {
        id: text1
        x: 111
        y: 114
        width: 105
        height: 18
        color: "#000000"
        text: qsTr("Bienvenidos")
        font.bold: true
        styleColor: "#000000"
        font.pixelSize: 16
    }

    Text {
        id: text2
        x: 157
        y: 138
        width: 27
        height: 14
        text: qsTr("a")
        font.bold: true
        styleColor: "#000000"
        font.pixelSize: 16
    }

}
