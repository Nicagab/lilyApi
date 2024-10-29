import { consult } from "../database/conexao.js";

class UsuarioRepository {
  create(usuario) {
    const sql = `INSERT INTO usuario SET ?`;
    return consult(sql, usuario, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM usuario`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM usuario WHERE idUsuario=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findByType(type) {
    const sql = `SELECT * FROM usuario WHERE tipo=?;`;
    return consult(sql, type, "Não foi possível encontrar");
  }
  findImg(id) {
    const sql = `SELECT * FROM imagem WHERE idUsuario=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findTel(id) {
    const sql = `SELECT * FROM telefone WHERE idUsuario=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findPublis(id) {
    const sql = `SELECT * FROM publicacao WHERE idUsuario=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findComents(id) {
    const sql = `SELECT * FROM comentario WHERE idUsuario=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findArts(id) {
    const sql = `SELECT * FROM conteudo WHERE idUsuario=? AND tipo='artigo';`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findNots(id) {
    const sql = `SELECT * FROM conteudo WHERE idUsuario=? AND tipo='noticia';`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(usuario, id) {
    const sql = `UPDATE usuario SET ? WHERE idUsuario=?;`;
    return consult(sql, [usuario, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM usuario WHERE idUsuario=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new UsuarioRepository();
