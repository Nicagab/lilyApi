import { consult } from "../database/conexao.js";

class Dia_SintomaRepository {
  create(dia_sintoma) {
    const sql = `INSERT INTO dia_sintoma SET ?`;
    return consult(sql, dia_sintoma, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM dia_sintoma`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM dia_sintoma WHERE idDiaSintoma=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(dia_sintoma, id) {
    const sql = `UPDATE dia_sintoma SET ? WHERE idDiaSintoma=?;`;
    return consult(sql, [dia_sintoma, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM dia_sintoma WHERE idDiaSintoma=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new Dia_SintomaRepository();
