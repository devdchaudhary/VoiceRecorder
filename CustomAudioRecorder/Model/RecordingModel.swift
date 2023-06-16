//
//  RecordingModel.swift
//  RecosiaIOS
//
//  Created by devdchaudhary on 18/04/23.
//

import Foundation

struct Recording: Hashable {

    let uid: UUID
    var fileURL: URL
    
    init(fileURL: URL) {
        uid = UUID()
        self.fileURL = fileURL
    }
    
}

struct SampleModel: Hashable {
    
    let id: UUID
    let sample: Float
    
    init(sample: Float) {
        id = UUID()
        self.sample = sample
    }
    
}
