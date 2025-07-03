Create Database AnbarDari

CREATE TABLE Nemaandegi (
    Id_nemaandegi INT PRIMARY KEY,
    Nam_nemaandegi NVARCHAR(100) NOT NULL,
    Address NVARCHAR(255),
    Etelaat_tamas NVARCHAR(255)
);

CREATE TABLE Mahsool (
    Id_mahsool INT PRIMARY KEY,
    Nam_mahsool NVARCHAR(100) NOT NULL,
    Gheymat_forosh DECIMAL(18, 2),
    Model_kala NVARCHAR(50),
    Serial NVARCHAR(50),
    Rang NVARCHAR(50),
    Tozihat NVARCHAR(MAX)
);

CREATE TABLE Sefareshat (
    Id_sefaresh INT PRIMARY KEY,
    Id_nemaandegi INT,
    Tarikh_sefaresh DATE,
    Id_mahsool INT,
    Tedad INT,
    Gheymat_kol DECIMAL(18, 2),
    FOREIGN KEY (Id_nemaandegi) REFERENCES Nemaandegi(Id_nemaandegi),
    FOREIGN KEY (Id_mahsool) REFERENCES Mahsool(Id_mahsool)
);

CREATE TABLE Sefareshat_Takmil_Nashodeh (
    Id_sefaresh_takmil_nashodeh INT PRIMARY KEY,
    Id_sefaresh INT,
    Tedad_baghi_mandeh INT,
    FOREIGN KEY (Id_sefaresh) REFERENCES Sefareshat(Id_sefaresh)
);

CREATE TABLE Anbar (
    Id_anbar INT PRIMARY KEY,
    Nam_anbar NVARCHAR(100),
    Address NVARCHAR(255),
    Zarfiyat INT
);

CREATE TABLE Mojoodi_kala (
    Id_mojoodi_kala INT PRIMARY KEY,
    Id_mahsool INT,
    Id_anbar INT,
    Mojoodi INT,
    FOREIGN KEY (Id_mahsool) REFERENCES Mahsool(Id_mahsool),
    FOREIGN KEY (Id_anbar) REFERENCES Anbar(Id_anbar)
);

CREATE TABLE Marjooi (
    Id_marjooi INT PRIMARY KEY,
    Id_mahsool INT,
    Id_nemaandegi INT,
    Tedad INT,
    Tarikh_ersal DATE,
    Tarikh_marjooi DATE,
    Elat NVARCHAR(MAX),
    FOREIGN KEY (Id_mahsool) REFERENCES Mahsool(Id_mahsool),
    FOREIGN KEY (Id_nemaandegi) REFERENCES Nemaandegi(Id_nemaandegi)
);

CREATE TABLE Anbardar (
    Id_anbardar INT PRIMARY KEY,
    Id_anbar INT,
    Nam_anbardar NVARCHAR(100),
    Shomare_tamas NVARCHAR(15),
    Hoghoogh DECIMAL(18, 2),
    Tashkhis_kari NVARCHAR(255),
    FOREIGN KEY (Id_anbar) REFERENCES Anbar(Id_anbar)
);

select * from anbardar
select * from marjooi
select * from mojoodi_kala
select * from anbar
select * from mahsool
select * from Nemaandegi 
select * from Sefareshat_Takmil_Nashodeh
select * from sefareshat