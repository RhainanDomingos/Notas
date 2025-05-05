//
//  Note.swift
//  Notas
//
//  Created by Rhainan Domingos on 04/05/25.
//

import Foundation

struct Note: Identifiable {
    var id: UUID = UUID()
    var title: String = ""
    var content: String = ""
}
