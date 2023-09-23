import Foundation

struct Todo: Identifiable {
    var id = UUID()
    var Title: String
    var isCompleted = false
}
