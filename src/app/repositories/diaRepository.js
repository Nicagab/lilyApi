import { consult } from "../database/conexao.js";

class DiaRepository {
  create(dia) {
    const sql = `INSERT INTO dia SET ?`;
    return consult(sql, dia, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM dia`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM dia WHERE idDia=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findSintomas(id){
    const sql = `SELECT nome, tipo FROM dia as A INNER JOIN sintoma as B INNER JOIN dia_sintoma as C on b.idSintoma = c.idSintoma AND a.idDia = c.idDia WHERE a.idDia = ?`
    return consult(sql, id, "Não foi possível encontrar")
  }
  findEventos(id){
    const sql = `SELECT nome, horario FROM dia as A INNER JOIN evento as B INNER JOIN dia_evento as C on b.idEvento = c.idEvento AND a.idDia = c.idDia WHERE a.idDia = ?`
    return consult(sql, id, "Não foi possível encontrar")
  }
  update(dia, id) {
    const sql = `UPDATE dia SET ? WHERE idDia=?;`;
    return consult(sql, [dia, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM dia WHERE idDia=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new DiaRepository();
