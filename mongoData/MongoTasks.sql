BEGIN TRANSACTION;
DROP TABLE IF EXISTS "TaskReview";
CREATE TABLE IF NOT EXISTS "TaskReview" (
	"taskID"	INTEGER NOT NULL UNIQUE,
	"taskType"	TEXT NOT NULL,
	"tipp"	TEXT,
	"solutionForReview"	TEXT NOT NULL,
	"additionalInformation"	TEXT NOT NULL
);
INSERT INTO "TaskReview" VALUES (21,'SC','Schau nochmal unter Punkt 2.1 nach.','5',json('{"1": "Number", "2": "Int", "3":  "Varchar", "4":  "String", "5":  "ObjectId", "6":  "ID"}'));
INSERT INTO "TaskReview" VALUES (22,'SC','Schau nochmal unter Punkt 2 nach.','2',json('{"1": "In einer Textdatei,In einer Tabelle mit Spalten und Zeilen", "2": "In Dokumenten mit Key/Value Paaren"}'));
INSERT INTO "TaskReview" VALUES (23,'SC','Schau nochmal unter Punkt 2.1 nach.','2',json('{"1": "JSON", "2": "BSON", "3":  "CSV", "4":  "XML", "5":  "DType"}'));
INSERT INTO "TaskReview" VALUES (24,'SC','Embedded Document sind Dokumente welche als Objekt innerhalb eines anderen Dokumentes abgespeichert werden.','1',
                                 json('{"1": "{info:{price:123}}", "2": "{info:[price:123]}", "3": "{info:123}"}'));

INSERT INTO "TaskReview" VALUES (31,'SC','Siehe nochmal bei "Ein Dokument anlegen und in der Collection abspeichern" eines neuen Dokumentes nach.','3',
                                json('{"1": "Sofern kein eigener Primärschlüssel definiert wird muss die ObjectId immer angegeben werden",' ||
                                     ' "2": "Die MongoDB Identifiziert Dokumente anhand aller Schlüssel/Wert Paare im Dokument",' ||
                                     ' "3": "Die ObjectId wird automatisch von der MongoDB generiert",' ||
                                     ' "4": "Weil die MongoDB keine Primärschlüssel besitzt und Dokumente redundant vorkommen können"}'));

INSERT INTO "TaskReview" VALUES (32,'SC','Siehe nochmal bei "Ein Dokument anhand eines Vergleichsdokumentes auslesen" nach.',
                                 '2',
                                 json('{"1": "Der Cursor zeigt bei jeder Ausführung die angeforderten Daten an", "2": "Der Cursor ist ein Pointer und zeigt nur einmal auf die Daten -> Der Cursor muss erneut auf die Daten zeigen"}'));
INSERT INTO "TaskReview" VALUES (33,'SC','','3',
                                json('{"1": "In der Collection customer wurde noch keine Struktur implementiert",' ||
                                     ' "2": "Die MongoDB löscht eingefügte Dokumente die nicht der Struktur entsprechen",' ||
                                     ' "3": "Die MongoDB ist ein strukturlose Datenbank und kann somit in einer Collection unterschiedliche Dokumente enthalten"}'));

INSERT INTO "TaskReview" VALUES (41,'SC','','1',
                                json('{"1": "Die BSON Datentypen werden als Objekte gespeichert",' ||
                                     ' "2": "Es wird alles korrekt angezeigt",' ||
                                     ' "3": "Einen Fehler beim Export der Daten"}'));

INSERT INTO "TaskReview" VALUES (42,'SC','','2',
                                json('{"1": "Nein denn die MongoDB kann keine Daten als CSV speichern",' ||
                                     ' "2": "Ja aber es umständlicher und die Daten können nicht live betrachtet werden"}'));

INSERT INTO "TaskReview" VALUES (43,'SC','','2',
                                  json('{"1": "463",' ||
                                       ' "2": "1002",' ||
                                       ' "3": "5476",' ||
                                       ' "4": "8469"}'));

INSERT INTO "TaskReview" VALUES (44,'SC','','2',
                                        json('{"1": "476",' ||
                                       ' "2": "1000",' ||
                                       ' "3": "5476",' ||
                                       ' "4": "1"}' ));

INSERT INTO "TaskReview" VALUES (45,'SC','Siehe nochmal bei "Auslesen der Daten aus dem Embedded Document und dem Array" nach.','2',
                                        json('{"1": "Um nur dir Felder aus der Suchanfrage anzuzeigen.",' ||
                                       ' "2": "Um alle Felder anzuzeigen die mit einem Wert von 1 versehen sind und eine 0 wenn diese nicht angezeigt werden sollen.",' ||
                                       ' "3": "Eine Projektion definiert die Felder die in der Kollektion gefunden werden sollen."}' ));

