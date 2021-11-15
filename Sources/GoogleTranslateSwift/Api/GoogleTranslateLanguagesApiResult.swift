//
//  GoogleTranslateLanguagesApiResult.swift
//  GoogleTranslateSwift
//
//  Created by Daniel Saidi on 2021-11-15.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation
import SwiftKit

struct GoogleTranslateLanguagesApiResult: ApiModel {
    
    let data: ResultData
    
    struct ResultData: Decodable {
        
        let languages: [Language]
    }
    
    struct Language: Decodable {
        
        let language: String
    }
    
    public func convert() -> GoogleTranslateLanguagesResult {
        GoogleTranslateLanguagesResult(
            languages: data.languages.map {
                GoogleTranslateLanguage(languageCode: $0.language)
            }
        )
    }
}
