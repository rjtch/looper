-- Your SQL goes here
CREATE TABLE IF NOT EXISTS loop_outs (
    id                  BIGSERIAL   PRIMARY KEY,
    state               TEXT        NOT NULL,
    remote_pubkey       TEXT        NOT NULL,
    local_pubkey        TEXT        NOT NULL,
    local_pubkey_index  INT         NOT NULL,
    cltv_timeout        BIGINT      NOT NULL,
    created_at          TIMESTAMP   NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMP   NOT NULL DEFAULT NOW()
);