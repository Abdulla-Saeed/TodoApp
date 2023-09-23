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
        NavigationStack {
            List($todos) { $todo in
                HStack {
                    Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle").onTapGesture {
                        todo.isCompleted.toggle()
                    }
                    Text(todo.Title).strikethrough(todo.isCompleted)
                }
            }.navigationTitle("Todos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
