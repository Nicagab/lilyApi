import Dia_SintomaRepository from "../repositories/dia_sintomaRepository.js";

class Dia_SintomaController {
  async index(req, res) {
    try {
      const row = await Dia_SintomaRepository.findAll();
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async show(req, res) {
    try {
      const id = req.params.id;
      const row = await Dia_SintomaRepository.findByID(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async store(req, res) {
    try {
      const dia_sintoma = req.body;
      const row = await Dia_SintomaRepository.create(dia_sintoma);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async update(req, res) {
    try {
      const id = req.params.id;
      const dia_sintoma = req.body;
      const row = await Dia_SintomaRepository.update(dia_sintoma, id);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async delete(req, res) {
    try {
      const id = req.params.id;
      const row = await Dia_SintomaRepository.delete(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
}

export default new Dia_SintomaController();
