//
//  criarUrl.swift
//  nanoSwiftcChallenge
//
//  Created by Fernando de Lucas on 13/03/20.
//  Copyright © 2020 Fernando de Lucas. All rights reserved.
//

import Foundation

func criarUrl() -> (String, String?, String?) {
    
    var link = "https://www.alphavantage.co/query?function=CURRENCY_EXCHANGE_RATE&from_currency="
    let contLink = "&to_currency="
    let apiKey = "&apikey=W7U851QBYFJ4X81C"
    
    var moedaOrigem : String? = nil
    while (moedaOrigem == nil){
        print("Insira a sigla da moeda origem: ", terminator: "")
        
        if let moedaInput = readLine(), validaMoeda(txt: moedaInput.uppercased()){
            link = link + moedaInput.uppercased() + contLink
            moedaOrigem = moedaInput
        } else {
            print("Entrada ou Moeda inválida")
            moedaOrigem = nil
        }
    }
    
    var moedaDestino : String? = nil
    while (moedaDestino == nil){
        print("Insira a sigla da moeda destino: ", terminator: "")
        
        if let moedaInput = readLine(), validaMoeda(txt: moedaInput.uppercased()){
            link = link + moedaInput.uppercased() + apiKey
            moedaDestino = moedaInput
        } else {
            print("Entrada ou Moeda inválida")
            moedaDestino = nil
        }
    }
    
    return (link, moedaOrigem?.uppercased(), moedaDestino?.uppercased())
}

func validaMoeda(txt : String) -> Bool {
    return txt == "BRL" || txt == "USD" || txt == "EUR" || txt == "BTC"
}
