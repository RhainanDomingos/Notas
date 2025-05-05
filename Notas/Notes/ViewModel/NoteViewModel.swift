//
//  NoteViewModel.swift
//  Notas
//
//  Created by Rhainan Domingos on 04/05/25.
//

import Foundation

class NoteViewModel: ObservableObject {
    
    @Published var notes: [Note] = [Note(title: "Titulo", content: "Descricao do conteudo")]
    
}
