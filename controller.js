const response = require('./res');
const connection = require('./conn');

exports.index = function index(req, res) {
  response.ok('Connected', res);
};

exports.createTransaction = function createTransaction(req, res) {
  const { idPengguna } = req.body;
  const { idFilm } = req.body;
  const { idTujuan } = req.body;
  const { kursi } = req.body;
  const { idJadwal } = req.body;

  connection.query('INSERT INTO trans_history (id_pengguna, id_film, id_tujuan, kursi, id_jadwal) VALUES (?, ?, ?, ?, ?)', [idPengguna, idFilm, idTujuan, kursi, idJadwal],

    (error) => {
      if (!error) {
        response.ok('Transaction added', res);
      }
    });
};

exports.getTransaction = function getTransaction(req, res) {
  const { idPengguna } = req.params;

  connection.query('SELECT * FROM trans_history where id_pengguna = ?', [idPengguna],
    (error, rows) => {
      if (!error) {
        response.ok(rows, res);
      }
    });
};

exports.updateStatus = function updateStatus(req, res) {
  const { id } = req.body;
  const { status } = req.body;

  connection.query('UPDATE trans_history SET status = ? WHERE id= ?', [status, id],
    (error) => {
      if (!error) {
        response.ok('Status updated !', res);
      }
    });
};

exports.returnId = function returnId(req, res) {
  connection.query('SELECT max(id) as id_trans FROM trans_history',
    (error, rows) => {
      if (!error) {
        response.ok(rows, res);
      }
    });
};

exports.getTransactionStatus = function getTransactionStatus(req, res) {
  const { idTransaksi } = req.params;

  connection.query('SELECT status FROM trans_history where id = ?', [idTransaksi],
    (error, rows) => {
      if (!error) {
        response.ok(rows, res);
      }
    });
};

exports.getDisabledSeat = function getDisabledSeat(req, res) {
  const { idSchedule } = req.params;

  connection.query('SELECT kursi FROM trans_history where (status = "Pending" or status = "Success") and id_jadwal = ?', [idSchedule],
    (error, rows) => {
      if (!error) {
        response.ok(rows, res);
      }
    });
};
