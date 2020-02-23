import Vapor
import FluentMySQL

final class AuthorsController {
    
    func author(_ req: Request) throws -> Future<Authors> {
        let userID = try req.parameters.next(Int.self)
        return Authors.find(userID, on: req).unwrap(or: Abort(.notFound))
    }

    func authors(_ req: Request) throws -> Future<[Authors]> {
        return Authors.query(on: req).all()
    }
}

