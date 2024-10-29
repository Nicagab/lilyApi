import { consult } from "../database/conexao.js";

class ImagemRepository {
  create(imagem) {
    const sql = `INSERT INTO imagem SET ?`;
    return consult(sql, imagem, "Não foi possível cadastrar");
  }
  findAll() {
    const sql = `SELECT * FROM imagem`;
    return consult(sql, "", "Não foi possível encontrar");
  }
  findByID(id) {
    const sql = `SELECT * FROM imagem WHERE idImagem=?;`;
    return consult(sql, id, "Não foi possível encontrar");
  }
  update(imagem, id) {
    const sql = `UPDATE imagem SET ? WHERE idImagem=?;`;
    return consult(sql, [imagem, id], "Não foi possível atualizar");
  }
  delete(id) {
    const sql = `DELETE FROM imagem WHERE idImagem=?;`;
    return consult(sql, id, "Não foi possível deletar");
  }
}

export default new ImagemRepository();
