.pragma library
.import QtQuick.LocalStorage 2.0 as Sql
.import "Database.js" as Db



function getAll() {
    var records  = [];
    var db = Db.dbGetHandle();

    db.transaction(function (tx) {
        var results = tx.executeSql('SELECT ID, FECHA, OBJETIVO, ALCANCE, REQNEGOCIO, ESTADO, EFECTIVIDAD, VR.IDPERSONA VISITANTE , VS.IDPERSONA VISITADO FROM VISITA V ,VISTADORES VR, VISITADOS VS WHERE VR.IDVISITA = V.ID AND VS.IDVISITA = V.ID ORDER BY ID;');

        for (var i = 0; i < results.rows.length; i++) {
           // console.log(results.rows.item(i).ID)
           // console.log(results.rows.item(i).REQNEGOCIO)
            var record ={                
                id: results.rows.item(i).ID,
                fecha: results.rows.item(i).FECHA,
                objetivo: results.rows.item(i).OBJETIVO,
                alcanse: results.rows.item(i).ALCANCE,
                reqnegocio: results.rows.item(i).REQNEGOCIO,
                estado: results.rows.item(i).ESTADO,
                efectividad: results.rows.item(i).EFECTIVIDAD,
                visitante: results.rows.item(i).VISITANTE,
                visitado: results.rows.item(i).VISITADO
              /*  telefono: results.rows.item(i).telefono,
                correo: results.rows.item(i).correo*/
            }
            records.push(record)
        }
    });

    return records
}

function insert(fecha, objetivo, alcance, reqnegocio, estado, efectividad, visitadores, visitados){
    var db = Db.dbGetHandle();
    var visitaId = 0;
    //console.log(fecha, objetivo, alcance, reqnegocio, estado, efectividad, visitadores, visitados)
    db.transaction(function(tx){
        tx.executeSql('INSERT INTO VISITA VALUES(NULL,?,?,?,?,?,?);',[fecha, objetivo, alcance, reqnegocio, estado, efectividad])

        var result = tx.executeSql('SELECT last_insert_rowid();')
        visitaId = result.insertId

        /*for(var i = 0; i<visitadores.rows.length; i++){
            tx.executeSql('INSERT INTO VISTADORES VALUES(?,?);',[visitadores.rows.item(i), visitaId])
        }*/
         tx.executeSql('INSERT INTO VISTADORES VALUES(?,?);',[visitadores, visitaId])

       /* for(var i = 0; i<visitados.rows.length; i++){
            tx.executeSql('INSERT INTO VISITADOS VALUES(?,?);',[visitados.rows.item(i), visitaId])
        }*/
         tx.executeSql('INSERT INTO VISITADOS VALUES(?,?);',[visitados, visitaId])        
    });    
    return visitaId
}

function update(id, objetivo, alcance, estado, efectividad){
    var db = Db.dbGetHandle();

    db.transaction(function(tx){
        tx.executeSql('UPDATE VISITA SET OBJETIVO =?, ALCANCE =?, ESTADO =?, EFECTIVIDAD =? WHERE ID =?;',[objetivo, alcance, estado, efectividad,id])
    });
}

function remove(id){
    var db = Db.dbGetHandle()();

    db.transaction(function(tx){
        tx.executeSql('DELETE FROM VISITA WHERE ID=?;',[id]);
    });
}
