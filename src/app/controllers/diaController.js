import DiaRepository from "../repositories/diaRepository.js";

class DiaController {
  async index(req, res) {
    try {
      const row = await DiaRepository.findAll();
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async show(req, res) {
    try {
      const id = req.params.id;
      const diaInfo = await DiaRepository.findByID(id);
      const sintomas = await DiaRepository.findSintomas(id);
      const eventos = await DiaRepository.findEventos(id);
      const dia = {
        ...diaInfo,
        sintomas: sintomas,
        eventos: eventos
      }
      res.status(200).json(dia);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async store(req, res) {
    try {
      const dia = req.body;
      const row = await DiaRepository.create(dia);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async update(req, res) {
    try {
      const id = req.params.id;
      const dia = req.body;
      const row = await DiaRepository.update(dia, id);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async delete(req, res) {
    try {
      const id = req.params.id;
      const row = await DiaRepository.delete(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
}

export default new DiaController();
