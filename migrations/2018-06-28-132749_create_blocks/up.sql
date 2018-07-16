CREATE TABLE blocks (
       id SERIAL PRIMARY KEY,
       hash VARCHAR(55),
       height BIGINT,
       miner VARCHAR(55),
       nonce numeric(20,0),
       prev_hash VARCHAR(55),
       state_hash VARCHAR(55),
       target BIGINT,
       time_ BIGINT,
       txs_hash VARCHAR(255),
       version INTEGER);
