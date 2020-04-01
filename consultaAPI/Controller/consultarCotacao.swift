//
//  consultarCotacao.swift
//  nanoSwiftcChallenge
//
//  Created by Fernando de Lucas on 13/03/20.
//  Copyright © 2020 Fernando de Lucas. All rights reserved.
//

import Foundation
func consultarCotacao(){
    var test = CurrencyExchangeRate ()
    
    var result : json
    
    result = json(response: test)
    
    let semaphore = DispatchSemaphore(value: 0)
    
    func handleData(data: Data?, response: URLResponse?, error: Error?){
        if error != nil || data == nil {
            print("Client error!")
            return
        }
        
        guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
            print("Server error!")
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let jsonFinal = try decoder.decode(json.self, from: data!)
            result = jsonFinal
            semaphore.signal()
        } catch  {
            print(error)
        }
    }
    
    let retornoUrl = criarUrl()
    let link = retornoUrl.0
    let moedaOrigem = retornoUrl.1
    let moedaDestino = retornoUrl.2
    
    guard let requisicao = URL(string: link) else {fatalError()}
    
    var requisicaoHttp = URLRequest(url: requisicao)
    
    requisicaoHttp.httpMethod = "GET"
    
    URLSession.shared.dataTask(with: requisicaoHttp, completionHandler: handleData).resume()
    
    semaphore.wait()
    
    print("A cotação de \(moedaOrigem!) para \(moedaDestino!) é: \(result.response.exchangeRate)")
    
    
    menuRepetir(f: consultarCotacao)
    
}


