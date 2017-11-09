.pragma  library
.import QtQuick.LocalStorage 2.0 as Sql

//identificador de la DB
var dbId = "Visitapp";

//Version de la db
var dbVersion = "1.0";

//Descripcion de la db
var dbDescription = "Database application";

//tamaño estimado de la db
var dbSize = 100000;





function dbDrop()
{
    try {
        var db = dbGetHandle();

        db.transaction(function (tx) {
            tx.executeSql('DROP TABLE IF EXISTS PERSONAS;');
            tx.executeSql('DROP TABLE IF EXISTS VISITA;');

            tx.executeSql('DROP TABLE  IF EXISTS VISITADOS;');
            tx.executeSql('DROP TABLE  IF EXISTS VISTADORES;');

        })
    } catch (err) {
        console.log("Error creating table in database: " + err)
    };
}

function dbInit()
{
    try {
        var db = dbGetHandle();

        db.transaction(function (tx) {
            tx.executeSql('CREATE TABLE IF NOT EXISTS PERSONAS( ID INTEGER PRIMARY KEY, NOMBRE TEXT, TELEFONO TEXT, CORREO TEXT);');
            tx.executeSql('CREATE TABLE IF NOT EXISTS VISITA ( ID INTEGER PRIMARY KEY, FECHA TEXT, OBJETIVO TEXT, ALCANCE TEXT, REQNEGOCIO TEXT, ESTADO TEXT, EFECTIVIDAD TEXT );');

            tx.executeSql('CREATE TABLE  IF NOT EXISTS VISITADOS ( IDPERSONA TEXT, IDVISITA TEXT);');
            tx.executeSql('CREATE TABLE  IF NOT EXISTS VISTADORES ( IDPERSONA TEXT, IDVISITA TEXT );');

        })
    } catch (err) {
        console.log("Error creating table in database: " + err)
    };
}

function dbGetHandle()
{
    try {
       var db  = Sql.LocalStorage.openDatabaseSync(dbId, dbVersion, dbDescription, dbSize);

    } catch (err) {
        console.log("Error opening database: " + err)
    }
    return db;
}
