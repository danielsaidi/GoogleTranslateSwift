//
//  GoogleTranslateLanguagesResult.swift
//  GoogleTranslateSwift
//
//  Created by Daniel Saidi on 2021-11-15.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation

public struct GoogleTranslateLanguagesResult: Codable {
    
    public let languages: [GoogleTranslateLanguage]
}
