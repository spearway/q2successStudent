//
//  Phone.swift
//
//
//  Created by pierre on 2024-01-07.
//

import Foundation
import SwiftData

@Model
public final class Phone {
    
    public var name: String
    public var number: String
    public var preferred: Bool

    @Relationship
    public var student: Student?

    public init() {
        self.name = "default"
        self.number = ""
        self.preferred = false
    }
    
}
