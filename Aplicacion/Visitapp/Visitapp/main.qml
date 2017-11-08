import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.LocalStorage 2.0
import QtQuick.Controls 2.0
import QtQuick 2.7
import QtQuick.Layouts 1.3
import "Visita.js" as Visita
import "Persona.js" as Persona
import "Database.js" as DB

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
        VisitasForm{
            fecha.text: new Date().toDateString()
            button.onClicked: {
                DB.dbInit();
                Visita.insert(fecha.text,objetivo.text,alcance.text,reqneg.text,estado.textAt(0),efectividad.text ,visitante.textAt(0),visitado.textAt(0))
                var records = Visita.getAll()
                console.log(records.length)
                mensaje.open()

        }}
        VisitarForm{
        }
        RptVisitasForm{
            onParentChanged: {
            var records = Visita.getAll()
                for (var i = 0; i < records.length; i++) {
                  console.log(records[i].id)
                 listavis.model.append({id: qsTr(records[i].id) /*records[i].id*/,reqneg:"1"/*records[i].reqnegocio*/})
               // listavis.model.append({id:records.rows.item(12).id,reqneg:records.rows.item(12).reqnegocio})
               // listavis.model.append({id:records.rows.item(10).id,reqneg:records.rows.item(10).reqnegocio})
               // listavis.model.append({id:records.rows.item(9).id,reqneg:records.rows.item(9).reqnegocio})
                }

        }}
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



    }

   // MainForm {
   //    anchors.fill: parent
   //     mouseArea.onClicked: {
   //        console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
   //     }
   // }

