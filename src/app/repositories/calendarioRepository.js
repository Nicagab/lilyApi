import { consult } from "../database/conexao.js";

class CalendarioRepository {
  create(calendario) {
    const sql = `INSERT INTO calendario SET ?;`;
    return consult(sql, calendario, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM calendario;`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findDays(id) {
    const sql = `SELECT * FROM dia WHERE idCalendario=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM calendario WHERE idCalendario=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(calendario, id) {
    const sql = `UPDATE calendario SET ? WHERE idCalendario=?;`;
    return consult(sql, [calendario, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM calendario WHERE idCalendario=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new CalendarioRepository();
