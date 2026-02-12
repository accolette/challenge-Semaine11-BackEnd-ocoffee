import client from "../config/client.js";

const dataMapper = {
  newProductsHomePage: async () => {
    const query = "SELECT name FROM coffee ORDER BY id DESC LIMIT 3";
    let result = await client.query(query);
    console.group(result.rows);
    return result.rows;
  },
};

export default dataMapper;
