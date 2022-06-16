CREATE TABLE pgdb_Projects (
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(150),
  language NVARCHAR(150),
  repository NVARCHAR(5000),
  test NVARCHAR(5000),
  PRIMARY KEY(ID)
);
CREATE TABLE pgdb_Votes (
  ID NVARCHAR(36) NOT NULL,
  username NVARCHAR(150),
  createdAt DATE_TEXT,
  project_ID NVARCHAR(36),
  PRIMARY KEY(ID)
);
CREATE VIEW PublicService_Projects AS
SELECT
  Projects_0.ID,
  Projects_0.name,
  Projects_0.language,
  Projects_0.repository
FROM pgdb_Projects AS Projects_0;
CREATE VIEW PublicService_Votes AS
SELECT
  Votes_0.ID,
  Votes_0.username,
  Votes_0.createdAt,
  Votes_0.project_ID
FROM pgdb_Votes AS Votes_0;