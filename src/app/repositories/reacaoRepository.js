import { consult } from "../database/conexao.js";

class ReacaoRepository {
  create(reacao) {
    const sql = `INSERT INTO reacao SET ?`;
    return consult(sql, reacao, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM reacao`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM reacao WHERE idReacao=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(reacao, id) {
    const sql = `UPDATE reacao SET ? WHERE idReacao=?;`;
    return consult(sql, [reacao, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM reacao WHERE idReacao=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new ReacaoRepository();
