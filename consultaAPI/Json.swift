//
//  Json.swift
//  nanoSwiftc]
//
//  Created by Fernando de Lucas on 11/03/20.
//  Copyright © 2020 Fernando de Lucas. All rights reserved.
//

import Foundation

public struct json : Decodable {
    
    var response: CurrencyExchangeRate
    
    enum CodingKeys: String, CodingKey {
        case response =  "Realtime Currency Exchange Rate"
    }
    
}

public struct CurrencyExchangeRate: Decodable {
    var moedaOrigemCod : String
    var moedaOrigemDescricao  : String
    var moedaDestinoCod : String
    var moedaDestinoDescricao  : String
    var exchangeRate : String
    var ultimaAtualizacao : String
    var timeZone : String
    var bidPrice : String
    var askPrice : String
    
    
    enum CodingKeys: String, CodingKey {
        case moedaOrigemCod =  "1. From_Currency Code"
        case moedaOrigemDescricao = "2. From_Currency Name"
        case moedaDestinoCod = "3. To_Currency Code"
        case moedaDestinoDescricao = "4. To_Currency Name"
        case exchangeRate =  "5. Exchange Rate"
        case ultimaAtualizacao = "6. Last Refreshed"
        case timeZone = "7. Time Zone"
        case bidPrice = "8. Bid Price"
        case askPrice = "9. Ask Price"
    }
    
    init() {
        moedaOrigemCod = ""; moedaOrigemDescricao = ""; moedaDestinoCod = ""; moedaDestinoDescricao = ""; exchangeRate = ""; ultimaAtualizacao = ""; timeZone = ""; bidPrice = ""; askPrice = ""
    }
}


