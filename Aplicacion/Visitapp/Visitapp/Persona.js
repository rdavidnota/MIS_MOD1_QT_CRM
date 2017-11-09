.pragma library
.import QtQuick.LocalStorage 2.0 as Sql
.import "Database.js" as Db



function getAll() {
    var records  = [];
    var db = Db.dbGetHandle();

    db.transaction(function (tx) {
        var results = tx.executeSql('SELECT ID, NOMBRE, TELEFONO, CORREO FROM PERSONA ORDER BY NOMBRE;');

        for (var i = 0; i < results.rows.length; i++) {
            var record ={
                id: results.rows.item(i).ID,
                nombre: results.rows.item(i).NOMBRE,
                telefono: results.rows.item(i).TELEFONO,
                correo: results.rows.item(i).CORREO
            }
            records.push(record)
        }
    });

    return records
}

function insert(nombre, telefono, correo){
    var db = Db.dbGetHandle();

    db.transaction(function(tx){
        tx.executeSql('INSERT INTO PERSONA VALUES(NULL,?,?,?);',[nombre,telefono,correo])
    });
}

function remove(id){
    var db = Db.dbGetHandle()();

    db.transaction(function(tx){
        tx.executeSql('DELETE FROM PERSONA WHERE ID=?;',[id]);
    });
}
