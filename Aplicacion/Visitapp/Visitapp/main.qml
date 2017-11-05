import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.LocalStorage 2.0
import QtQuick.Controls 2.0
import QtQuick 2.7
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Visitapp")

    SwipeView {
        id: swipeView
        anchors.rightMargin: 0
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        Page {
            Label {
                text: qsTr("Second page")
                anchors.centerIn: parent
            }
        }
        Page {
            Label {
                text: qsTr("Listado  page")
                anchors.centerIn: parent
            }
        }

    }

    footer:  TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Registrar Visitas")
        }
        TabButton {
            text: qsTr("Realizar Visitas")
        }
        TabButton {
            text: qsTr("Reporte de Visitas")
        }
    }

   // MainForm {
   //    anchors.fill: parent
   //     mouseArea.onClicked: {
   //        console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
   //     }
   // }
}
