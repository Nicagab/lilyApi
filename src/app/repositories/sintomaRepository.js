import { consult } from "../database/conexao.js";

class SintomaRepository {
  create(sintoma) {
    const sql = `INSERT INTO sintoma SET ?`;
    return consult(sql, sintoma, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM sintoma`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM sintoma WHERE idSintoma=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(sintoma, id) {
    const sql = `UPDATE sintoma SET ? WHERE idSintoma=?;`;
    return consult(sql, [sintoma, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM sintoma WHERE idSintoma=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new SintomaRepository();
