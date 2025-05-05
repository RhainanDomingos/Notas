//
//  NotasApp.swift
//  Notas
//
//  Created by Rhainan Domingos on 03/05/25.
//

import SwiftUI

@main
struct NotasApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