INSERT INTO "TaskReview" VALUES (46,'SC','Siehe nochmal bei "Auslesen der Daten aus dem Embedded Document und dem Array" nach.','4',
                                        json('{"1": "Es werden nur die Felder angezeigt die in der Anfrage enthalten sind.",' ||
                                       ' "2": "Es wird nur die _id zurückgegeben, damit ersichtlich ist, das dass Dokument existiert.",' ||
                                       ' "3": "Alle Dokumente aus der Suchanfrage die in der Kollektion enthalten sind werden zurückgegeben.",' ||
                                       ' "4": "Alle Felder der gefundenen Dokumente werden zurückgegeben"}' ));

INSERT INTO "TaskReview" VALUES (47,'SC','Siehe nochmal beim auslesen der Customer und Grocery Kollektion nach.','1',
                                        json('{"1": "Ja, allerdings müssen die erhaltenen Dokumente noch mit Python gefiltert werden.",' ||
                                       ' "2": "Ja, das ist mit den definierten Suchkriterien und den Projections möglich.",' ||
                                       ' "3": "Nein, dies ist nicht möglich."}' ));

INSERT INTO "TaskReview" VALUES (51,'MC','',json_array('1', '3','5','6'),
                                        json('{"1": "$eq",' ||
                                       ' "2": "or",' ||
                                       ' "3": "$or",' ||
                                       ' "4": "%or",' ||
                                       ' "5": "$and",' ||
                                       ' "6": "$set",' ||
                                       ' "7": "set",' ||
                                       ' "8": "equals"}' ));

INSERT INTO "TaskReview" VALUES (52,'SC','Siehe nochmal bei dem Bild über die Syntax der MongoDB Operatoren nach.','2',
                                        json('{"1": "Das Symbol wird verwendet sofern mit Werten vom Typ Number, Integer oder Double gearbeitet wird.",' ||
                                       ' "2": "Muss bei allen Operatoren angegeben werden um den Operator auf das angegebene Feld zu verweisen.",' ||
                                       ' "3": "Definiert den Schlüssel in dem Das Ergebnis der Anfrage gespeichert werden soll."}' ));

INSERT INTO "TaskReview" VALUES (71,'MC','Die Antwort steht oben im Einleitungstext für das Map-Reduce Verfahren.',json_array('1', '2','3','4'),
                                 json('{"1": "Werten werden einem Schlüssel zugeordnet.", ' ||
                                        '"2": "Werte werden mit anderen Schlüsseln zugeordnet",' ||
                                       ' "3":  "Die angegebenen Schlüssel werden gezählt und aufgelistet",' ||
                                       ' "4":  "Alle Dokumente in der Collection mit dem gleichen Schlüssel und dem dazugehörigen Wert werden zusammengefasst",' ||
                                       ' "5":  "Die Map Funktion erfasst dabei Dokumente aus mehreren Kollektionen",' ||
                                       ' "6":  "Die angegebenen Schlüssel werden in einer neuen Kollektion aufgelistet"}'));
INSERT INTO "TaskReview" VALUES (72,'MC','Die Antwort steht oben im Einleitungstext für das Map-Reduce Verfahren.',json_array('1','4'),
                                 json('{"1":  "Betrachtet die Schlüssel und fasst Werte die bei identischen Schlüsseln vorkommen zusammen", ' ||
                                      '"2":  "Vergleicht die Werte die aus der Map Funktion stammen mit den Werten aus der Kollektion", ' ||
                                      '"3":  "Fasst die Werte aus der Map Funktion in einer neuen Kollektion zusammen", ' ||
                                      '"4":  "Fasst die Werte aus der Map Funktion zusammen, damit diese in einem einzelnen Objekt ausgegeben werden können"}'));
INSERT INTO "TaskReview" VALUES (73,'MC','Die Antwort steht oben im Einleitungstext für das Map-Reduce Verfahren.',json_array('1', '2'),
                                 json('{"1": "Map Reduce hat eine geringere Performance",' ||
                                      ' "2": "Die Usability der Aggregation Pipeline ist besser",' ||
                                      ' "3": "Das Map-Recue Verfahren kann durch die verwendung von JavaScript umfangreichere Queries als die Aggregation Pipeline erstellen"}'));

