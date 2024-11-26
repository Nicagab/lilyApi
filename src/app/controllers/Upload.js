import multer from 'multer';
import path from 'path';
import fs from 'fs';

// Caminho da pasta para armazenar as imagens
const uploadDir = path.resolve('public/imgs');

// Garante que a pasta "public/imgs" exista
if (!fs.existsSync(uploadDir)) {
  fs.mkdirSync(uploadDir, { recursive: true });
}

// Configuração do multer
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, uploadDir); // Define o destino dos arquivos
  },
  filename: function (req, file, cb) {
    cb(null, `${Date.now()}-${file.originalname}`); // Nome único para cada arquivo
  },
});

const upload = multer({ storage });

export default upload;