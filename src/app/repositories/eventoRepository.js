import { consult } from "../database/conexao.js";

class EventoRepository {
  create(evento) {
    const sql = `INSERT INTO evento SET ?`;
    return consult(sql, evento, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM evento`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM evento WHERE idEvento=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(evento, id) {
    const sql = `UPDATE evento SET ? WHERE idEvento=?;`;
    return consult(sql, [evento, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM evento WHERE idEvento=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new EventoRepository();
