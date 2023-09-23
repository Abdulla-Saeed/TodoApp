import SwiftUI

struct ContentView: View {
    @State private var todos = [
        Todo(Title: "Feeding pets"),
        Todo(Title: "Buy groceries"),
        Todo(Title: "Finish project"),
        Todo(Title: "Call mom", isCompleted: true),
        Todo(Title: "Go for a run"),
        Todo(Title: "Read a book")
    
    ]
    var body: some View {
        List(todos) { todo in
            Text(todo.Title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
