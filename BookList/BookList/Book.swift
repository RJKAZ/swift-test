import Foundation

struct Book: Codable {
    var isbn: Int?
    var title: String?
    var author: String?
    var pages: Int?
    var description: String?
    
    private enum CodingKeys: String, CodingKey{
        case title, author, isbn
        case description = "description"
        case pages = "pages"
    }
}
