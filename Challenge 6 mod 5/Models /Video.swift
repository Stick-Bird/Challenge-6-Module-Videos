//
//  Video.swift
//  Challenge 6 mod 5
//
//  Created by user on 2022-09-02.
//

import Foundation

class Video: Identifiable, Decodable {
    
    var id: UUID? 
    var videoNumber: Int
    var name: String
    var description: [String]
    var videoLink: String 
}