INSERT INTO "TaskReview" VALUES (74,'SC','Die Antwort steht im vorletzten Absatz in der Einleitung zum Map-Reduce Verfahren.','1',
                                        json('{"1": "Die Aggregation Pipeline ist performanter wenn die Anfragen an ein MongoDB Cluster aus mehreren Datenbanken gesendet werden.",' ||
                                       ' "2": "Das Map-Reduce Verfahren ist performanter wenn die Anfragen an ein MongoDB Cluster aus mehreren Datenbanken gesendet werden."}' ));

INSERT INTO "TaskReview" VALUES (81,'SC','Als Hilfe können Sie nochmal im Kapitel 2.2 nachschauen.','2',
                                 json('{"1": "One-to-One with Document References",' ||
                                      ' "2": "One-to-Many with Document References",' ||
                                      ' "3": "Many-to-Many with Embedded Documents"}'));

INSERT INTO "TaskReview" VALUES (82,'SC','Dies kann aus der Chunks Kollektion ausgelesen werden. Dieser Schritt wurde in der vorherigen Erklärung bereits einmal durchgeführt.','4',
                                 json('{"1": "Eine Id wird für jeden einzelnen Chunk neu erstellt und hat deshalb immer einen unterschiedlichen Schlüssel",' ||
                                      ' "2": "Die Id welche auf die einzelnen Chunks zeigt ist die ObjectID",' ||
                                      ' "3": "Die Id kann frei benannt und in die Metadaten eingefügt werden",' ||
                                      ' "4": "Die Id welche auf die einzelnen Chunks zeigt ist die files_id"}'));

INSERT INTO "TaskReview" VALUES (83,'SC','Die Informationen hierführ sind in der Einleitung zu GridFS beschrieben.','3',
                                 json('{"1": "255kb",' ||
                                      ' "2": "2.4Mb",' ||
                                      ' "3": "16MB"}'));

INSERT INTO "TaskReview" VALUES (84,'SC','Die Informationen hierführ sind in der Einleitung zu GridFS beschrieben.','1',
                                 json('{"1": "255kb",' ||
                                      ' "2": "2.4Mb",' ||
                                      ' "3": "16MB"}'));

DROP TABLE IF EXISTS "User";
CREATE TABLE IF NOT EXISTS "User" (
	"_id" TEXT NOT NULL UNIQUE,
	"first_name" TEXT NOT NULL,
	"last_name"	TEXT NOT NULL,
	"email"	TEXT NOT NULL,
	"phone_number"	TEXT NOT NULL,
	"last_login"	TEXT NOT NULL,
	"registration_date" TEXT
);
INSERT INTO "TaskReview" VALUES (301,'DFP','TIPP','SELECT * FROM User WHERE _id=''775'';','new_customer = {
    "_id":775,
    "first_name" : "Manuel",
    "last_name" : "Mustermann",
    "email" : "Manuel@Mustermann.de",
    "phone_number" : "+49 125 145 1258",
    "last_login" : datetime(2019,12,4),
    "registration_date" : datetime(2010,10,9)
}');
INSERT INTO "User" VALUES (
'775',
'Manuel',
'Mustermann',
'Manuel@Mustermann.de',
'+49 125 145 1258',
'2019-12-04',
'2010-10-09');

