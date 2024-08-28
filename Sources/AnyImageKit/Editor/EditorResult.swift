//
//  EditorResult.swift
//  AnyImageKit
//
//  Created by 刘栋 on 2020/9/28.
//  Copyright © 2020-2022 AnyImageKit.org. All rights reserved.
//

import Foundation

public struct EditorResult: Equatable {
    
    /// Local media url. Store in temporary directory.
    /// If you want to keep this file, you should move it to your document directory.
    public let mediaURL: URL?
    
    public let image: UIImage?
    
    /// Media type
    public let type: MediaType
    
    /// Video editing info
    public let videoEditingInfo: EditorResultVideoInfo?
    
    /// Media is edited or not
    public let isEdited: Bool
    
    init(mediaURL: URL?, image: UIImage? = nil, type: MediaType, videoEditingInfo: EditorResultVideoInfo?, isEdited: Bool) {
        self.mediaURL = mediaURL
        self.type = type
        self.videoEditingInfo = videoEditingInfo
        self.isEdited = isEdited
        self.image = image
    }
}
