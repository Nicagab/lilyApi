import { consult } from "../database/conexao.js";

class Dia_EventoRepository {
  create(dia_evento) {
    const sql = `INSERT INTO dia_evento SET ?`;
    return consult(sql, dia_evento, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM _evento`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM _evento WHERE idDiaEvento=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(dia_evento, id) {
    const sql = `UPDATE dia_evento SET ? WHERE idDiaEvento=?;`;
    return consult(sql, [dia_evento, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM dia_evento WHERE idDiaEvento=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new Dia_EventoRepository();
