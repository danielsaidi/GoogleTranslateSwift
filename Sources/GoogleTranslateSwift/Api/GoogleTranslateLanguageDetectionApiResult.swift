//
//  GoogleTranslateLanguageDetectionApiResult.swift
//  GoogleTranslateSwift
//
//  Created by Daniel Saidi on 2021-11-15.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation
import SwiftKit

struct GoogleTranslateLanguageDetectionApiResult: ApiModel {
    
    let data: ResultData
    
    struct ResultData: Decodable {
        
        let detections: [[GoogleTranslateLanguageDetection]]
    }
    
    public func convert() -> GoogleTranslateLanguageDetectionResult {
        GoogleTranslateLanguageDetectionResult(
            detections: data.detections.flatMap { $0 }
        )
    }
}
