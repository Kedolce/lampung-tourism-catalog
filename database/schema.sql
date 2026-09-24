CREATE TABLE kategori (
    id_kategori SERIAL PRIMARY KEY,
    nama_kategori VARCHAR(50) NOT NULL UNIQUE,
    gambar VARCHAR(150) NOT NULL
);
CREATE TABLE kabupaten (
    id_kabupaten SERIAL PRIMARY KEY,
    nama_kabupaten VARCHAR(50) NOT NULL UNIQUE,
    slug VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE wisata (
    id_wisata SERIAL PRIMARY KEY,

    kategori_id INTEGER NOT NULL,
    kabupaten_id INTEGER NOT NULL,

    nama_wisata VARCHAR(100) NOT NULL,
    deskripsi TEXT NOT NULL,
    alamat TEXT NOT NULL,

    rating NUMERIC(2,1) NOT NULL
        CHECK (rating >= 0 AND rating <= 5),

    gambar VARCHAR(255) NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    slug VARCHAR(120) UNIQUE,

    FOREIGN KEY (kategori_id)
        REFERENCES kategori(id_kategori)
        ON DELETE RESTRICT,

    FOREIGN KEY (kabupaten_id)
        REFERENCES kabupaten(id_kabupaten)
        ON DELETE RESTRICT
);

SELECT * from wisata;