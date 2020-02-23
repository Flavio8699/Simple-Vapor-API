import FluentMySQL
import Vapor

public func configure(_ config: inout Config, _ env: inout Environment, _ services: inout Services) throws {
    let router = EngineRouter.default()
    try routes(router)
    services.register(router, as: Router.self)

    try services.register(FluentMySQLProvider())
    var databases = DatabasesConfig()
    let database = MySQLDatabase(config: MySQLDatabaseConfig(
      hostname: "localhost",
      port: 3306,
      username: "root",
      password: "",
      database: ""
    ))
    databases.add(database: database, as: .mysql)
    services.register(databases)
    
    var migrations = MigrationConfig()
    migrations.add(model: Authors.self, database: .mysql)
    migrations.add(model: Posts.self, database: .mysql)
    services.register(migrations)
}
