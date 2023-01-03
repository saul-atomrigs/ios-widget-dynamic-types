//
//  IntentHandler.swift
//  IntentExtension
//
//  Created by 아톰릭스랩 on 2023/01/03.
//  Copyright © 2023 Apple. All rights reserved.
//

import Intents

class IntentHandler: INExtension, ConfigurationIntentHandling {
    
    func provideCharacterOptionsCollection(for intent: ConfigurationIntent, with completion: @escaping (INObjectCollection<CustomSymbol>?, Error?) -> Void) {
        
        let symbols: [CustomSymbol] = [
            CustomSymbol(identifier: "AAPL", display: "Apple"),
            CustomSymbol(identifier: "ABNB", display: "AirBnb"),
            CustomSymbol(identifier: "GOOG", display: "Alphabet"),
        ]

           // Create a collection with the array of characters.
           let collection = INObjectCollection(items: symbols)

           // Call the completion handler, passing the collection.
           completion(collection, nil)
       }
    
}
