import { consult } from "../database/conexao.js";

class TopicoRepository {
  create(topico) {
    const sql = `INSERT INTO topico SET ?`;
    return consult(sql, topico, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM topico`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM topico WHERE idTopico=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(topico, id) {
    const sql = `UPDATE topico SET ? WHERE idTopico=?;`;
    return consult(sql, [topico, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM topico WHERE idTopico=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new TopicoRepository();
