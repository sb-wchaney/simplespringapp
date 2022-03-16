--liquibase formatted sql
--  -------------------------------------------------------------------------------------------------------------------

--changeset lsharshar:AB2D-1242-persist-events-api-request failOnError:true

CREATE TABLE event_api_request
(
    id SERIAL,
    time_of_event TIMESTAMP WITH TIME ZONE,
    job_id VARCHAR(255),
    user_id VARCHAR(255),
    url VARCHAR(2048),
    ip_address VARCHAR(32),
    token_hash VARCHAR(255),
    request_id VARCHAR(255)
);
ALTER TABLE event_api_request ADD CONSTRAINT "pk_api_request_event" PRIMARY KEY (id);
CREATE INDEX "ix_api_request_user" ON event_api_request (user_id);

--rollback DROP TABLE event_api_request;
--  -------------------------------------------------------------------------------------------------------------------
