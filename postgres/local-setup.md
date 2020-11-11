# Local PSQL Setup

Install postgres from homebrew from your terminal of choice:

```bash
brew install postgresql # Install postgres locally
brew services start postgresql # Keep a persistent PSQL server running
postgres --version
```

## Creating A Test DB + User

Create a db from the terminal and connect to it:

```bash
createdb testdb # Create a DB named testdb
psql testdb # Start a PSQL shell on testdb
```

Create a non-rot db user with full access:

```SQL
CREATE USER nick WITH PASSWORD 'SomeTextHere';
GRANT ALL PRIVILEGES ON DATABASE "testdb" TO nick;
```

## Log Into Instance

Log back into the instance as your new user from the terminal, or from dBeaver:

```bash
psql -h localhost -p 5432 -U nick testdb
```
