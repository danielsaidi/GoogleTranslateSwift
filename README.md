# GoogleTranslateSwift


## About

This is a micro library for integrating with the Google Cloud Translation API.

I currently only use it for personal projects, but will document the api so that it is easy to use for anyone.

If it gets more than 100 stars, I'll improve documentation, add a logo, setup a demo app etc.



## Getting Started

First, setup a Google Translate account at [cloud.google.com](https://cloud.google.com).

You can follow [this guide](https://www.appcoda.com/google-translation-api/) to setup a billing account and a Cloud Translation service.

When your account is setup, you can create a `GoogleTranslateApiService` with your API key:

```swift
let service = GoogleTranslateApiService(apiKey: "...")
```

You can now fetch available languages, detect the language of a text and translate a text from one locale to another:

```swift

// Get all supported languages
service.getSupportedLanguages { result in
    ...
}

// Detect the language in a certain string
service.detectLanguage(in: "Hello, world!") { result in
    ...
}

// Translate a string from one locale to another
let english = Locale(identifier: "en")
let swedish = Locale(identifier: "sv")
service.translate(in: "Hello, world!", from: english, to: swedish) { result in
    ...
}
```

The completions can fail with an `SwiftKit.ApiError`, which contains information about the request.



## Installation

### Swift Package Manager

```
https://github.com/danielsaidi/GoogleTranslateSwift.git
```

### CocoaPods

I will add CocoaPods support after this library gets 100+ stars.



## Documentation

I will add documentation to this library after it gets 100+ stars.



## Demo Application

I will add CocoaPods support after this library gets 100+ stars.



## Contact

Feel free to reach out if you have questions or if you want to contribute in any way:

* E-mail: [daniel.saidi@gmail.com][Email]
* Twitter: [@danielsaidi][Twitter]
* Web site: [danielsaidi.com][Website]



## License

This library is available under the MIT license. See [LICENSE][License] file for more info.


[Email]: mailto:daniel.saidi@gmail.com
[Twitter]: http://www.twitter.com/danielsaidi
[Website]: http://www.danielsaidi.com

[Documentation]: https://github.com/danielsaidi/GoogleTranslateSwift/raw/master/Docs/GoogleTranslateSwift.doccarchive.zip
[License]: https://github.com/danielsaidi/GoogleTranslateSwift/blob/master/LICENSE
