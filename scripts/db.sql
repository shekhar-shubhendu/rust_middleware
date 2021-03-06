
DROP TABLE IF EXISTS blocks;
DROP TABLE IF EXISTS transactions;

CREATE TABLE blocks (
       id SERIAL PRIMARY KEY,
       hash VARCHAR(55),
       height BIGINT,
       miner VARCHAR(55),
       nonce BIGINT,
       prev_hash VARCHAR(55),
       state_hash VARCHAR(55),
       target BIGINT,
       time_ BIGINT,
       txs_hash VARCHAR(255),
       version INTEGER);

CREATE TABLE transactions (
       id SERIAL PRIMARY KEY,
       block_id INTEGER REFERENCES blocks(id),
       encoded_data TEXT NOT NULL);
       
