import mysql from "mysql";

// conexão na etec

// const conexao = mysql.createConnection({
//     host: 'localhost',
//     port: '3302',
//     user: 'root',
//     password: 'password',
//     database: 'bdlily'
// })

//conexão em casa

const conexao = mysql.createConnection({
  host: "localhost",
  port: "3306",
  user: "root",
  password: "root",
  database: "bdlily",
});
try {
  conexao.connect();
} catch (error) {
  console.error(error);
}

export const consult = (sql, values = "", messageReject) => {
  return new Promise((resolve, reject) => {
    conexao.query(sql, values, (error, result) => {
      if (error) return reject(messageReject);

      const row = JSON.parse(JSON.stringify(result));
      return resolve(row);
    });
  });
};

export default conexao;
