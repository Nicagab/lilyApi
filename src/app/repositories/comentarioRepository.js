import { consult } from "../database/conexao.js";

class ComentarioRepository {
  create(comentario) {
    const sql = `INSERT INTO comentario SET ?`;
    return consult(sql, comentario, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM comentario`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM comentario WHERE idComentario=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(comentario, id) {
    const sql = `UPDATE comentario SET ? WHERE idComentario=?;`;
    return consult(sql, [comentario, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM comentario WHERE idComentario=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new ComentarioRepository();
