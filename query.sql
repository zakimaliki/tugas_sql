-- memebuat database
CREATE DATABASE kampus;

-- menghapus database
DROP DATABASE kampus;

-- membuat tabel
CREATE TABLE dosen(
	kode_dosen INT PRIMARY KEY,
	nama VARCHAR(255),
	umur INT,
	alamat TEXT
);

CREATE TABLE jurusan(
	kode_jurusan INT PRIMARY KEY,
	nama_jurusan VARCHAR(255),
	dosen_kode INT,
	FOREIGN KEY (dosen_kode) REFERENCES dosen(kode_dosen)
);


-- memunculkan semua data
SELECT * FROM dosen;

-- memunculkan data spesifik
SELECT * FROM dosen WHERE kode_dosen = 2;

-- membuat data
INSERT INTO dosen(kode_dosen,nama,umur,alamat) 
VALUES (1,'Joko',35,'jalan garuda no 20');

INSERT INTO dosen(kode_dosen,nama,umur,alamat) 
VALUES (2,'Sri',37,'jalan garuda no 10'),
(3,'Budi',40,'jalan garuda no 19');

-- mengupdate data
UPDATE dosen SET
nama = 'Budi Santoso',
umur = 43,
alamat = 'jalan cendrawasih no 12'
WHERE kode_dosen = 3;

-- menghapus data
DELETE FROM dosen WHERE kode_dosen = 3;