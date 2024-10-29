import Reacao_PublicacaoRepository from "../repositories/reacao_publicacaoRepository.js";

class Reacao_PublicacaoController {
  async index(req, res) {
    try {
      const row = await Reacao_PublicacaoRepository.findAll();
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async show(req, res) {
    try {
      const id = req.params.id;
      const row = await Reacao_PublicacaoRepository.findByID(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async store(req, res) {
    try {
      const reacao_publicacao = req.body;
      const row = await Reacao_PublicacaoRepository.create(reacao_publicacao);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async update(req, res) {
    try {
      const id = req.params.id;
      const reacao_publicacao = req.body;
      const row = await Reacao_PublicacaoRepository.update(reacao_publicacao, id);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async delete(req, res) {
    try {
      const id = req.params.id;
      const row = await Reacao_PublicacaoRepository.delete(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
}

export default new Reacao_PublicacaoController();
