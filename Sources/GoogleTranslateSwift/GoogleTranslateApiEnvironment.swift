//
//  GoogleTranslateApiService.swift
//  GoogleTranslateSwift
//
//  Created by Daniel Saidi on 2021-11-15.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation
import SwiftKit

public enum GoogleTranslateApiEnvironment: ApiEnvironment {
    
    case v2
    
    /**
     The url of the api environment.
     */
    public var url: URL {
        URL(string: urlString)!
    }
    
    /**
     The url string of the api environment.
     */
    public var urlString: String {
        switch self {
        case .v2: return "https://translation.googleapis.com/language/translate/v2"
        }
    }
}
