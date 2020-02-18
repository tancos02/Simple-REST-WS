const todoList = require('./controller');

module.exports = function exports(app) {
  app.route('/')
    .get(todoList.index);

  app.route('/createTransaction')
    .post(todoList.createTransaction);

  app.route('/getTransaction/:idPengguna')
    .get(todoList.getTransaction);

  app.route('/updateStatus')
    .post(todoList.updateStatus);

  app.route('/returnId')
    .get(todoList.returnId);

  app.route('/getTransactionStatus/:idTransaksi')
    .get(todoList.getTransactionStatus);

  app.route('/getDisabledSeat/:idSchedule')
    .get(todoList.getDisabledSeat);
};
