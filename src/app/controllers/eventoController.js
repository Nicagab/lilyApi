import EventoRepository from "../repositories/eventoRepository.js";

class EventoController {
  async index(req, res) {
    try {
      const row = await EventoRepository.findAll();
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async show(req, res) {
    try {
      const id = req.params.id;
      const row = await EventoRepository.findByID(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async store(req, res) {
    try {
      const evento = req.body;
      const row = await EventoRepository.create(evento);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async update(req, res) {
    try {
      const id = req.params.id;
      const evento = req.body;
      const row = await EventoRepository.update(evento, id);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async delete(req, res) {
    try {
      const id = req.params.id;
      const row = await EventoRepository.delete(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
}

export default new EventoController();
