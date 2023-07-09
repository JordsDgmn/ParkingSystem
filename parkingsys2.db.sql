BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Space" (
	"Space_ID"	INTEGER,
	"Space_type"	TEXT,
	"Initial_ParkingCharge"	REAL,
	"Extended_ParkingCharge"	REAL,
	"Extended_ParkingTime"	INTEGER,
	PRIMARY KEY("Space_ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Ticket" (
	"Ticket_ID"	INTEGER,
	"Space_ID"	INTEGER,
	PRIMARY KEY("Ticket_ID" AUTOINCREMENT),
	FOREIGN KEY("Space_ID") REFERENCES "Space"("Space_ID")
);
CREATE TABLE IF NOT EXISTS "Vehicle" (
	"Vehicle_ID"	TEXT,
	"Vehicle_Type"	TEXT,
	PRIMARY KEY("Vehicle_ID")
);
CREATE TABLE IF NOT EXISTS "Pays" (
	"Ticket_ID"	INTEGER,
	"Vehicle_ID"	TEXT,
	"Amount_Paid"	REAL,
	"Payment_Status"	TEXT,
	"Exit_Time"	TEXT,
	PRIMARY KEY("Ticket_ID","Vehicle_ID"),
	FOREIGN KEY("Ticket_ID") REFERENCES "Ticket"("Ticket_ID"),
	FOREIGN KEY("Vehicle_ID") REFERENCES "Vehicle"("Vehicle_ID")
);
CREATE TABLE IF NOT EXISTS "Avails" (
	"Ticket_ID"	INTEGER,
	"Vehicle_ID"	TEXT,
	"Entry_Time"	TEXT,
	PRIMARY KEY("Ticket_ID","Vehicle_ID"),
	FOREIGN KEY("Ticket_ID") REFERENCES "Ticket"("Ticket_ID"),
	FOREIGN KEY("Vehicle_ID") REFERENCES "Vehicle"("Vehicle_ID")
);
INSERT INTO "Space" VALUES (2,'2 Wheeler',50.0,2150.0,43);
INSERT INTO "Space" VALUES (3,'2 Wheeler',50.0,2150.0,43);
INSERT INTO "Space" VALUES (4,'4 Wheeler',100.0,2150.0,43);
INSERT INTO "Space" VALUES (5,'4 Wheeler',100.0,2150.0,43);
INSERT INTO "Space" VALUES (6,'4 Wheeler',100.0,2150.0,43);
INSERT INTO "Space" VALUES (19,'2 Wheeler',50.0,0.0,0);
INSERT INTO "Space" VALUES (20,'4 Wheeler',100.0,0.0,0);
COMMIT;
