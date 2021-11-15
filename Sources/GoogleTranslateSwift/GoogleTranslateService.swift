//
//  GoogleTranslateApiService.swift
//  GoogleTranslateSwift
//
//  Created by Daniel Saidi on 2021-11-15.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation
import SwiftKit

public protocol GoogleTranslateService {
    
    func detectLanguage(
        in text: String,
        completion: @escaping ApiCompletion<GoogleTranslateLanguageDetectionResult>)
    
    func getSupportedLanguages(
        completion: @escaping ApiCompletion<GoogleTranslateLanguagesResult>)
    
    func translate(
        _ text: String,
        from: Locale,
        to: Locale,
        completion: @escaping ApiCompletion<GoogleTranslateTranslationResult>)
}
