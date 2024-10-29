import ParceiroRepository from "../repositories/parceiroRepository.js";

class ParceiroController {
  async index(req, res) {
    try {
      const row = await ParceiroRepository.findAll();
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }

  async show(req, res) {
    try {
      const id = req.params.id;
      const parceiroInfo = await ParceiroRepository.findByID(id);
      const telefones = await ParceiroRepository.findTel(id);
      const publis = await ParceiroRepository.findPublis(id);
      const coments = await ParceiroRepository.findComents(id);
      const parceiro = {
        ...parceiroInfo,
        telefones: telefones,
        publicacoes: publis,
        comentarios: coments,
      };
      res.status(200).json(parceiro);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }

  async showTipo(req, res) {
    try {
      const type = req.params.type;
      const row = await ParceiroRepository.findByType(type);
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }

  async store(req, res) {
    try {
      const parceiro = req.body;
      const row = await ParceiroRepository.create(parceiro);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }

  async update(req, res) {
    try {
      const id = req.params.id;
      const parceiro = req.body;
      const row = await ParceiroRepository.update(parceiro, id);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }

  async delete(req, res) {
    try {
      const id = req.params.id;
      const row = await ParceiroRepository.delete(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
}

export default new ParceiroController();
