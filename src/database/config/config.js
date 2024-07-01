module.exports={
  "development": {
    "username": "root",
    "password": "",
    "database": "inglesform",
    "host": "127.0.0.1",
    "dialect": "mysql",
  },
  "test": {
    "username": "inglesform_37dw_user",
    "password": "iLn8JRDZqujTBF1qyBBzlIx3B1qN3xMW",
    "database": "inglesform_37dw",
    "host": "dpg-cka6etaa8h2s738vn3bg-a.oregon-postgres.render.com",
    "dialect": "postgres",
    "dialectOptions": {
      ssl: {
        require: true,
      }
    }
  },
  "production": {
    "username": "inglesform_37dw_user",
    "password": "iLn8JRDZqujTBF1qyBBzlIx3B1qN3xMW",
    "database": "inglesform_37dw",
    "host": "dpg-cka6etaa8h2s738vn3bg-a.oregon-postgres.render.com",
    "dialect": "postgres",
    "dialectOptions": {
      ssl: {
        require: true,
      }
    }
  }
}