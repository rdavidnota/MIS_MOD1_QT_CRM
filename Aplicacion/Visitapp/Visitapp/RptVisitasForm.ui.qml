import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4
import "Persona.js" as Persona
Item {
    property alias rowLayout: rowLayout

    RowLayout {
        id: rowLayout
        width: 305
        height: 413
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 18
        anchors.top: parent.top
    }
    
    ListView {
     id: visitalist
     anchors.fill: parent
     model:ListModel{}

     delegate:
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
