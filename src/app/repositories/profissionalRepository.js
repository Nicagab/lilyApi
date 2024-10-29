import { consult } from "../database/conexao.js";

class ProfissionalRepository {
  create(profissional) {
    const sql = `INSERT INTO profissional SET ?`;
    return consult(sql, profissional, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM profissional as A INNER JOIN usuario as B on a.idUsuario = b.idUsuario`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM profissional WHERE idProfissional=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(profissional, id) {
    const sql = `UPDATE profissional SET ? WHERE idProfissional=?;`;
    return consult(sql, [profissional, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM profissional WHERE idProfissional=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new ProfissionalRepository();
