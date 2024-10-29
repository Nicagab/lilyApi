import UsuarioRepository from "../repositories/usuarioRepository.js";

class UsuarioController {
  async index(req, res) {
    try {
      const row = await UsuarioRepository.findAll();
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }

  async show(req, res) {
    try {
      const id = req.params.id;
      const userInfo = await UsuarioRepository.findByID(id);
      const telefones = await UsuarioRepository.findTel(id);
      const imagens = await UsuarioRepository.findImg(id);
      const publis = await UsuarioRepository.findPublis(id);
      const coments = await UsuarioRepository.findComents(id);
      const arts = await UsuarioRepository.findArts(id);
      const nots = await UsuarioRepository.findNots(id);
      const user = {
        ...userInfo,
        telefones: telefones,
        foto: imagens,
        publicacoes: publis,
        comentarios: coments,
        artigos: arts,
        noticias: nots,
      };
      res.status(200).json(user);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }
  async showTipo(req, res) {
    try {
      const type = req.params.type;
      const row = await UsuarioRepository.findByType(type);
      res.status(200).json(row);
    } catch (error) {
      res.status(404).json({ message: error.message });
    }
  }

  async store(req, res) {
    try {
      const usuario = req.body;
      const row = await UsuarioRepository.create(usuario);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async update(req, res) {
    try {
      const id = req.params.id;
      const usuario = req.body;
      const row = await UsuarioRepository.update(usuario, id);
      res.status(201).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
  async delete(req, res) {
    try {
      const id = req.params.id;
      const row = await UsuarioRepository.delete(id);
      res.status(200).json(row);
    } catch (error) {
      res.status(400).json({ message: error.message });
    }
  }
}

export default new UsuarioController();
