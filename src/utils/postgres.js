import pg from "pg";
import dotenv from "dotenv";
dotenv.config();

const { Pool } = pg;

const pool = new Pool({
  connectionString:
    process.env.DATABASE_URL ??
    "postgres://postgres:sherzod2110@localhost:5432/teachers",
});

class PG {
  #pool = pool;

  async fetchData(SQL, ...params) {
    const clint = await this.#pool.connect();
    try {
      const { rows } = await clint.query(SQL, params.length ? params : null);
      return rows;
    } catch (error) {
      throw new Error(error);
    } finally {
      clint.release();
    }
  }
}
