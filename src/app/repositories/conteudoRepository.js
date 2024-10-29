import { consult } from "../database/conexao.js";

class ConteudoRepository {
  create(conteudo) {
    const sql = `INSERT INTO conteudo SET ?`;
    return consult(sql, conteudo, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM conteudo`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findTopics(id){
    const sql = `SELECT * FROM topico WHERE idConteudo=?`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM conteudo WHERE idConteudo=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  findByType(type) {
    const sql = `SELECT * FROM conteudo WHERE tipo=?;`;
    return consult(sql, type, "Não foi possível encontrar");
  }
  findImg(id) {
    const sql = `SELECT * FROM imagem WHERE idConteudo=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(conteudo, id) {
    const sql = `UPDATE conteudo SET ? WHERE idConteudo=?;`;
    return consult(sql, [conteudo, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM conteudo WHERE idConteudo=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new ConteudoRepository();
