import { consult } from "../database/conexao.js";

class Reacao_PublicacaoRepository {
  create(reacao_publicacao) {
    const sql = `INSERT INTO reacao_publicacao SET ?`;
    return consult(sql, reacao_publicacao, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM reacao_publicacao`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM reacao_publicacao WHERE idReacaoPublicacao=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(reacao_publicacao, id) {
    const sql = `UPDATE reacao_publicacao SET ? WHERE idReacaoPublicacao=?;`;
    return consult(sql, [reacao_publicacao, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM reacao_publicacao WHERE idReacaoPublicacao=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new Reacao_PublicacaoRepository();
