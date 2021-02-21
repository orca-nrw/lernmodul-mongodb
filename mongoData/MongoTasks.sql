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
INSERT INTO "TaskReview" VALUES (22,'SC','TIPP','2',json('{"1": "In einer Textdatei,In einer Tabelle mit Spalten und Zeilen", "2": "In Dokumenten mit Key/Value Paaren"}'));
INSERT INTO "TaskReview" VALUES (23,'SC','TIPP','2',json('{"1": "JSON", "2": "BSON", "3":  "CSV", "4":  "XML", "5":  "DType"}'));
INSERT INTO "TaskReview" VALUES (24,'SC','Embedded Document sind Dokumente welche als Objekt innerhalb eines anderen Dokumentes abgespeichert werden','1',
                                 json('{"1": "{info:{price:123}}", "2": "{info:[price:123]}", "3": "{info:123}"}'));

INSERT INTO "TaskReview" VALUES (31,'SC','Siehe nochmal beim Anlegen eines neuen Dokumentes nach.','3',
                                json('{"1": "Sofern kein eigener Primärschlüssel definiert wird muss die ObjectId immer angegeben werden",' ||
                                     ' "2": "Die MongoDB Identifiziert anhand aller Key/Value Paare im Dokument",' ||
                                     ' "3": "Die ObjectId wird automatisch von der MongoDB generiert",' ||
                                     ' "4": "Sofern kein eigener Primärschlüssel definiert wird",' ||
                                     ' "5": "Weil die MongoDB keine Primärschlüssel besitzt und Dokumente redundant vorkommen können"}'));
