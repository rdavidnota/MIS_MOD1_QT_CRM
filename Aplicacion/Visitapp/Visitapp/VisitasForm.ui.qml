import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
//import QtQuick.Controls 1.4
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
    property alias model: model1


    RowLayout {
        id: rowLayout
        width: 305
        height: 481
        visible: true
        anchors.horizontalCenterOffset: -159
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: -1
        anchors.top: parent.top
    }

    TextField {
        id: textField
        x: 95
        y: 35
        width: 194
        height: 26
        text: qsTr("")
    }

    Button {
        id: button1
        x: 131
        y: 410
        width: 82
        height: 25
        text: qsTr("Guardar")        
    }

    Label {
        id: label
        x: 24
        y: 35
        width: 47
        height: 19
        text: qsTr("Fecha :")
    }

    Label {
        id: label1
        x: 24
        y: 78
        width: 47
        height: 13
        text: qsTr("Objetivo :")
    }

    TextField {
        id: textArea
        x: 95
        y: 78
        width: 194
        height: 53
        text: qsTr("")
    }

    Label {
        id: label2
        x: 24
        y: 142
        width: 55
        height: 13
        text: qsTr("Alcance :")
    }

    TextField {
        id: textArea1
        x: 96
        y: 142
        width: 194
        height: 56
        text: qsTr("")
    }

    Label {
        id: label3
        x: 24
        y: 203
        text: qsTr("Req. de Neg :")
    }

    TextField {
        id: textArea2
        x: 96
        y: 203
        width: 194
        height: 62
        text: qsTr("")       
    }

    Label {
        id: label4
        x: 24
        y: 271
        text: qsTr("Visitante :")
    }


    ComboBox {
        id: comboBox1
        x: 96
        y: 271
        width: 193
        height: 24
        textRole: "key"
        model: ListModel {
            id: model1
            ListElement { key: "Richard Romero";value: 0 }
            ListElement { key: "Raul Nota" ;value: 1 }
            ListElement { key: "Ariel Palmero";value: 2 }
        }
    }


    MessageDialog {
        id: mensaje
        title: ""
        text: ""
        icon: StandardIcon.Question

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
           x: 96
           y: 309
           width: 193
           height: 24
           textRole: "key"
           model: ListModel {
               id: model2
               ListElement { key: "Richard Romero";value: 0 }
               ListElement { key: "Raul Nota" ;value: 1 }
               ListElement { key: "Ariel Palmero";value: 2 }
           }
       }

    Label {
        id: label5
        x: 24
        y: 309
        text: qsTr("Visitado :")
    }

    ComboBox {
        id: comboBox2
        x: 96
        y: 342
        width: 193
        height: 24
        model: [ "Pendiente", "Cerrada", "En Proceso" ]
    }

    Label {
        id: label6
        x: 24
        y: 342
        width: 33
        height: 12
        text: qsTr("Estado :")
    }

    TextField {
        id: textField1
        x: 95
        y: 378
        width: 194
        height: 26
        text: qsTr("0")
    }

    Label {
        id: label7
        x: 24
        y: 378
        text: qsTr("Efectividad :")
    }
   /* Rectangle{
        x: 269
        y: 17
        width: 105
        height: 14
        color: "#000000"*/
    Text {
        id: text1
        x: 88
        y: 8
        width: 105
        height: 18
        color: "#000000"
        text: qsTr("Registro de Visitas")
        font.bold: true
        styleColor: "#000000"
        font.pixelSize: 15
    }

    //}

}
