import FluentMySQL
import Vapor

final class Authors: Model, MySQLModel {
    var id: Int?
    var first_name: String
    var last_name: String
    var email: String
    var birthdate: Date
    var added: Date

    init(id: Int? = nil, first_name: String, last_name: String, email: String, birthdate: Date, added: Date) {
        self.id = id
        self.first_name = first_name
        self.last_name = last_name
        self.email = email
        self.birthdate = birthdate
        self.added = added
    }
}

extension Authors: Migration { }
extension Authors: Content { }

