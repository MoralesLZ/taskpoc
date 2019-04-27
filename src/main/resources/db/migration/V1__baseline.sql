create table incident (
  id bigint NOT NULL PRIMARY KEY ,
  uuid character  varying (255) NOT NULL UNIQUE
);


create table emergency_service (
  id bigint NOT NULL PRIMARY KEY,
  uuid character varying (255) NOT NULL UNIQUE,
  service_name character varying (255),
  service_type integer
);

create table operator(
  id bigint NOT NULL PRIMARY KEY,
  uuid character varying  (255) not null unique
);


create table task (
  id bigint primary key,
  uuid character varying  (255) not null unique ,
  incident_uuid character varying  (255),
  assignee_uuid character varying (255),
  created_by_uuid character varying (255),
  operator_uuid character varying (255),
  task_report_uuid character  varying(255),
  task_status_uuid character varying  (255)
);

create table task_status (
  id bigint PRIMARY KEY,
  uuid character varying  (255) not null unique,
  task_uuid character varying (255) NOT NULL
);

create table task_report (
  id bigint PRIMARY KEY,
  uuid character varying  (255) not null unique,
  task_uuid character varying (255) NOT NULL
);


ALTER TABLE  task_status
  ADD CONSTRAINT fk_task FOREIGN KEY (task_uuid) REFERENCES task(uuid);

ALTER TABLE  task_report
  ADD CONSTRAINT fk_task FOREIGN KEY (task_uuid) REFERENCES task(uuid);


-- ALTER TABLE  task
-- ADD CONSTRAINT fk_incident FOREIGN KEY (incident_uuid) REFERENCES incident(uuid);
--
-- ALTER TABLE  task
-- ADD CONSTRAINT fk_assignee_by FOREIGN KEY (assignee_uuid) REFERENCES emergency_service(uuid);
--
-- ALTER TABLE  task
-- ADD CONSTRAINT fk_created_by FOREIGN KEY (created_by_uuid) REFERENCES emergency_service(uuid);
--
-- ALTER TABLE  task
-- ADD CONSTRAINT fk_operator FOREIGN KEY (operator_uuid) REFERENCES operator(uuid);
--
-- ALTER TABLE  task
-- ADD CONSTRAINT fk_task_report FOREIGN KEY (task_report_uuid) REFERENCES task_report(uuid);
--
-- ALTER TABLE  task
-- ADD CONSTRAINT fk_task_status FOREIGN KEY (task_status_uuid) REFERENCES task_status(uuid);
