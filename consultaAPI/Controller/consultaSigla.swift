//
//  consultaSigla.swift
//  nanoSwiftcChallenge
//
//  Created by Fernando de Lucas on 13/03/20.
//  Copyright © 2020 Fernando de Lucas. All rights reserved.
//

import Foundation

func consultaSigla(){
    print("")
    let descricoes = ["Dólar", "Real Brasileiro", "Euro", "Bitcoin"]
    let moedaCod = ["USD", "BRL", "EUR", "BTC"]
    for i in 0...3{
        print("\(padding(descricoes[i], 20)) \(moedaCod[i])")
    }
    menu()
}
