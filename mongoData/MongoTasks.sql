BEGIN TRANSACTION;
DROP TABLE IF EXISTS "TaskReview";
CREATE TABLE IF NOT EXISTS "TaskReview" (
	"taskID"	INTEGER NOT NULL UNIQUE,
	"taskType"	TEXT NOT NULL,
	"tipp"	TEXT,
	"solutionForReview"	TEXT NOT NULL,
	"additionalInformation"	TEXT NOT NULL
);
INSERT INTO "TaskReview" VALUES (1,'SC','Schau nochmal unter Punkt 2.1 nach.','ObjectId','Number,Int,Varchar,String,ObjectId,ID');
INSERT INTO "TaskReview" VALUES (2,'SC','TIPP','In Dokumenten mit Key/Value Paaren','In einer Textdatei,In einer Tabelle mit Spalten und Zeilen,In Dokumenten mit Key/Value Paaren');
INSERT INTO "TaskReview" VALUES (3,'SC','TIPP','BSON','JSON,BSON,CSV,XML,DType');
INSERT INTO "TaskReview" VALUES (4,'SC','Embedded Document sind Dokumente welche als Objekt innerhalb eines anderen Dokumentes abgespeichert werden','{"info":{"price":"123"}}','{"info":{"price":"123"}},{"info":["price":"123"]},{"info":"123"');
INSERT INTO "TaskReview" VALUES (5,'SC','Siehe nochmal beim Filtern von Daten nach.','Der Cursor ist ein Pointer und zeigt nur einmal auf die Daten','Der Cursor zeigt bei jeder Ausführung die angeforderten Daten an,Der Cursor ist ein Pointer und zeigt nur einmal auf die Daten');
INSERT INTO "TaskReview" VALUES (6,'SC','Siehe nochmal beim Anlegen eines neuen Dokumentes nach.','Die ObjectId wird automatisch von der MongoDB generiert, sofern kein eigener Primärschlüssel definiert wird','Die MongoDB Identifiziert anhand aller Key/Value Paare im Dokument,Die ObjectId wird automatisch von der MongoDB generiert, sofern kein eigener Primärschlüssel definiert wird, Weil die MongoDB keine Primärschlüssel besitzt und Dokumente redundant vorkommen können');
INSERT INTO "TaskReview" VALUES (7,'SC','','Die MongoDB ist ein strukturlose Datenbank und kann somit in einer Collection unterschiedliche Dokumente enthalten','In der Collection "customer" wurde noch keine Strukur implementiert, Die MongoDB löscht eingefügte Dokumente die nicht der Struktur entsprechen ,Die MongoDB ist ein strukturlose Datenbank und kann somit in einer Collection unterschiedliche Dokumente enthalten');
INSERT INTO "TaskReview" VALUES (8,'SC','','Die BSON Datentypen werden als Objekte gespeichert','Die BSON Datentypen werden als Objekte gespeichert,Es wird alles korrekt angezeigt, Einen Fehler beim Export der Daten');
INSERT INTO "TaskReview" VALUES (9,'SC','','Ja aber es umständlicher und die Daten können nicht live betrachtet werden','Nein denn die MongoDB kann keine Daten als CSV speichern ,Ja aber es umständlicher und die Daten können nicht live betrachtet werden');
INSERT INTO "TaskReview" VALUES (10,'SC','','1001','463,1001,5476,8469');
INSERT INTO "TaskReview" VALUES (11,'SC','','1000','476,1000,5476,1');

DROP TABLE IF EXISTS "BrynLegat";
CREATE TABLE IF NOT EXISTS "BrynLegat" (
	"_id" TEXT NOT NULL UNIQUE,
	"product" TEXT NOT NULL,
	"price"	TEXT,
	"in_stock"	TEXT NOT NULL,
	"sold"	TEXT NOT NULL,
	"stock" TEXT NOT NULL
);
INSERT INTO "TaskReview" VALUES (101,'DFP','TIPP','SELECT * FROM BrynLegat;','Irgendeine Lösung');
INSERT INTO "BrynLegat" VALUES (
'5fe6fc8ba789e6e217ef8764',
'Bread - Triangle White',
'6,82',
'True',
'12',
'1.0');
INSERT INTO "BrynLegat" VALUES (
'5fe6fc8ba789e6e217ef8920',
'Mountain Dew',
'16,25',
'True',
'47',
'11.0');
INSERT INTO "BrynLegat" VALUES (
'5fe6fc8ba789e6e217ef8a85',
'Onions - Spanish',
'9,42',
'False',
'28',
'nan');
INSERT INTO "BrynLegat" VALUES (
'5fe6fc8ba789e6e217ef8ae0',
'Hand Towel',
'5,46',
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
INSERT INTO "TaskReview" VALUES (102,'DFP','Sie können dafür den $exists Operator verwenden','SELECT * FROM StockExists;','Irgendeine Lösung');
INSERT INTO "StockExists" VALUES ('5fe6fc8ba789e6e217ef870c','Energy Drink','10,52','True','75','25');
INSERT INTO "StockExists" VALUES ('5fe6fc8ba789e6e217ef870f','Pastry - Plain Baked Croissant','4,39','True','95','76');
INSERT INTO "StockExists" VALUES ('5fe6fc8ba789e6e217ef8710','Scallops - U - 10','18,70','True','72','46');

DROP TABLE IF EXISTS "VorratProdukt";
CREATE TABLE IF NOT EXISTS "VorratProdukt" (
	"_id" TEXT NOT NULL UNIQUE,
	"product" TEXT NOT NULL,
	"price"	TEXT,
	"in_stock"	TEXT NOT NULL,
	"sold"	TEXT NOT NULL,
	"stock" TEXT NOT NULL
);
INSERT INTO "TaskReview" VALUES (103,'DFP','Sie benötigen hierführ $and, $gte/gt, $lte/lt. Der $and Operator erhällt einen Array als input.','SELECT * FROM VorratProdukt;','Irgendeine Lösung');
INSERT INTO "VorratProdukt" VALUES ('5fe6fc8ba789e6e217ef899a','Wine - White Cab Sauv.on','18,17','True','94','2');

COMMIT;