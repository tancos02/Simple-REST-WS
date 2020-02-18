
exports.ok = function ok(values, res) {
  const data = {
    status: 200,
    values,
  };
  res.json(data);
  res.end();
};
