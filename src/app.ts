import { readFileSync } from "node:fs";
import { join } from "node:path";
import pg from "pg";

const pool = new pg.Pool({ connectionString: process.env.DATABASE_URL });
const cache = new Map<string, string>();

function sql(name: string): string {
  if (!cache.has(name)) cache.set(name, readFileSync(join(import.meta.dirname, "queries", `${name}.sql`), "utf8"));
  return cache.get(name)!;
}

export async function query<T extends pg.QueryResultRow>(name: string, params: unknown[] = []): Promise<T[]> {
  const { rows } = await pool.query<T>({ name, text: sql(name), values: params });
  return rows;
}

// e.g. await query("notify_user", [42]); await query("top_customers", [10]);
