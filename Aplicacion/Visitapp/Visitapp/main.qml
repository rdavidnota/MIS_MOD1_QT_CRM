import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.LocalStorage 2.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Visitapp")



    Component.onCompleted: {
        db = LocalStorage.openDatabaseSync(dbId, dbVersion, dbDescription, dbSize);
        db.trasanction(function(tx){
                var sql = "CREATE TABLE IF NO EXISTS PERSONA()";
                tx.executeSql(sql);
        });
    }

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
        }
    }
}
