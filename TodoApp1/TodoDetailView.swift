//
//  TodoDetailView.swift
//  TodoApp1
//
//  Created by Abdulla Saeed Alblooshi on 27/09/2023.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo: Todo
    var body: some View {
        Form {
            TextField("Title", text: $todo.Title)
            TextField("Subtitle", text: $todo.subtitle)
            Toggle("Is completed?", isOn: $todo.isCompleted)
        }.navigationTitle("Todo Detail")
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            TodoDetailView(todo: .constant(Todo(Title: "Feed the cat", subtitle: "123"))
)
        }
    }
}
