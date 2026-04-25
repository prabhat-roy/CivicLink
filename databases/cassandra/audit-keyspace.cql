CREATE KEYSPACE IF NOT EXISTS civiclink_audit
WITH REPLICATION = { 'class': 'NetworkTopologyStrategy', 'dc1': 3 };

CREATE TABLE civiclink_audit.officer_action (
    actor_id    text,
    event_time  timestamp,
    event_id    uuid,
    action      text,
    resource    text,
    correlation text,
    metadata    map<text, text>,
    PRIMARY KEY ((actor_id), event_time, event_id)
) WITH CLUSTERING ORDER BY (event_time DESC, event_id ASC)
  AND default_time_to_live = 220752000;
