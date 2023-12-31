import SwiftUI

struct ContentView: View {
    @State private var todos = [
        Todo(Title: "Feeding pets", subtitle: "12"),
        Todo(Title: "Buy groceries", subtitle: "34"),
        Todo(Title: "Finish project", subtitle: "56"),
        Todo(Title: "Call mom", subtitle: "78", isCompleted: true),
        Todo(Title: "Go for a run", subtitle: "90"),
        Todo(Title: "Read a book", subtitle: "12")
        
    ]
    @State private var showSheet = false
    var body: some View {
        NavigationStack {
            List($todos, editActions: [.all]) { $todo in
                NavigationLink{
                    TodoDetailView(todo: $todo)
                } label: {
                    HStack {
                        Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle").onTapGesture {
                            todo.isCompleted.toggle()
                        }
                        VStack (alignment: .leading, spacing: 2){
                            Text(todo.Title).strikethrough(todo.isCompleted)
                            if !todo.subtitle.isEmpty{
                                Text(todo.subtitle).font(.caption).foregroundColor(.gray).strikethrough(todo.isCompleted)
                            }
                        }
                    }
                }
            }.navigationTitle("Todos")
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        EditButton()}
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button{
                            showSheet = true
                        }label: {
                            Image(systemName: "plus")
                        }
                    }
                    
                }
                .sheet(isPresented: $showSheet){
                    NewTodoView(sourceArray: $todos).presentationDetents([.medium])
                }
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
