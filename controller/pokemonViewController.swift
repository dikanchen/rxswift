//
//  pokemonViewController.swift
//  combinedcodex
//
//  Created by User on 2/26/18.
//  Copyright © 2018 dikan.chen. All rights reserved.
//

import UIKit
let namStr = ["Bulbasaur","Ivysaur","Venusaur","Charmander","Charmeleon","Charizard","Squirtle","Wartortle","Blastoise","Caterpie","Metapod","Butterfree","Weedle","Kakuna","Beedrill","Pidgey","Pidgeotto","Pidgeot","Rattata","Raticate","Spearow","Fearow","Ekans","Arbok","Pikachu","Raichu","Sandshrew","Sandslash","Nidoran♀","Nidorina","Nidoqueen","Nidoran♂","Nidorino","Nidoking","Clefairy","Clefable","Vulpix","Ninetales","Jigglypuff","Wigglytuff","Zubat","Golbat","Oddish","Gloom","Vileplume","Paras","Parasect","Venonat","Venomoth","Diglett","Dugtrio","Meowth","Persian","Psyduck","Golduck","Mankey","Primeape","Growlithe","Arcanine","Poliwag","Poliwhirl","Poliwrath","Abra","Kadabra","Alakazam","Machop","Machoke","Machamp","Bellsprout","Weepinbell","Victreebel","Tentacool","Tentacruel","Geodude","Graveler","Golem","Ponyta","Rapidash","Slowpoke","Slowbro","Magnemite","Magneton","Farfetch'd","Doduo","Dodrio","Seel","Dewgong","Grimer","Muk","Shellder","Cloyster","Gastly","Haunter","Gengar","Onix","Drowzee","Hypno","Krabby","Kingler","Voltorb","Electrode","Exeggcute","Exeggutor","Cubone","Marowak","Hitmonlee","Hitmonchan","Lickitung","Koffing","Weezing","Rhyhorn","Rhydon","Chansey","Tangela","Kangaskhan","Horsea","Seadra","Goldeen","Seaking","Staryu","Starmie","Mr. Mime","Scyther","Jynx","Electabuzz","Magmar","Pinsir","Tauros","Magikarp","Gyarados","Lapras","Ditto","Eevee","Vaporeon","Jolteon","Flareon","Porygon","Omanyte","Omastar","Kabuto","Kabutops","Aerodactyl","Snorlax","Articuno","Zapdos","Moltres","Dratini","Dragonair","Dragonite","Mewtwo","Mew"]
let imgStr = ["https://img.pokemondb.net/artwork/bulbasaur.jpg","https://img.pokemondb.net/artwork/ivysaur.jpg", "https://img.pokemondb.net/artwork/venusaur.jpg","https://img.pokemondb.net/artwork/charmander.jpg","https://img.pokemondb.net/artwork/charmeleon.jpg","https://img.pokemondb.net/artwork/charizard.jpg","https://img.pokemondb.net/artwork/squirtle.jpg","https://img.pokemondb.net/artwork/wartortle.jpg","https://img.pokemondb.net/artwork/blastoise.jpg","https://img.pokemondb.net/artwork/caterpie.jpg","https://img.pokemondb.net/artwork/metapod.jpg","https://img.pokemondb.net/artwork/butterfree.jpg","https://img.pokemondb.net/artwork/weedle.jpg","https://img.pokemondb.net/artwork/kakuna.jpg","https://img.pokemondb.net/artwork/beedrill.jpg","https://img.pokemondb.net/artwork/pidgey.jpg","https://img.pokemondb.net/artwork/pidgeotto.jpg","https://img.pokemondb.net/artwork/pidgeot.jpg","https://img.pokemondb.net/artwork/rattata.jpg","https://img.pokemondb.net/artwork/raticate.jpg","https://img.pokemondb.net/artwork/spearow.jpg","https://img.pokemondb.net/artwork/fearow.jpg","https://img.pokemondb.net/artwork/ekans.jpg","https://img.pokemondb.net/artwork/arbok.jpg","https://img.pokemondb.net/artwork/pikachu.jpg","https://img.pokemondb.net/artwork/raichu.jpg","https://img.pokemondb.net/artwork/sandshrew.jpg","https://img.pokemondb.net/artwork/sandslash.jpg","https://img.pokemondb.net/artwork/nidoran-f.jpg","https://img.pokemondb.net/artwork/nidorina.jpg","https://img.pokemondb.net/artwork/nidoqueen.jpg","https://img.pokemondb.net/artwork/nidoran-m.jpg","https://img.pokemondb.net/artwork/nidorino.jpg","https://img.pokemondb.net/artwork/nidoking.jpg","https://img.pokemondb.net/artwork/clefairy.jpg","https://img.pokemondb.net/artwork/clefable.jpg","https://img.pokemondb.net/artwork/vulpix.jpg","https://img.pokemondb.net/artwork/ninetales.jpg","https://img.pokemondb.net/artwork/jigglypuff.jpg","https://img.pokemondb.net/artwork/wigglytuff.jpg","https://img.pokemondb.net/artwork/zubat.jpg","https://img.pokemondb.net/artwork/golbat.jpg","https://img.pokemondb.net/artwork/oddish.jpg","https://img.pokemondb.net/artwork/gloom.jpg","https://img.pokemondb.net/artwork/vileplume.jpg","https://img.pokemondb.net/artwork/paras.jpg","https://img.pokemondb.net/artwork/parasect.jpg","https://img.pokemondb.net/artwork/venonat.jpg","https://img.pokemondb.net/artwork/venomoth.jpg","https://img.pokemondb.net/artwork/diglett.jpg","https://img.pokemondb.net/artwork/dugtrio.jpg","https://img.pokemondb.net/artwork/meowth.jpg","https://img.pokemondb.net/artwork/persian.jpg","https://img.pokemondb.net/artwork/psyduck.jpg","https://img.pokemondb.net/artwork/golduck.jpg","https://img.pokemondb.net/artwork/mankey.jpg","https://img.pokemondb.net/artwork/primeape.jpg","https://img.pokemondb.net/artwork/growlithe.jpg","https://img.pokemondb.net/artwork/arcanine.jpg","https://img.pokemondb.net/artwork/poliwag.jpg","https://img.pokemondb.net/artwork/poliwhirl.jpg","https://img.pokemondb.net/artwork/poliwrath.jpg","https://img.pokemondb.net/artwork/abra.jpg","https://img.pokemondb.net/artwork/kadabra.jpg","https://img.pokemondb.net/artwork/alakazam.jpg","https://img.pokemondb.net/artwork/machop.jpg","https://img.pokemondb.net/artwork/machoke.jpg","https://img.pokemondb.net/artwork/machamp.jpg","https://img.pokemondb.net/artwork/bellsprout.jpg","https://img.pokemondb.net/artwork/weepinbell.jpg","https://img.pokemondb.net/artwork/victreebel.jpg","https://img.pokemondb.net/artwork/tentacool.jpg","https://img.pokemondb.net/artwork/tentacruel.jpg","https://img.pokemondb.net/artwork/geodude.jpg","https://img.pokemondb.net/artwork/graveler.jpg","https://img.pokemondb.net/artwork/golem.jpg","https://img.pokemondb.net/artwork/ponyta.jpg","https://img.pokemondb.net/artwork/rapidash.jpg","https://img.pokemondb.net/artwork/slowpoke.jpg","https://img.pokemondb.net/artwork/slowbro.jpg","https://img.pokemondb.net/artwork/magnemite.jpg","https://img.pokemondb.net/artwork/magneton.jpg","https://img.pokemondb.net/artwork/farfetchd.jpg","https://img.pokemondb.net/artwork/doduo.jpg","https://img.pokemondb.net/artwork/dodrio.jpg","https://img.pokemondb.net/artwork/seel.jpg","https://img.pokemondb.net/artwork/dewgong.jpg","https://img.pokemondb.net/artwork/grimer.jpg","https://img.pokemondb.net/artwork/muk.jpg","https://img.pokemondb.net/artwork/shellder.jpg","https://img.pokemondb.net/artwork/cloyster.jpg","https://img.pokemondb.net/artwork/gastly.jpg","https://img.pokemondb.net/artwork/haunter.jpg","https://img.pokemondb.net/artwork/gengar.jpg","https://img.pokemondb.net/artwork/onix.jpg","https://img.pokemondb.net/artwork/drowzee.jpg","https://img.pokemondb.net/artwork/hypno.jpg","https://img.pokemondb.net/artwork/krabby.jpg","https://img.pokemondb.net/artwork/kingler.jpg","https://img.pokemondb.net/artwork/voltorb.jpg","https://img.pokemondb.net/artwork/electrode.jpg","https://img.pokemondb.net/artwork/exeggcute.jpg","https://img.pokemondb.net/artwork/exeggutor.jpg","https://img.pokemondb.net/artwork/cubone.jpg","https://img.pokemondb.net/artwork/marowak.jpg","https://img.pokemondb.net/artwork/hitmonlee.jpg","https://img.pokemondb.net/artwork/hitmonchan.jpg","https://img.pokemondb.net/artwork/lickitung.jpg","https://img.pokemondb.net/artwork/koffing.jpg","https://img.pokemondb.net/artwork/weezing.jpg","https://img.pokemondb.net/artwork/rhyhorn.jpg","https://img.pokemondb.net/artwork/rhydon.jpg","https://img.pokemondb.net/artwork/chansey.jpg","https://img.pokemondb.net/artwork/tangela.jpg","https://img.pokemondb.net/artwork/kangaskhan.jpg","https://img.pokemondb.net/artwork/horsea.jpg","https://img.pokemondb.net/artwork/seadra.jpg","https://img.pokemondb.net/artwork/goldeen.jpg","https://img.pokemondb.net/artwork/seaking.jpg","https://img.pokemondb.net/artwork/staryu.jpg","https://img.pokemondb.net/artwork/starmie.jpg","https://img.pokemondb.net/artwork/mr-mime.jpg","https://img.pokemondb.net/artwork/scyther.jpg","https://img.pokemondb.net/artwork/jynx.jpg","https://img.pokemondb.net/artwork/electabuzz.jpg","https://img.pokemondb.net/artwork/magmar.jpg","https://img.pokemondb.net/artwork/pinsir.jpg","https://img.pokemondb.net/artwork/tauros.jpg","https://img.pokemondb.net/artwork/magikarp.jpg","https://img.pokemondb.net/artwork/gyarados.jpg","https://img.pokemondb.net/artwork/lapras.jpg","https://img.pokemondb.net/artwork/ditto.jpg","https://img.pokemondb.net/artwork/eevee.jpg","https://img.pokemondb.net/artwork/vaporeon.jpg","https://img.pokemondb.net/artwork/jolteon.jpg","https://img.pokemondb.net/artwork/flareon.jpg","https://img.pokemondb.net/artwork/porygon.jpg","https://img.pokemondb.net/artwork/omanyte.jpg","https://img.pokemondb.net/artwork/omastar.jpg","https://img.pokemondb.net/artwork/kabuto.jpg","https://img.pokemondb.net/artwork/kabutops.jpg","https://img.pokemondb.net/artwork/aerodactyl.jpg","https://img.pokemondb.net/artwork/snorlax.jpg","https://img.pokemondb.net/artwork/articuno.jpg","https://img.pokemondb.net/artwork/zapdos.jpg","https://img.pokemondb.net/artwork/moltres.jpg","https://img.pokemondb.net/artwork/dratini.jpg","https://img.pokemondb.net/artwork/dragonair.jpg","https://img.pokemondb.net/artwork/dragonite.jpg","https://img.pokemondb.net/artwork/mewtwo.jpg","https://img.pokemondb.net/artwork/mew.jpg"]
struct Feature:Decodable{
    let forms:[pokename]
    let height:Int
    let is_default:Bool
    let order:Int
    let base_experience:Int
    let weight:Int
}
struct pokename:Decodable{
    let name:String
}

class pokemonViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var abilityarr = [Feature]()
    let url_img = URL(string:imgStr[myIndex])
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var pokeimg:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let apiURL = "\(myIndex+1)"
        guard let url = URL(string:"http://pokeapi.co/api/v2/pokemon/\(apiURL)/") else{return}
        URLSession.shared.dataTask(with: url){(data,response,error) in
            guard let data = data else{return}
            do{if error == nil{
                self.abilityarr = try
                    [JSONDecoder().decode(Feature.self, from: data)]
                //for mainarr in self.weightarr{
                for mainarr in self.abilityarr{
                    print(mainarr.forms, ";" , mainarr.base_experience, ";", mainarr.height)
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                //}
                }
                
            }catch let jsonErr{
                print("Error",jsonErr)
            }
        }.resume()
        
        let session = URLSession(configuration: .default)
        let getImageFromUrl = session.dataTask(with: url_img!){ (data, response, error) in
            if let e = error{
                print("Error:\(e)")
            }
            else{
                if (response as? HTTPURLResponse) != nil{
                    if let imageData = data{
                        let image = UIImage(data: imageData)
                        DispatchQueue.main.async {
                            self.pokeimg.image = image
                        }
                    }else{
                        print("no image found")
                    }
                }else{
                    print("no response from server")
                }
            }
        }
        getImageFromUrl.resume()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.abilityarr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! pokemonTableViewCell
        cell.heightLabel.text = "Height: \(abilityarr[indexPath.row].height)"
        cell.weightLabel.text = "Weight: \(abilityarr[indexPath.row].weight)"
        cell.nameLabel.text = "name: \(namStr[myIndex])"
        cell.orderLabel.text = "Order: \(abilityarr[indexPath.row].order)"
        cell.baseLabel.text = "Base experience: \(abilityarr[indexPath.row].base_experience)"
        cell.defaultLabel.text = "Default: \(abilityarr[indexPath.row].is_default)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
