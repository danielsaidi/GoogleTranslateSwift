//
//  GoogleTranslateTranslationApiResult.swift
//  GoogleTranslateSwift
//
//  Created by Daniel Saidi on 2021-11-15.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation
import SwiftKit

struct GoogleTranslateTranslationApiResult: ApiModel {
    
    let data: ResultData
    
    struct ResultData: Decodable {
        
        let translations: [GoogleTranslateTranslation]
    }
    
    public func convert() -> GoogleTranslateTranslationResult {
        GoogleTranslateTranslationResult(
            translations: data.translations
        )
    }
}
