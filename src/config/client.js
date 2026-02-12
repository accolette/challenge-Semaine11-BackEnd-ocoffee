import pg from "pg";

const POSTGRESQLACCESS = process.env.POSTGRESQLACCESS;
const client = new pg.Client(POSTGRESQLACCESS);
client.connect();

export default client;
