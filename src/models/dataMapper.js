import client from "../config/client.js";

const dataMapper = {
  findNewProductsHp: async () => {
    const query = "SELECT name, reference FROM coffee ORDER BY id DESC LIMIT 3";
    let result = await client.query(query);
    console.log(result.rows);
    return result.rows;
  },

  findAllProducts: async () => {
    const query = `
    SELECT c.name, c.price, c.reference, count.name AS origin
    FROM coffee c
    JOIN country count ON c.country_id = count.id
    `;
    let result = await client.query(query);
    console.log(result.rows);
    return result.rows;
  },
};

export default dataMapper;
