//
//  StudentModelLoader.swift
//
//
//  Created by pierre on 2024-01-21.
//

import Foundation
import SwiftData

public struct StudentModelLoader {
    public static var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Student.self,
            Address.self,
            Email.self,
            Phone.self,
            Registration.self,
         ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
}
