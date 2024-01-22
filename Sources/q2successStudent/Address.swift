//
//  Address.swift
//
//
//  Created by pierre on 2024-01-07.
//

import Foundation
import SwiftData

@Model
public final class Address {
    
    public var name: String
    public var line1: String
    public var line2: String
    public var line3: String
    public var city: String
    public var county: String
    public var province: String
    public var country: String
    public var postalCode: String

    @Relationship
    public var student: Student?
    
    public init() {
        self.name = "default"
        self.line1 = ""
        self.line2 = ""
        self.line3 = ""
        self.city = ""
        self.county = ""
        self.province = ""
        self.country = ""
        self.postalCode = ""
    }
    
}
