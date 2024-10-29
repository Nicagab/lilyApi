import { consult } from "../database/conexao.js";

class ParceiroRepository {
  create(parceiro) {
    const sql = `INSERT INTO parceiro SET ?`;
    return consult(sql, parceiro, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM parceiro`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM parceiro WHERE idParceiro=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findByType(type) {
    const sql = `SELECT * FROM parceiro WHERE tipo=?;`;
    return consult(sql, type, "Não foi possível encontrar");
  }
  findTel(id) {
    const sql = `SELECT * FROM telefone WHERE idParceiro=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findPublis(id) {
    const sql = `SELECT * FROM publicacao WHERE idParceiro=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findComents(id) {
    const sql = `SELECT * FROM comentario WHERE idParceiro=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(parceiro, id) {
    const sql = `UPDATE parceiro SET ? WHERE idParceiro=?;`;
    return consult(sql, [parceiro, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM parceiro WHERE idParceiro=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new ParceiroRepository();
