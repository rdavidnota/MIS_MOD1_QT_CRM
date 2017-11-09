import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4

Item {
   // property alias rowLayout: rowLayout
    property alias listavis: listavisitas

  /*  RowLayout {
        id: rowLayout
        width: 305
        height: 413
        anchors.horizontalCenterOffset: -10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 21
        anchors.top: parent.top
    }*/
    Text {
        id: text1
        x: 88
        y: 8
        width: 105
        height: 18
        color: "#000000"
        text: qsTr("Reporte de Visitas")
        font.bold: true
        styleColor: "#000000"
        font.pixelSize: 15
    }


    ListView {
        id: listavisitas
        anchors.rightMargin: 302
        anchors.bottomMargin: 0
        anchors.topMargin: 32
        anchors.leftMargin: 0
        anchors.fill: parent
        model: ListModel{}
        delegate: Label {
            //anchors.left: parent.left
            //anchors.right: parent.right
            height: 20
            text: id + ": " + vistante + ": " + visitado + ": " + estado + ": " + efectividad

        }
    }

       /* Calendar { id: fechaini ;x: 179;y: 36}
     Calendar{ id: fechafin ;x: 188;y: 100 ; frameVisible: true;navigationBarVisible: true }
   *//*  ComboBox {
         x: 269
         y: 361
         width: 200
         model: [ "Banana", "Apple", "Coconut" ]
     }*/

    /* ComboBox {
         currentIndex: 2
         model: ListModel {
             id: cbItems
             ListElement { text: "Banana"; color: "Yellow" }
             ListElement { text: "Apple"; color: "Green" }
             ListElement { text: "Coconut"; color: "Brown" }
         }
     }

    Button {
        id: button1
        x: 188
        y: 361
        text: qsTr("Aceptar")
    }*/
}
