import client from "../config/client.js";

const dataMapperAdmin = {
  // SHOW CLIENT MSG BY LASTETS
  findClientsMessages: async () => {
    const query = "SELECT * FROM client_message ORDER BY id DESC";
    let result = await client.query(query);
    console.log(result.rows);
    return result.rows;
  },
};

export default dataMapperAdmin;
