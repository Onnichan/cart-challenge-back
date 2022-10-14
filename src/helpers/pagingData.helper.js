module.exports = function (data, page, limit, filter = false) {
  let { count: totalItems, rows: result } = data;
  const currentPage = page ? +page : 0;
  const totalPages = Math.ceil(totalItems / limit);

  result = filter ? result[0]["Products"] : result;

  return {
    totalItems,
    result,
    totalPages,
    currentPage,
  };
};
