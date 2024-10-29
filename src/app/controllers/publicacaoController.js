import PublicacaoRepository from "../repositories/publicacaoRepository.js";

class PublicacaoController {
  async index(req, res) {
    try {
      const row = await PublicacaoRepository.findAll();
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async show(req, res) {
    try {
      const id = req.params.id;
      const publishInfo = await PublicacaoRepository.findByID(id);
      const coments = await PublicacaoRepository.findComents(id);
      const reacoes = await PublicacaoRepository.findLikes(id);

      const publicacao = {
        ...publishInfo,
        comentarios: coments,
        reacoes: reacoes,
      }
      res.status(200).json(publicacao);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async showComents(req, res) {
    try {
      const id = req.params.id;
      const row = await PublicacaoRepository.findComents(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async store(req, res) {
    try {
      const publicacao = req.body;
      const row = await PublicacaoRepository.create(publicacao);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async update(req, res) {
    try {
      const id = req.params.id;
      const publicacao = req.body;
      const row = await PublicacaoRepository.update(publicacao, id);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async delete(req, res) {
    try {
      const id = req.params.id;
      const row = await PublicacaoRepository.delete(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
}

export default new PublicacaoController();
