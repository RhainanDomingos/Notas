//
//  AddNotesView.swift
//  Notas
//
//  Created by Rhainan Domingos on 05/05/25.
//

import SwiftUI

struct AddNotesView: View {
    
    @ObservedObject var viewModel: NoteViewModel
    @State var note = Note()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            
            Section {
                TextField("Informe o título", text: $note.title)
            } header: {
                Text("Título")
            }
            
            Section {
                TextEditor(text: $note.content)
            } header: {
                Text("Conteúdo")
            }
            
            Section {
                Button("Salvar") {
                    viewModel.notes.append(note)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    var viewModel = NoteViewModel()
    return AddNotesView(viewModel: viewModel)
}
