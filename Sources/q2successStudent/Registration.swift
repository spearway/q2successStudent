//
//  Registration.swift
//
//
//  Created by pierre on 2024-01-07.
//

import Foundation
import SwiftData

@Model
public final class Registration {
    
    public var courseId: UUID
    public var registrationDate: Date
    public var lastUsed: Date

    @Relationship
    public var student: Student?

    public init(courseId: UUID) {
        self.courseId = courseId
        self.registrationDate = .now
        self.lastUsed = .distantPast
    }
    
}
