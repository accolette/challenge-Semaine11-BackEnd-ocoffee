import client from "../config/client.js";

const dataMapper = {
  // SHOW 3 NEWEST PRODUCTS FOR HOMEPAGE
  findNewProductsHp: async () => {
    const query =
      "SELECT id, name, reference FROM coffee ORDER BY id DESC LIMIT 3";
    let result = await client.query(query);
    console.log(result.rows);
    return result.rows;
  },

  // SHOW ALL PRODUCTS
  findAllProducts: async () => {
    const query = `
    SELECT c.id, c.name, c.price, c.reference, count.name AS origin
    FROM coffee c
    JOIN country count ON c.country_id = count.id
    `;
    let result = await client.query(query);
    console.log(result.rows);
    return result.rows;
  },

  // SHOW ONE PRODUCT
  findOneProduct: async (productId) => {
    console.log(productId);
    const query = `
    SELECT c.id, c.reference, c.name, c.description, c.price, c.available, count.name AS origin, ARRAY_AGG(ch.detail) AS characteristic 
    FROM coffee c
    JOIN country count ON c.country_id = count.id
    JOIN coffee_characteristic c_ch ON c.id = c_ch.coffee_id
    JOIN characteristic ch ON ch.id = c_ch.characteristic_id
    WHERE c.id = $1
    GROUP BY c.id, c.reference, c.name, c.description, c.price, c.available, count.name
    `;
    let result = await client.query(query, [productId]);
    console.log(result.rows[0]);
    return result.rows[0];
  },

  // SEND THE CLIENT MSG TO THE DB
  sendClientMsg: async (clientDataMsg) => {
    const query = `
    INSERT INTO client_message
    (first_name, last_name, email, message)
    VALUES 
    ($1, $2, $3, $4);
    `;
    const sending = await client.query(query, [
      clientDataMsg.first_name,
      clientDataMsg.last_name,
      clientDataMsg.email,
      clientDataMsg.message,
    ]);
    const check = `
    SELECT * FROM client_message;
    `;
    const result = await client.query(check);
    console.log(result.rows);
  },
};

export default dataMapper;
