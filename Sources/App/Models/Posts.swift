import FluentMySQL
import Vapor

final class Posts: Model, MySQLModel {
    var id: Int?
    var author_id: Int
    var title: String
    var description: String
    var content: String
    var date: Date

    init(id: Int? = nil, author_id: Int, title: String, description: String, content: String, date: Date) {
        self.id = id
        self.author_id = author_id
        self.title = title
        self.description = description
        self.content = content
        self.date = date
    }
}

extension Posts: Migration { }
extension Posts: Content { }
