# Local PSQL Setup

```bash
brew install postgresql # Install postgres locally
brew services start postgresql # Keep a persistent PSQL server running
postgres --version
```

## Creating A Test DB + User

```bash
createdb testdb # Create a DB named testdb
psql testdb # Start a PSQL shell on testdb
```

```SQL
CREATE USER nick WITH PASSWORD 'SomeTextHere';
GRANT ALL PRIVILEGES ON DATABASE "testdb" TO nick;
```

## Log Into Instance

```bash
psql -h localhost -p 5432 -U nick testdb
```
