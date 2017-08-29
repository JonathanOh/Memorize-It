//
//  AudioFile.swift
//  Memorize It
//
//  Created by Jonathan Oh on 8/29/17.
//  Copyright © 2017 esohjay. All rights reserved.
//

import Foundation

struct AudioFile {
    var name: String
    let date: Date
    var length: Int
    var fileDirectory: String
    
    mutating func updateName(_ name: String) {
        self.name = name
        self.fileDirectory = getDirectoryFrom(name: name)
    }
    mutating func updateLength(_ time: Int) {
        self.length = time
    }
    private func getDirectoryFrom(name: String) -> String {
        // Do work to get full directory string
        return ""
    }
    
}
