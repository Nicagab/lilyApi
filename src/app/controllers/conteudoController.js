import ConteudoRepository from "../repositories/conteudoRepository.js";

class ConteudoController {
  async index(req, res) {
    try {
      const row = await ConteudoRepository.findAll();
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }

  async show(req, res) {
    try {
      const id = req.params.id;
      const conteudoInfo = await ConteudoRepository.findByID(id);
      const conteudoTopics = await ConteudoRepository.findTopics(id)
      const imgs = await ConteudoRepository.findImg(id);
      const conteudo = {
        ...conteudoInfo,
        topicos: conteudoTopics,
        imagens: imgs
      };
      res.status(200).json(conteudo);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }

  async showTipo(req, res) {
    try {
      const type = req.params.type;
      const row = await ConteudoRepository.findByType(type);
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }

  async store(req, res) {
    try {
      const conteudo = req.body;
      const row = await ConteudoRepository.create(conteudo);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }

  async update(req, res) {
    try {
      const id = req.params.id;
      const conteudo = req.body;
      const row = await ConteudoRepository.update(conteudo, id);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }

  async delete(req, res) {
    try {
      const id = req.params.id;
      const row = await ConteudoRepository.delete(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
}

export default new ConteudoController();
