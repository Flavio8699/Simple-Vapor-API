import Vapor
import FluentMySQL

final class PostsController {
    
    func authorPosts(_ req: Request) throws -> Future<[Posts]> {
        let userID = try req.parameters.next(Int.self)
        
        return Posts.query(on: req).filter(\.author_id == userID).all()
    }
    
    func posts(_ req: Request) throws -> Future<[Posts]> {
        return Posts.query(on: req).all()
    }

}

