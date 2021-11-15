//
//  GoogleTranslateApiService.swift
//  GoogleTranslateSwift
//
//  Created by Daniel Saidi on 2021-11-15.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation
import SwiftKit

public class GoogleTranslateApiService: ApiService, GoogleTranslateService {
    
    public init(apiKey: String) {
        self.apiKey = apiKey
        self.environment = GoogleTranslateApiEnvironment.v2
        self.session = .shared
    }
    
    private let apiKey: String
    
    public let environment: ApiEnvironment
    public let session: URLSession
    
    public func detectLanguage(in text: String, completion: @escaping ApiCompletion<GoogleTranslateLanguageDetectionResult>) {
        performTask(
            for: GoogleTranslateApiRoute.detectLanguage(in: text, apiKey: apiKey),
            type: GoogleTranslateLanguageDetectionApiResult.self,
            httpMethod: .post,
            completion: completion)
    }
    
    public func getSupportedLanguages(completion: @escaping ApiCompletion<GoogleTranslateLanguagesResult>) {
        performTask(
            for: GoogleTranslateApiRoute.languages(apiKey: apiKey),
            type: GoogleTranslateLanguagesApiResult.self,
            completion: completion)
    }
    
    public func translate(_ text: String, from: Locale, to: Locale, completion: @escaping ApiCompletion<GoogleTranslateTranslationResult>) {
        performTask(
            for: GoogleTranslateApiRoute.translate(text, from: from, to: to, apiKey: apiKey),
            type: GoogleTranslateTranslationApiResult.self,
            httpMethod: .post,
            completion: completion)
    }
    
}