INSERT INTO "TaskReview" VALUES (32,'SC','Siehe nochmal beim Filtern von Daten nach.',
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

INSERT INTO "TaskReview" VALUES (51,'MC','',json_array('1', '3','5','6'),
                                        json('{"1": "$eq",' ||
                                       ' "2": "or",' ||
                                       ' "3": "$or",' ||
                                       ' "4": "%or",' ||
                                       ' "5": "$and",' ||
                                       ' "6": "$set",' ||
                                       ' "7": "set",' ||
                                       ' "8": "equals"}' ));

INSERT INTO "TaskReview" VALUES (71,'MC','Die Antwort steht oben im Einleitungstext für das Map-Reduce Verfahren.',json_array('1', '2','4'),
                                 json('{"1": "Werten werden einem Schlüssel zugeordnet.", ' ||
                                        '"2": "Werte werden mit anderen Schlüsseln zugeordnet",' ||
                                       ' "3":  "Die angegebenen Schlüssel werden gezählt und aufgelistet",' ||
                                       ' "4":  "Alle Dokumente in der Kollektion mit dem gleichen Schlüssel und dem dazugehörigen Wert werden zusammengefasst",' ||
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
                                      ' "3": "Das Map-Recue Verfahren kann durch die verwendung von JavaScript umfangreichere Queries erstellen"}'));

INSERT INTO "TaskReview" VALUES (81,'SC','Als Hilfe können Sie nochmal im Kapitel 2.2 nachschauen.','2',
                                 json('{"1": "One-to-One with Document References",' ||
                                      ' "2": "One-to-Many with Document References",' ||
                                      ' "3": "Many-to-Many with Embedded Documents"}'));

INSERT INTO "TaskReview" VALUES (82,'SC','Dies kann aus der Chunks Kollektion ausgelesen werden. Dieser Schritt wurde in der vorherigen Erklärung bereits einmal durchgeführt.','4',
                                 json('{"1": "Eine Id wird für jeden einzelnen Chunk neu erstellt und hat deshalb immer einen unterschiedlichen Schlüssel",' ||
                                      ' "2": "Die Id welche auf die einzelnen Chunks zeigt ist die ObjectID",' ||
                                      ' "3": "Die Id kann frei benannt und in die Metadaten eingefügt werden",' ||
                                      ' "4": "Die Id welche auf die einzelnen Chunks zeigt ist die files_id"}'));

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

INSERT INTO "StockExists" VALUES ('5fe6fc8ba789e6e217ef8710','Scallops - U - 10','€18.70','True','72','46');
INSERT INTO "StockExists" VALUES ('5fe6fc8ba789e6e217ef8712','Beer - Camerons Cream Ale','€20.19','True','25','60');
INSERT INTO "StockExists" VALUES ('5fe6fc8ba789e6e217ef871b','Blouse / Shirt / Sweater','€2.92','True','68','83');

DROP TABLE IF EXISTS "VorratProdukt";
CREATE TABLE IF NOT EXISTS "VorratProdukt" (
	"_id" TEXT NOT NULL UNIQUE,
	"product" TEXT NOT NULL,
	"price"	TEXT,
	"in_stock"	TEXT NOT NULL,
	"sold"	TEXT NOT NULL,
	"stock" TEXT NOT NULL
);
INSERT INTO "TaskReview" VALUES (503,'DFP','Sie benötigen hierführ $and, $gte/gt, $lte/lt. Der $and Operator erhällt einen Array als input.','SELECT * FROM VorratProdukt;',
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
INSERT INTO "TaskReview" VALUES (601,'DFP','Dabei kann der $gt Operator in Kombination mit der Match Pipeline verwendet werden.','SELECT * FROM DoubleProduct;','pipeline = [
    {"$match" : {"product":"Cocoa Powder - Natural"}},
    {"$match" : {"sold": {"$gt" : 50}}}
]');
INSERT INTO "DoubleProduct" VALUES ('5fe6fc8ba789e6e217ef87ee','Cocoa Powder - Natural','€20.22','False','56');

DROP TABLE IF EXISTS "CountGains";
CREATE TABLE IF NOT EXISTS "CountGains" (
	"_id" TEXT NOT NULL UNIQUE,
	"count" TEXT NOT NULL
);
INSERT INTO "TaskReview" VALUES (603,'DFP','Eine Stage für die Gruppierung kann mit einem $sum Operator kombiniert werden. Dadurch kann "$multiply": [ "$price", "$sold" ] implementiert werden. Der $out Operator speichert die Ergebnisse in einer neuen Collection ab. Verwenden Sie diesen als letztes in der Pipeline. ','SELECT * FROM CountGains;','pipeline = [
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
INSERT INTO "TaskReview" VALUES (602,'DFP','Um das Zählen eines Wertes durchzuführen kann eine Gruppierung in Kombination mit dem gezählten Feld und einem neu angelegten Feld erstellt werden. Dies kann Beispielsweise so aussehen: {"_id": "$count_field","count": { "$sum": 1 }','SELECT * FROM CountCity;','Irgendeine Lösung');
INSERT INTO "CountCity" VALUES ('Stockholm','3');

DROP TABLE IF EXISTS "MoreThan25";
CREATE TABLE IF NOT EXISTS "MoreThan25" (
	"_id" TEXT NOT NULL UNIQUE,
	"count" TEXT NOT NULL
);
INSERT INTO "TaskReview" VALUES (604,'DFP','Um die gekauften Produkte zählen zu können muss in jedem Dokument der Array $cart aufgelöst werden um an die einzelnen Id zu gelangen. Danach kann eine Gruppierung mit einem Feld für das Zählen festgelegt werden und auf diesem Feld der $gt Operator angewendet werden.','SELECT * FROM MoreThan25;','Irgendeine Lösung');
INSERT INTO "MoreThan25" VALUES ('None','41');

DROP TABLE IF EXISTS "GridFSchecksum";
CREATE TABLE IF NOT EXISTS "GridFSchecksum" (
	"md5" TEXT NOT NULL UNIQUE
);
INSERT INTO "GridFSchecksum" VALUES ('6b5a116597de1fe10e278c4e6c37ec59');
INSERT INTO "TaskReview" VALUES (801,'DFP','Die Query benötigt die richtige File ID. Der Key für die Prüfsumme steht im Dokument selbst.','SELECT * FROM GridFSchecksum;','query = {"_id":"p#175"}
for files in files_col.find(query):
    pprint(files.get("md5"))');

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
	"purchased"	TEXT NOT NULL,
	"timestamp"	TEXT NOT NULL
);
INSERT INTO "Maria_products" VALUES ('TSE-184-4cB-FcF45-ACE',
                                       'MU90 CVRW 4031 7723 2292 9086 263O YZ',
                                       '29.18',
                                       'None',
                                       '5fe60bb5fc13ae64ea000373',
                                       'False',
                                       '[ObjectId(''5fe6fc8ba789e6e217ef8ac5''), ObjectId(''5fe6fc8ba789e6e217ef89df'')]',
                                       '2020-12-15 06:11:35');
INSERT INTO "TaskReview" VALUES (906,'DFP','Erstellen Sie ein neues Dokument welches alle Informationen enthält. Die Ids für die Produkte können Sie aus den vorherigen Aufgaben entnehmen. Den Preis können Sie selbst zusammenrechnen und manuell als Integer einfügen.','SELECT * FROM Maria_products;',
                                 'new_doc = {
 ''IBAN'': ''MU90 CVRW 4031 7723 2292 9086 263O YZ'',
 ''_id'': ''TSE-184-4cB-FcF45-ACE'',
 ''costs'': 29.18,
 ''credit_card'': None,
 ''customer'': ObjectId(''5fe60bb5fc13ae64ea000373''),
 ''payed'': False,
 ''purchased'': [ObjectId(''5fe6fc8ba789e6e217ef8ac5''),
               ObjectId(''5fe6fc8ba789e6e217ef89df'')],
 ''timestamp'': datetime.datetime(2020, 12, 15, 6, 11, 35)}

trans_col.insert_one(new_doc)
');


COMMIT;