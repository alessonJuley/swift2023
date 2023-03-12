import UIKit
import NaturalLanguage      // help in creating language recogniser
import CoreML               // framework for machine learning for iOS

// language recogniser = process the text as string then tell what language it is


private func predictLanguage(text: String) -> String? {
    // Step 1: Set up locale
    //          a locale is what we want the language output to be
    //          for example: output can be in English or Filipino
    
    // Step 2: Set up language recogniser
    //          we need the language recogniser to process the text string
    
    // Step 3: Use the recogniser to process the string
    
    // Step 4: Find the dominant language
    //          dominant language is the most likely language for the
    //          processed text
    
    
    let locale = Locale(identifier: "en");
    let recogniser = NLLanguageRecognizer();
    
    recogniser.processString(text);
    
    guard let language = recogniser.dominantLanguage else {
        return "Language unidentified. Sorry :( ";
    }
    
    // print(language);
    
    return locale.localizedString(forLanguageCode: language.rawValue);
}



["Hello World", "Hallo Welt", "Привет, мир", "!@46?"].forEach{
    // call the predict language function
    // $0 means the first element in the array
    if let prediction = predictLanguage(text: $0) {
        print(prediction);
    }
}
