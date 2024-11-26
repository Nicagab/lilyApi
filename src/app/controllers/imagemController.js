import ImagemRepository from "../repositories/imagemRepository.js";
import path from 'path'
import fs from 'fs'

class ImagemController {
  async index(req, res) {
    try {
      const row = await ImagemRepository.findAll();
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async show(req, res) {
    try {
      const id = req.params.id;
      const row = await ImagemRepository.findByID(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async store(req, res) {
    try {
      const { dados, nome, tipo, idConteudo } = req.body;

      // Validações básicas
      if (!dados || !nome || !tipo || !idConteudo) {
        return res.status(400).json({ message: "Dados incompletos: verifique o corpo da requisição." });
      }

      // Decodifica a string base64
      const buffer = Buffer.from(dados, 'base64');

      // Define o diretório para salvar as imagens
      const uploadDir = path.resolve("public", "imgs");
      if (!fs.existsSync(uploadDir)) {
        fs.mkdirSync(uploadDir, { recursive: true });
      }

      // Define o caminho completo do arquivo
      const filePath = path.join(uploadDir, nome);

      // Salva o arquivo no disco
      fs.writeFileSync(filePath, buffer);

      // Adiciona o caminho da imagem aos dados
      const imagem = {
        idConteudo,
        nome,
        tipo,
        caminho: `/imgs/${nome}`, // Caminho público da imagem
      };

      // Salva no banco de dados
      const novaImagem = await ImagemRepository.create(imagem);

      // Retorna sucesso
      res.status(201).json({
        message: "Imagem e dados salvos com sucesso!",
        imagem: novaImagem,
      });
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  }
  async update(req, res) {
    try {
      const id = req.params.id;
      const imagem = req.body;
      const row = await ImagemRepository.update(imagem, id);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async delete(req, res) {
    try {
      const id = req.params.id;
      const row = await ImagemRepository.delete(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
}

export default new ImagemController();
