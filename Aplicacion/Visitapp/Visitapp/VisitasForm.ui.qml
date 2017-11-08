import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.1
Item {
    property alias rowLayout: rowLayout
    property alias button: button1
    width: 630
    property alias fecha: textField
    property alias objetivo: textArea
    property alias alcance: textArea1
    property alias reqneg: textArea2
     property alias efectividad: textField1
    // combos
    property alias visitante: comboBox1
    property alias visitado: comboBox
    property alias estado: comboBox2
    property alias mensaje: mensaje


    RowLayout {
        id: rowLayout
        width: 305
        height: 481
        visible: true
        anchors.horizontalCenterOffset: 7
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 0
        anchors.top: parent.top
    }

    TextField {
        id: textField
        x: 259
        y: 16
        width: 183
        height: 26
        text: qsTr("")
    }

    Button {
        id: button1
        x: 274
        y: 415
        width: 82
        height: 25
        text: qsTr("Guardar")        
    }

    Label {
        id: label
        x: 188
        y: 19
        width: 47
        height: 19
        text: qsTr("Fecha :")
    }

    Label {
        id: label1
        x: 188
        y: 62
        width: 47
        height: 13
        text: qsTr("Objetivo :")
    }

    TextArea {
        id: textArea
        x: 259
        y: 62
        width: 183
        height: 53
        text: qsTr("")
        verticalAlignment: Text.AlignTop
    }

    Label {
        id: label2
        x: 188
        y: 126
        width: 55
        height: 13
        text: qsTr("Alcance :")
    }

    TextArea {
        id: textArea1
        x: 259
        y: 126
        width: 194
        height: 45
        text: qsTr("")
    }

    Label {
        id: label3
        x: 188
        y: 188
        text: qsTr("Req. de Ne")
    }

    TextArea {
        id: textArea2
        text: qsTr("")
        anchors.top: rowLayout.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.bottomMargin: 242
        anchors.topMargin: -293
        anchors.rightMargin: 177
        anchors.leftMargin: 259
    }

    Label {
        id: label4
        x: 188
        y: 256
        text: qsTr("Visitante")
    }


    ComboBox {
        id: comboBox1
        x: 260
        y: 256
        width: 193
        height: 26
        model: ListModel {
            id: model
            ListElement { text: "Richard Romero list" }
            ListElement { text: "Raul Nota list" }
            ListElement { text: "Ariel Palmero list" }
        }
    }


    MessageDialog {
        id: mensaje
        title: "May I have your attention please"
        text: "It's so cool that you are using Qt Quick."
    }

   /* ComboBox {
        editable: true
        model: ListModel {
            id: model
            ListElement { text: "Banana" }
            ListElement { text: "Apple" }
            ListElement { text: "Coconut" }
        }
        onAccepted: {
            if (find(editText) === -1)
                model.append({text: editText})
        }
    }*/


    ComboBox {
        id: comboBox
        x: 260
        y: 294
        width: 193
        height: 27
        model: [ "Richard Romero", "Raul Nota", "Ariel Palmero" ]
    }

    Label {
        id: label5
        x: 188
        y: 294
        text: qsTr("Visitado")
    }

    ComboBox {
        id: comboBox2
        x: 260
        y: 327
        width: 193
        height: 30
        model: [ "Pendiente", "Cerrada", "En Proceso" ]
    }

    Label {
        id: label6
        x: 188
        y: 336
        width: 33
        height: 12
        text: qsTr("Estado")
    }

    TextField {
        id: textField1
        x: 259
        y: 369
        width: 194
        height: 27
        text: qsTr("0")
    }

    Label {
        id: label7
        x: 188
        y: 369
        text: qsTr("Efectividad")
    }
}