DROP TABLE IF EXISTS "BrynLegat";
CREATE TABLE IF NOT EXISTS "BrynLegat" (
	"_id" TEXT NOT NULL UNIQUE,
	"product" TEXT NOT NULL,
	"price"	TEXT,
	"in_stock"	TEXT NOT NULL,
	"sold"	TEXT NOT NULL,
	"stock" TEXT
);
INSERT INTO "TaskReview" VALUES (501,'DFP','Sieh im Kapitel Datenbestand nochmal nach wo die Produkt-Ids abgelegt sind und worauf diese verweisen.','SELECT * FROM BrynLegat;',
                                 'customer_col = store_db["Customer"]
                                 result = customer_col.find({"first_name" : "Bryn" })

list_of_products = []
for doc in result:
    list_of_products = doc["cart"].copy()

grocery_col = store_db["Grocery"]
cursor = grocery_col.find({"_id":{"$in":list_of_products}})

df = pd.DataFrame(cursor)
df = df.astype(str)
mongo_lm.show_task(501,df)')
                                 ;
INSERT INTO "BrynLegat" VALUES (
'5fe6fc8ba789e6e217ef8764',
'Bread - Triangle White',
'€6.82',
'True',
'12',
'1.0');
INSERT INTO "BrynLegat" VALUES (
'5fe6fc8ba789e6e217ef8920',
'Mountain Dew',
'€16.25',
'True',
'47',
'11.0');
INSERT INTO "BrynLegat" VALUES (
'5fe6fc8ba789e6e217ef8a85',
'Onions - Spanish',
'€9.42',
'False',
'28',
'nan');
INSERT INTO "BrynLegat" VALUES (
'5fe6fc8ba789e6e217ef8ae0',
'Hand Towel',
'€5.46',
'False',
'42',
'nan');

DROP TABLE IF EXISTS "StockExists";
CREATE TABLE IF NOT EXISTS "StockExists" (
	"_id" TEXT NOT NULL UNIQUE,
	"product" TEXT NOT NULL,
	"price"	TEXT,
	"in_stock"	TEXT NOT NULL,
	"sold"	TEXT NOT NULL,
	"stock" TEXT NOT NULL
);
INSERT INTO "TaskReview" VALUES (502,'DFP','Sie können dafür den $exists Operator verwenden','SELECT * FROM StockExists;',
                                 'customer_col = store_db["Grocery"]
result = customer_col.find({"stock":{"$exists":1}}).limit(3)
df = pd.DataFrame(result)
df = df.astype(str)
mongo_lm.show_task(502,df)');


INSERT INTO "StockExists" VALUES ('5fe6fc8ba789e6e217ef870c','Energy Drink','€10.52','True','75','25');
INSERT INTO "StockExists" VALUES ('5fe6fc8ba789e6e217ef870f','Pastry - Plain Baked Croissant','€4.39','True','95','76');
INSERT INTO "StockExists" VALUES ('5fe6fc8ba789e6e217ef8710','Scallops - U - 10','€18.70','True','72','46');

DROP TABLE IF EXISTS "VorratProdukt";
CREATE TABLE IF NOT EXISTS "VorratProdukt" (
	"_id" TEXT NOT NULL UNIQUE,
	"product" TEXT NOT NULL,
	"price"	TEXT,
	"in_stock"	TEXT NOT NULL,
	"sold"	TEXT NOT NULL,
	"stock" TEXT NOT NULL
);
INSERT INTO "TaskReview" VALUES (503,'DFP','Sie benötigen hierführ $and, $gte/gt, $lte/lt. Der $and Operator erhällt einen Array [{},{}] als input und wurde bei den Beispielen bereits verwendet.','SELECT * FROM VorratProdukt;',
                                 'customer_col = store_db["Grocery"]
result = grocery_col.find({"$and": [{"sold":{"$gte":90}},{"in_stock":True},{"stock":{"$lte":5}}]})
df = pd.DataFrame(result)
df
df = df.astype(str)
mongo_lm.show_task(503,df)');


INSERT INTO "VorratProdukt" VALUES ('5fe6fc8ba789e6e217ef899a','Wine - White Cab Sauv.on','€18.17','True','94','2');

DROP TABLE IF EXISTS "DoubleProduct";
CREATE TABLE IF NOT EXISTS "DoubleProduct" (
	"_id" TEXT NOT NULL UNIQUE,
	"product" TEXT NOT NULL,
	"price"	TEXT,
	"in_stock"	TEXT NOT NULL,
	"sold"	TEXT NOT NULL
);
INSERT INTO "TaskReview" VALUES (601,'DFP','Dabei kann der $gt Operator in Kombination mit der $match Pipeline verwendet werden.','SELECT * FROM DoubleProduct;','pipeline = [
    {"$match" : {"product":"Cocoa Powder - Natural"}},
    {"$match" : {"sold": {"$gt" : 50}}}
]');
INSERT INTO "DoubleProduct" VALUES ('5fe6fc8ba789e6e217ef87ee','Cocoa Powder - Natural','€20.22','False','56');

DROP TABLE IF EXISTS "CountGains";
CREATE TABLE IF NOT EXISTS "CountGains" (
	"_id" TEXT NOT NULL UNIQUE,
	"count" TEXT NOT NULL
);
INSERT INTO "TaskReview" VALUES (603,'DFP','Der $trim Operator kann wie folgt angelegt werden: {"$addFields": {"?????" : {"$trim": {"input": "$?????", "chars": "???"}}}}. Eine Stage für die Gruppierung kann mit einem $sum Operator kombiniert werden. Dadurch kann "$multiply": [ "$price", "$sold" ] implementiert werden. Der $out Operator speichert die Ergebnisse in einer neuen Collection ab. Verwenden Sie diesen als letztes in der Pipeline. ','SELECT * FROM CountGains;','pipeline = [
    {"$addFields": {"price" : {"$trim": {"input": "$price", "chars": "€"}}}},
    {"$addFields": {"price" : {"$convert": {"input": "$price", "to": "double"}}}},
    {"$group": {"_id": None, "count": { "$sum": { "$multiply": [ "$price", "$sold" ] } }}},
    {"$out" : "gains_collection"}
]');
INSERT INTO "CountGains" VALUES ('None','550812.16');


DROP TABLE IF EXISTS "CountCity";
CREATE TABLE IF NOT EXISTS "CountCity" (
	"_id" TEXT NOT NULL UNIQUE,
	"count" TEXT NOT NULL
);
INSERT INTO "TaskReview" VALUES (602,'DFP','Um das Zählen eines Wertes durchzuführen, kann eine Gruppierung in Kombination mit dem gezählten Feld und einem neu angelegten Feld erstellt werden. Dies kann Beispielsweise so aussehen: {"_id": "$count_field","count": { "$sum": 1 }. Die Punktnotation sollte hier beim erfassen des Feldes nicht vergessen werden.','SELECT * FROM CountCity;','Irgendeine Lösung');
INSERT INTO "CountCity" VALUES ('Stockholm','3');

DROP TABLE IF EXISTS "MoreThan25";
CREATE TABLE IF NOT EXISTS "MoreThan25" (
	"_id" TEXT NOT NULL UNIQUE,
	"count" TEXT NOT NULL
);
INSERT INTO "TaskReview" VALUES (604,'DFP','Um die gekauften Produkte zählen zu können muss in jedem Dokument der Array $cart aufgelöst werden ("$unwind":"$array") um an die einzelnen Ids zu gelangen. Danach kann eine Gruppierung mit einem Feld für das Zählen festgelegt werden und auf diesem Feld der $gt Operator angewendet werden.','SELECT * FROM MoreThan25;','Irgendeine Lösung');
INSERT INTO "MoreThan25" VALUES ('None','41');

DROP TABLE IF EXISTS "GridFSchecksum";
CREATE TABLE IF NOT EXISTS "GridFSchecksum" (
	"md5" TEXT NOT NULL UNIQUE
);
INSERT INTO "GridFSchecksum" VALUES ('6b5a116597de1fe10e278c4e6c37ec59');
INSERT INTO "TaskReview" VALUES (801,'DFP','Die Query benötigt die richtige File ID. Der Key für die Prüfsumme steht im Dokument selbst.','SELECT * FROM GridFSchecksum;','query = {"_id":"p#175"}
for files in files_col.find(query):
    pprint(files.get("md5"))');


DROP TABLE IF EXISTS "MapReduce";
CREATE TABLE IF NOT EXISTS "MapReduce" (
	"_id" TEXT NOT NULL UNIQUE,
	"value" TEXT NOT NULL
);
INSERT INTO "MapReduce" VALUES ('Apples - Spartan','75.0');
INSERT INTO "TaskReview" VALUES (701,'DFP','Hier müssen zuerst in einer Map der Produktname und die Anzahl der verkauften Äpfel erfasst werden. Danach können die Values wie aus dem Beispiel weiter oben addiert werden.','SELECT * FROM MapReduce;',
                                 'new_mapper = Code("""function () {
             if(this.product.includes("Apples - Spartan") ){
                 emit(this.product,this.sold)
             }
            }""")

new_reducer = Code("""
                function (key, values) {
                  var total = 0;
                  for (var i = 0; i < values.length; i++) {
                    total += values[i];
                  }
                  return total;
                }
                """)');

DROP TABLE IF EXISTS "GridFSmetadata";
CREATE TABLE IF NOT EXISTS "GridFSmetadata" (
	"_id" TEXT NOT NULL UNIQUE,
	"product" TEXT NOT NULL,
	"price"	TEXT,
	"in_stock"	TEXT NOT NULL,
	"sold"	TEXT NOT NULL
);
INSERT INTO "GridFSmetadata" VALUES ('5fe6fc8ba789e6e217ef8748','Spice - Paprika','€21.15','False','100');
INSERT INTO "TaskReview" VALUES (802,'DFP','Es muss dazu die ID aus dem Metadaten ausgelesen werden. Dies ist mit get("meta").get("product_image_id") möglich.','SELECT * FROM GridFSmetadata;',
                                 'query = {"_id":"p#175"}
for files in files_col.find(query):
    product_id = files.get("meta").get("product_image_id")

query = {"_id":ObjectId(product_id)}
for product in grocery_col.find(query):
    pprint(product)');



DROP TABLE IF EXISTS "End_limit_3";
CREATE TABLE IF NOT EXISTS "End_limit_3" (
	"_id" TEXT NOT NULL UNIQUE,
	"customer" TEXT NOT NULL,
	"IBAN"	TEXT,
	"credit_card"	TEXT NOT NULL,
	"timestamp"	TEXT NOT NULL,
	"costs"	TEXT NOT NULL,
	"payed"	TEXT NOT NULL,
	"purchased"	TEXT NOT NULL
);
INSERT INTO "End_limit_3" VALUES ('TJTj-238-ypT-2XA-389-Tv0',
                                     '5fe60bb5fc13ae64ea000373',
                                     'MU90 CVRW 4031 7723 2292 9086 263O YZ',
                                     'None',
                                     '2020-12-15 06:11:35',
                                     '29.18',
                                     'False',
                                     '[ObjectId(''5fe6fc8ba789e6e217ef8ac5''), ObjectId(''5fe6fc8ba789e6e217ef89df'')]');

INSERT INTO "TaskReview" VALUES (901,'DFP','Die richtige ID muss in der find() Methode angegeben werden.','SELECT * FROM End_limit_3;',
                                 'cursor = trans_col.find({"_id" : "TJTj-238-ypT-2XA-389-Tv0" })
');

DROP TABLE IF EXISTS "End_unwind";
CREATE TABLE IF NOT EXISTS "End_unwind" (
	"_id" TEXT NOT NULL,
	"customer" TEXT NOT NULL,
	"IBAN" TEXT,
	"credit_card" TEXT NOT NULL,
	"timestamp"	TEXT NOT NULL,
	"costs"	TEXT NOT NULL,
	"payed"	TEXT NOT NULL,
	"purchased"	TEXT NOT NULL
);
INSERT INTO "End_unwind" VALUES ('TJTj-238-ypT-2XA-389-Tv0',
                                     '5fe60bb5fc13ae64ea000373',
                                     'MU90 CVRW 4031 7723 2292 9086 263O YZ',
                                     'None',
                                     '2020-12-15 06:11:35',
                                     '29.18',
                                     'False',
                                     '5fe6fc8ba789e6e217ef8ac5');
INSERT INTO "End_unwind" VALUES ('TJTj-238-ypT-2XA-389-Tv0',
                                     '5fe60bb5fc13ae64ea000373',
                                     'MU90 CVRW 4031 7723 2292 9086 263O YZ',
                                     'None',
                                     '2020-12-15 06:11:35',
                                     '29.18',
                                     'False',
                                     '5fe6fc8ba789e6e217ef89df');

INSERT INTO "TaskReview" VALUES (902,'DFP','Hierzu wird der $match und der $unwind Operator benötigt.','SELECT * FROM End_unwind;',
                                 'pipeline = [
    {"$match": {"_id" : "TJTj-238-ypT-2XA-389-Tv0" }},
    {"$unwind": "$purchased"}
]');


DROP TABLE IF EXISTS "End_find_products";
CREATE TABLE IF NOT EXISTS "End_find_products" (
	"_id" TEXT NOT NULL UNIQUE,
	"product" TEXT NOT NULL,
	"price"	TEXT,
	"in_stock"	TEXT NOT NULL,
	"sold"	TEXT NOT NULL,
	"stock"	TEXT NOT NULL
);
INSERT INTO "End_find_products" VALUES ('5fe6fc8ba789e6e217ef89df','Wine - Blue Nun Qualitatswein','€14.21','True','59','3.0');
INSERT INTO "End_find_products" VALUES ('5fe6fc8ba789e6e217ef8ac5','Mint - Fresh','€14.97','False','28','nan');
INSERT INTO "TaskReview" VALUES (903,'DFP','Die find() Methode kann mit dem Operator $in verbunden werden um aus einem Array mehrere Ids auszulesen.','SELECT * FROM End_find_products;',
                                 'products = grocery_col.find({"_id":{"$in":[ObjectId("5fe6fc8ba789e6e217ef8ac5"),ObjectId("5fe6fc8ba789e6e217ef89df")]}})
');


DROP TABLE IF EXISTS "Maria_Holm";
CREATE TABLE IF NOT EXISTS "Maria_Holm" (
	"_id" TEXT NOT NULL UNIQUE,
	"first_name" TEXT NOT NULL,
	"last_name"	TEXT,
	"email"	TEXT NOT NULL,
	"last_login"	TEXT NOT NULL,
	"registration_date"	TEXT NOT NULL,
	"address"	TEXT NOT NULL,
	"cart"	TEXT NOT NULL
);
INSERT INTO "Maria_Holm" VALUES ('600c7584096cd4ef6296c6cf','Maria','Holm','hmari@doublt.com','2021-01-08 11:42:00','2013-07-22 05:42:00','{''country'': ''Canada'', ''city'': ''Toronto'', ''street'': ''2 Livester Road'', ''zip'': 12549}','[ObjectId(''5fe6fc8ba789e6e217ef8715''), ObjectId(''5fe6fc8ba789e6e217ef8716'')]');
INSERT INTO "TaskReview" VALUES (904,'DFP','Zuerst muss die ID von Maria herausgefunden werden. Die Update Methode bekommt die ID des Dokuments das geupdatet wird und den Operator $set welcher das jeweilige Feld updatet. Das Feld cart ist ein Array.','SELECT * FROM Maria_Holm;',
                                 'maria_doc = customer_col.find({"first_name":"Maria"})

for doc in maria_doc:
    maria_id = doc.get("_id")

customer_col.update_one(
    { "_id": maria_id  },
    { "$set": { "cart": [ObjectId("5fe6fc8ba789e6e217ef8715"),ObjectId("5fe6fc8ba789e6e217ef8716")] } },
);
');


DROP TABLE IF EXISTS "Customer_wiht_id";
CREATE TABLE IF NOT EXISTS "Customer_wiht_id" (
	"_id" TEXT NOT NULL UNIQUE,
	"first_name" TEXT NOT NULL,
	"last_name"	TEXT,
	"email"	TEXT NOT NULL,
	"last_login"	TEXT NOT NULL,
	"registration_date"	TEXT NOT NULL,
	"address"	TEXT NOT NULL,
	"cart"	TEXT NOT NULL
);
INSERT INTO "Customer_wiht_id" VALUES ('600c7545096cd4ef6296c6ba',
                                       'Ben',
                                       'Kingsley',
                                       'bking@doublt.com',
                                       '2021-01-01 07:42:00',
                                       '2016-04-29 07:42:00',
                                       '{''country'': ''USA'', ''city'': ''New York'', ''street'': ''4 Crossing Road'', ''zip'': 77476}',
                                       '[ObjectId(''5fe6fc8ba789e6e217ef872f''), ObjectId(''5fe6fc8ba789e6e217ef872f'')]');
INSERT INTO "TaskReview" VALUES (905,'DFP','Die Update Methode bekommt die ID des Dokuments das geupdatet wird und den Operator $set welcher das jeweilige Feld updatet. Das Feld cart ist ein Array.','SELECT * FROM Customer_wiht_id;',
                                 'customer_col.update_one(
    { "_id": ObjectId("600c7545096cd4ef6296c6ba")  },
    { "$set": { "cart": [ObjectId("5fe6fc8ba789e6e217ef872f"),ObjectId("5fe6fc8ba789e6e217ef872f")] } },
);
');


DROP TABLE IF EXISTS "Maria_products";
CREATE TABLE IF NOT EXISTS "Maria_products" (
	"_id" TEXT NOT NULL UNIQUE,
	"IBAN" TEXT NOT NULL,
	"costs"	TEXT,
	"credit_card"	TEXT NOT NULL,
	"customer"	TEXT NOT NULL,
	"payed"	TEXT NOT NULL,
	"purchased"	TEXT NOT NULL
);
INSERT INTO "Maria_products" VALUES ('TSE-184-4cB-FcF45-ACE',
                                       'MU90 CVRW 4031 7723 2292 9086 263O YZ',
                                       '30.45',
                                       'None',
                                       '600c7584096cd4ef6296c6cf',
                                       'False',
                                       '[ObjectId(''5fe6fc8ba789e6e217ef8715''), ObjectId(''5fe6fc8ba789e6e217ef8716'')]');
INSERT INTO "TaskReview" VALUES (906,'DFP','Erstellen Sie ein neues Dokument welches alle Informationen enthält. Die Ids für die Produkte können Sie aus den vorherigen Aufgaben entnehmen. Den Preis können Sie selbst zusammenrechnen und manuell als Integer einfügen.','SELECT * FROM Maria_products;',
                                 'trans_col = store_db["Transaction"]

new_doc = {
 ''IBAN'': ''MU90 CVRW 4031 7723 2292 9086 263O YZ'',
 ''_id'': ''TSE-184-4cB-FcF45-ACE'',
 ''costs'': 30.45,
 ''credit_card'': None,
 ''customer'': ObjectId(''600c7584096cd4ef6296c6cf''),
 ''payed'': False,
 ''purchased'': [ObjectId(''5fe6fc8ba789e6e217ef8715''),
               ObjectId(''5fe6fc8ba789e6e217ef8716'')]
}

trans_col.insert_one(new_doc)
');

DROP TABLE IF EXISTS "Customer_products";
CREATE TABLE IF NOT EXISTS "Customer_products" (
	"_id" TEXT NOT NULL UNIQUE,
	"IBAN" TEXT NOT NULL,
	"costs"	TEXT,
	"credit_card"	TEXT NOT NULL,
	"customer"	TEXT NOT NULL,
	"payed"	TEXT NOT NULL,
	"purchased"	TEXT NOT NULL
);

INSERT INTO "Customer_products" VALUES ('TSX-994-4cB-AcA3C-FF3',
                                       'DA55 HJGZ 4032 8921 3391 9090 0000 A3',
                                       '10.02',
                                       '4152 9912 3456 7890',
                                       '5fe60bb5fc13ae64ea000373',
                                       'False',
                                       '[ObjectId(''5fe6fc8ba789e6e217ef872f''), ObjectId(''5fe6fc8ba789e6e217ef872f'')]');

INSERT INTO "TaskReview" VALUES (907,'DFP','Erstellen Sie ein neues Dokument welches alle Informationen enthält. Die Ids für die Produkte können Sie aus den vorherigen Aufgaben entnehmen. Den Preis können Sie selbst zusammenrechnen und manuell als Integer einfügen.','SELECT * FROM Customer_products;',
                                 'new_doc = {
 ''IBAN'': ''DA55 HJGZ 4032 8921 3391 9090 0000 A3'',
 ''_id'': ''TSX-994-4cB-AcA3C-FF3'',
 ''costs'': 10.02,
 ''credit_card'': ''4152 9912 3456 7890'',
 ''customer'': ObjectId(''5fe60bb5fc13ae64ea000373''),
 ''payed'': False,
 ''purchased'': [ObjectId(''5fe6fc8ba789e6e217ef872f''),
               ObjectId(''5fe6fc8ba789e6e217ef872f'')]}

trans_col.insert_one(new_doc)
');

DROP TABLE IF EXISTS "repair_price";
CREATE TABLE IF NOT EXISTS "repair_price" (
	"_id" TEXT NOT NULL UNIQUE,
	"costs"	TEXT NOT NULL
);

INSERT INTO "repair_price" VALUES ('T1yD-652-hJE-Pd2-048-PxH',
                                       '21.740000000000002');

INSERT INTO "repair_price" VALUES ('T1zZ-795-n9S-JEO-345-kW4',
                                   '7.39');

INSERT INTO "repair_price" VALUES ('T3U6-324-gxl-1og-332-p1t',
                                       '46.0');

INSERT INTO "TaskReview" VALUES (908,'DFP',' Sie können die Anfrage für die Überprüfung mit dem $in Operator durchführen. Den Preis für alle Transaktionen zu berechnen können Sie mit der Aggregation Pipeline oder der Python Syntax durchführen. Sie brauchen dazu die Grocery, Customer und Transaction Collection.','SELECT * FROM repair_price;',
                                 'customer_col = store_db["Customer"]
result = customer_col.find()

list_of_products = []
for doc in result:
    query = doc["_id"]
    print(query)
    list_of_products = doc["cart"].copy()

    grocery_col = store_db["Grocery"]
    cursor = grocery_col.find({"_id":{"$in":list_of_products}})

    total = 0
    for doc in cursor:
        new_doc = doc["price"].replace("€","")
        print(new_doc)
        total += float(new_doc)

    print(total)
    trans_col = store_db["Transaction"]
    trans_col.update_one({"customer":ObjectId(query)},{"$set":{"costs":total}})
' ||
                                 '' ||
                                 '' ||
                                 '
transaction_col = store_db["Transaction"]
grocery_col = store_db["Grocery"]
pipeline = [
    {"$lookup": { "from":"Grocery", "localField":"purchased", "foreignField":"_id","as": "customer_cart"}},
    {"$unwind": "$customer_cart"},
    {"$addFields": {"trim_price" : {"$trim": {"input": "$customer_cart.price", "chars": "€"}}}},
    {"$addFields": {"double_price" : {"$convert": {"input": "$trim_price", "to": "double"}}}},
    {"$group": {"_id": "$_id", "new_price": {"$sum": "$double_price"}}},
    {"$out":"my_costs"}
]
transaction_col.aggregate(pipeline)' ||
                                 '' ||
                                 '' ||
                                 '' ||
                                 '
df = pd.DataFrame(trans_col.find({"_id": {"$in":["T1yD-652-hJE-Pd2-048-PxH","T1zZ-795-n9S-JEO-345-kW4","T3U6-324-gxl-1og-332-p1t"]}}))

');

COMMIT;