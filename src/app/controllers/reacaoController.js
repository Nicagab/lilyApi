import ReacaoRepository from "../repositories/reacaoRepository.js";

class ReacaoController {
  async index(req, res) {
    try {
      const row = await ReacaoRepository.findAll();
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async show(req, res) {
    try {
      const id = req.params.id;
      const row = await ReacaoRepository.findByID(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async store(req, res) {
    try {
      const reacao = req.body;
      const row = await ReacaoRepository.create(reacao);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async update(req, res) {
    try {
      const id = req.params.id;
      const reacao = req.body;
      const row = await ReacaoRepository.update(reacao, id);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async delete(req, res) {
    try {
      const id = req.params.id;
      const row = await ReacaoRepository.delete(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
}

export default new ReacaoController();
