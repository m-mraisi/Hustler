//
//  Customer.swift
//  Hustler
//
//  Created by Mahmoud Mraisi on 19/03/2023.
//

import Foundation


struct Customer: Identifiable, Codable {
    var id :String? = UUID().uuidString
    var cName: String = ""
    var cEmail : String = ""
    var cAddress : String = ""
    var cLong : String = ""
    var cLat : String = ""
    
    init(){
        
    }
    
    init(id: String? = nil, cName: String, cEmail: String, cAddress: String, cLong: String, cLat: String) {
        self.id = id
        self.cName = cName
        self.cEmail = cEmail
        self.cAddress = cAddress
        self.cLong = cLong
        self.cLat = cLat
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.cName = try container.decode(String.self, forKey: .cName)
        self.cEmail = try container.decode(String.self, forKey: .cEmail)
        self.cAddress = try container.decode(String.self, forKey: .cAddress)
        self.cLong = try container.decode(String.self, forKey: .cLong)
        self.cLat = try container.decode(String.self, forKey: .cLat)
    }
}
