//
//  File.swift
//  
//
//  Created by pierre on 2024-01-07.
//

import Foundation
import SwiftData


@Model
public final class Student {

    public var name: String
    public var surname: String
    @Relationship(deleteRule: .cascade, inverse: \Address.student)
    public var addresses = [Address]()
    @Relationship(deleteRule: .cascade, inverse: \Email.student)
    public var emails = [Email]()
    @Relationship(deleteRule: .cascade, inverse: \Phone.student)
    public var phoneNumbers = [Phone]()
    @Relationship(deleteRule: .cascade, inverse: \Registration.student)
    public var registrations = [Registration]()

    public init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    
    public func fullName() -> String { return ( name.isEmpty ? "Jane" : name ) + " " + ( surname.isEmpty ? "Doe" : surname ) }
}
