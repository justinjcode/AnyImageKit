//
//  MosaicData.swift
//  AnyImageKit
//
//  Created by 蒋惠 on 2020/11/26.
//  Copyright © 2020-2021 AnyImageProject.org. All rights reserved.
//

import UIKit

struct MosaicData: Codable {
    
    let idx: Int
    let drawnPaths: [DrawnPath]
    
    init(idx: Int,
         drawnPaths: [DrawnPath]) {
        self.idx = idx
        self.drawnPaths = drawnPaths
    }
}

extension MosaicData: Equatable {
    
    static func == (lhs: MosaicData, rhs: MosaicData) -> Bool {
        return lhs.idx == rhs.idx && lhs.drawnPaths == rhs.drawnPaths
    }
}
