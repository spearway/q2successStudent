//
//  Email.swift
//
//
//  Created by pierre on 2024-01-07.
//

import Foundation
import SwiftData

@Model
public final class Email {
    
    public var name: String
    public var email: String
    public var preferred: Bool

    @Relationship
    public var student: Student?

    public init() {
        self.name = "default"
        self.email = ""
        self.preferred = false
    }
    
}
