//
//  NotesDetailView.swift
//  Notas
//
//  Created by Rhainan Domingos on 05/05/25.
//

import SwiftUI

struct NotesDetailView: View {
    
    @Binding var note: Note
    @State var noteState: Note
    @Environment(\.dismiss) var dismiss
    
    init(note: Binding<Note>) {
        _note = note
        _noteState = State(initialValue: note.wrappedValue)
    }
    
    var body: some View {
        VStack {
            TextField("Título", text: $noteState.title)
                .font(.title)
            TextEditor(text: $noteState.content)
                .font(.subheadline)
        }
        .padding()
        .navigationTitle("Detalhes")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Salvar") {
                    note = noteState
                    dismiss()
                }
                .disabled(isEqualNotes)
            }
        }
    }
    
    var isEqualNotes: Bool {
        note == noteState
    }
}

#Preview {
    @State var note = Note(title: "Ir ao mercado", content: "Lmebrar de comprar carne, legumes, farinha, etc...")
    return NavigationStack {
        NotesDetailView(note: $note)
    }
}
