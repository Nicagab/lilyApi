import { consult } from "../database/conexao.js";

class TelefoneRepository {
  create(telefone) {
    const sql = `INSERT INTO telefone SET ?`;
    return consult(sql, telefone, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM telefone`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM telefone WHERE idTelefone=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(telefone, id) {
    const sql = `UPDATE telefone SET ? WHERE idTelefone=?;`;
    return consult(sql, [telefone, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM telefone WHERE idTelefone=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new TelefoneRepository();
