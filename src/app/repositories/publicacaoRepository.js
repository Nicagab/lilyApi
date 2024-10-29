import { consult } from "../database/conexao.js";

class PublicacaoRepository {
  create(publicacao) {
    const sql = `INSERT INTO publicacao SET ?`;
    return consult(sql, publicacao, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM publicacao`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM publicacao WHERE idPublicacao=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findComents(id) {
    const sql = `SELECT * FROM comentario WHERE idPublicacao=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findLikes(id){
    const sql = `SELECT nome, c.idUsuario FROM reacao as A INNER JOIN publicacao as B INNER JOIN reacao_publicacao as C on b.idPublicacao = c.idPublicacao AND a.idReacao = c.idReacao`
    return consult(sql, id, "Não foi possível encontrar")
  }
  findImg(id) {
    const sql = `SELECT * FROM imagem WHERE idPublicacao=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findTel(id) {
    const sql = `SELECT * FROM telefone WHERE idPublicacao=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(publicacao, id) {
    const sql = `UPDATE publicacao SET ? WHERE idPublicacao=?;`;
    return consult(sql, [publicacao, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM publicacao WHERE idPublicacao=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new PublicacaoRepository();
