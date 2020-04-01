//
//  menuRepetir.swift
//  nanoSwiftcChallenge
//
//  Created by Fernando de Lucas on 13/03/20.
//  Copyright © 2020 Fernando de Lucas. All rights reserved.
//

import Foundation

func menuRepetir(f : () -> ()){
    var input :String? = nil
    while input == nil || input == ""{
        print("")
        print ("1 - Repetir Operação")
        print ("2 - Voltar para o Menu Principal")
        print ("3 - Encerrar Programa")
        print("\t \t \t \t Selecione a opção:", terminator: "")
        input = readLine()
        if let entrada = input, validaRepetir(txt: entrada){
            switch entrada{
            case "1":
                f()
            case "2":
                menu()
            case "3":
                exit(EXIT_SUCCESS)
            default:
                print("Contact the administrator")
            }
        } else {
            print ("Entrada Inválida")
            input = ""
        }
        }}
    
    
    

func validaRepetir(txt: String) -> Bool{
    return txt == "1" || txt == "2" || txt == "3"
}
