import Vapor

public func routes(_ router: Router) throws {
    
    let authorsController = AuthorsController(), postsController = PostsController()
    
    router.get { req in
        return "Simple Vapor API\n\nAuthors: /authors\nAuthor: /author/<id>\nPosts: /posts\nAuthor posts: /author/<id>/posts"
    }
    
    router.get("author", Int.parameter, use: authorsController.author)
    router.get("author", Int.parameter, "posts", use: postsController.authorPosts)
    
    router.get("authors", use: authorsController.authors)
    router.get("posts", use: postsController.posts)
}
