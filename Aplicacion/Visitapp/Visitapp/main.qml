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
    width: 350 //650
    height: 480 //480
    title: qsTr("Visitapp")

    SwipeView {
        id: swipeView
        anchors.rightMargin: 0
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        //currentIndex: tabBar.currentIndex = 0
        VisitarForm{
        }
        VisitasForm{
            Component.onCompleted:
            {
              /*cargar combos*/
                //Persona.insert("Richard Romero","75003602","eromero@cotas.com")
                //Persona.insert("Raul Nota","76683515","rnota@cotas.com")
                //Persona.insert("Ariel Palmero","77824712","apalmero@cotas.com")

                //model.clear()
                //var records = Persona.getAll()
                // for (var i = 0; i < records.length; i++) {
                  //console.log(records[i].id)
                  //console.log(records[i].reqnegocio)
                //  model.append({ "key": records[i].nombre, "value":records[i].id})
                // }

            }
            fecha.text: new Date().toDateString()

            visitado.currentIndex: 0
            visitante.currentIndex: 2
            visitante.onFocusChanged:{
               //   model.clear()
               //   model.append({ "key": "amigo agregado", "value":4})
            }
            button.onClicked: {
                DB.dbDrop();
                DB.dbInit();
                var numvisita = Visita.insert(fecha.text,objetivo.text,alcance.text,reqneg.text,estado.currentText,efectividad.text ,visitante.currentText,visitado.currentText)
                mensaje.text = "Se registro la visita : " + numvisita + " " + "Satisfactoriamente.."
                mensaje.title = "Confirmacion"
                mensaje.visible = true
                mensaje.open()
        }}

        RptVisitasForm{
            onFocusChanged: {
               listavis.model.clear()
               var records = Visita.getAll()
                for (var i = 0; i < records.length; i++) {
                 //console.log(records[i].id)
                 //console.log(records[i].reqnegocio)
                 listavis.model.append({id:records[i].id ,vistante:records[i].visitante,visitado:records[i].visitado,estado:records[i].estado,efectividad:records[i].efectividad})
                }

        }}
    }

    footer:  TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
             text: qsTr("Inicio")
        }
        TabButton {
            text: qsTr("Registrar Visitas")
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

