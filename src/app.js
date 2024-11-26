import express from "express";
import routes from "./routes.js";
import cors from 'cors'
import path from 'path'

const app = express();

// Habilitar CORS para todos os domínios
app.use(cors({
  origin: '*',  // Ou configure para um domínio específico, por exemplo: 'http://localhost:3000'
  methods: ['GET', 'POST', 'PUT', 'DELETE'], // Permitir os métodos HTTP necessários
  allowedHeaders: ['Content-Type', 'Authorization'], // Permitir cabeçalhos específicos
}));

app.use(express.json({ limit: '50mb' }));
app.use(express.urlencoded({ extended: true }));

// Configuração para servir arquivos estáticos (imagens, CSS, etc.)
const publicDir = path.resolve('public'); // Pasta onde suas imagens são armazenadas
app.use('/public', express.static(publicDir));

app.use(routes);

export default app;