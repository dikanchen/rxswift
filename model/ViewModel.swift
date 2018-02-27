//
//  ViewModel.swift
//  combinedcodex
//
//  Created by User on 2/24/18.
//  Copyright © 2018 dikan.chen. All rights reserved.
//
import Foundation

protocol Item {
    var name:String? {get}
}

struct viewmodel:Item{
    var name: String? = ""
}
/*protocol viewdelegate {
    func itemadded() -> ()
}*/
struct todoviewmodel{
    //var newtodoitem: String?
    init() {
        let pokemon1 = viewmodel(name: "Bulbasaur")
        let pokemon2 = viewmodel(name: "Ivysaur")
        let pokemon3 = viewmodel(name: "Venusaur")
        let pokemon4 = viewmodel(name: "Charmander")
        let pokemon5 = viewmodel(name: "Charmeleon")
        let pokemon6 = viewmodel(name: "Charizard")
        let pokemon7 = viewmodel(name: "Squirtle")
        let pokemon8 = viewmodel(name: "Wartortle")
        let pokemon9 = viewmodel(name: "Blastoise")
        let pokemon10 = viewmodel(name: "Caterpie")
        let pokemon11 = viewmodel(name: "Metapod")
        let pokemon12 = viewmodel(name: "Butterfree")
        let pokemon13 = viewmodel(name: "Weedle")
        let pokemon14 = viewmodel(name: "Kakuna")
        let pokemon15 = viewmodel(name: "Beedrill")
        let pokemon16 = viewmodel(name: "Pidgey")
        let pokemon17 = viewmodel(name: "Pidgeotto")
        let pokemon18 = viewmodel(name: "Pidgeot")
        let pokemon19 = viewmodel(name: "Rattata")
        let pokemon20 = viewmodel(name: "Raticate")
        
        let starwars1 = viewmodel(name: "Luke Skywalker")
        let starwars2 = viewmodel(name: "C-3PO")
        let starwars3 = viewmodel(name: "R2-D2")
        let starwars4 = viewmodel(name: "Darth Vader")
        let starwars5 = viewmodel(name: "Leia Organa")
        let starwars6 = viewmodel(name: "Owen Lars")
        let starwars7 = viewmodel(name: "Beru Whitesun lars")
        let starwars8 = viewmodel(name: "R5-D4")
        let starwars9 = viewmodel(name: "Biggs Darklighter")
        let starwars10 = viewmodel(name: "Obi-Wan Kenobi")
        let starwars11 = viewmodel(name: "Anakin Skywalker")
        let starwars12 = viewmodel(name: "Wilhuff Tarkin")
        let starwars13 = viewmodel(name: "Chewbacca")
        let starwars14 = viewmodel(name: "Han Solo")
        let starwars15 = viewmodel(name: "Greedo")
        let starwars16 = viewmodel(name: "Jabba Desilijic Tiure")
        let starwars17 = viewmodel(name: "Wedge Antilles")
        let starwars18 = viewmodel(name: "Jek Tono Porkins")
        let starwars19 = viewmodel(name: "Yoda")
        let starwars20 = viewmodel(name: "Palpatine")
        
        pokemon.append(contentsOf: [pokemon1, pokemon2, pokemon3, pokemon4, pokemon5, pokemon6, pokemon7, pokemon8, pokemon9, pokemon10, pokemon11, pokemon12, pokemon13, pokemon14, pokemon15, pokemon16, pokemon17, pokemon18, pokemon19, pokemon20])
        starwars.append(contentsOf: [starwars1, starwars2, starwars3, starwars4, starwars5, starwars6, starwars7, starwars8, starwars9, starwars10, starwars11, starwars12, starwars13, starwars14, starwars15, starwars16, starwars17, starwars18, starwars19, starwars20])
        
    }
    var pokemon:[Item] = []
    var starwars:[Item] = []
}
