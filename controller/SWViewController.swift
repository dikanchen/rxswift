//
//  SWViewController.swift
//  combinedcodex
//
//  Created by User on 2/26/18.
//  Copyright © 2018 dikan.chen. All rights reserved.
//

import UIKit
let SWimgStr = ["https://static.comicvine.com/uploads/scale_small/11/119711/2729995-luke.jpg","https://i.ebayimg.com/images/g/Ei4AAOSwYVlaPVVX/s-l225.jpg","https://biffbampop.files.wordpress.com/2009/05/r2d2.jpg","https://cdn.videogamesblogger.com/wp-content/uploads/2008/08/soul-calibur-4-darth-vader-model-artwork-small.jpg","https://avatarchamber.com/t/0/10/avatar-video-game-amp-leia-organa-carrie-fisher-2KK.md.jpg","https://i.pinimg.com/736x/45/72/22/45722298aa543bcbb74952481d785b99--lars-originals.jpg","https://i.pinimg.com/originals/20/8a/0e/208a0ed7ff713e36a385a3bd6765aaad.jpg","https://i.ebayimg.com/images/g/4qsAAOSwfpBaZvsp/s-l225.jpg","https://upload.wikimedia.org/wikipedia/en/9/90/Biggsdarklighter.jpg","https://vignette.wikia.nocookie.net/starwars/images/d/df/Masterobiwan.jpg/revision/latest/scale-to-width-down/250?cb=20080719000305","https://i.pinimg.com/236x/7d/ff/b3/7dffb3d17545ee670849abae14def0a5--anakin-darth-vader-star-wars-anakin-skywalker.jpg","https://vignette.wikia.nocookie.net/villains/images/5/5a/Grand_Moff_Tarkin.png/revision/latest/scale-to-width-down/300?cb=20121117122113","https://cdn.shopify.com/s/files/1/1782/0745/products/500pxl.300182-chewbacca-002.03_large.jpg?v=1493950341","https://vignette.wikia.nocookie.net/parody/images/c/c1/Han_Solo.png/revision/latest/scale-to-width-down/300?cb=20170422170621","https://mugenarchive.com/w/images/thumb/c/c6/Greedo.jpg/300px-Greedo.jpg","https://vignette.wikia.nocookie.net/villains/images/5/53/Jabba_the_Hutt_in_Return_of_the_Jedi_%281983%29.png/revision/latest/scale-to-width-down/300?cb=20170204091609","https://images-na.ssl-images-amazon.com/images/I/511FEwAdmyL._SY300_.jpg","https://houseofgozer.files.wordpress.com/2015/09/jek_porkins_sw_9257.jpg","https://pbs.twimg.com/profile_images/670705857353617409/ouGof5Qd_400x400.jpg","https://vignette.wikia.nocookie.net/starwars/images/9/99/Emperor_Palpatine.jpg/revision/latest/scale-to-width-down/300?cb=20130907112521","https://vignette.wikia.nocookie.net/banthapedia/images/6/64/415px-BobaFettMain2.jpg/revision/latest/scale-to-width-down/300?cb=20090901004519","https://dyn0.media.forbiddenplanet.com/products/000_Vd9ANuP.jpg.square-true_maxheight-285_size-285.jpg","https://mugenarchive.com/w/images/thumb/d/d2/Bossk.jpg/300px-Bossk.jpg","https://rr.img.naver.jp/mig?src=http%3A%2F%2Fimgcc.naver.jp%2Fkaze%2Fmission%2FUSER%2F20150510%2F53%2F5814303%2F16%2F230x345xb7324e4f101a0f8b760a2381.jpg%2F300%2F600&twidth=300&theight=600&qlt=80&res_format=jpg&op=r","https://vignette.wikia.nocookie.net/starwars/images/4/47/Lobothead.jpg/revision/latest/scale-to-width-down/350?cb=20080318144438","https://static.giantbomb.com/uploads/original/18/187593/2638444-ackbar.jpg","https://i.pinimg.com/originals/aa/b0/3f/aab03f4dee09e5098d43ed23b074e95d.jpg","https://i.pinimg.com/474x/d8/b6/a0/d8b6a04c04242d2a1244c4e4757f124c--pilot-costumes-freedom-fighters.jpg","https://vignette.wikia.nocookie.net/worldsgreatestheroes/images/2/2d/Wicket.png/revision/latest/scale-to-width-down/268?cb=20140518140850","https://scontent-sea1-1.cdninstagram.com/vp/5b10d69869d58b9fc56741ae318151eb/5AE3AABF/t51.2885-15/s480x480/e35/11275387_587192824752196_1892591508_n.jpg?ig_cache_key=MTAzNTc5MDA3MzIwMTA0Mzk2OQ%3D%3D.2","https://vignette.wikia.nocookie.net/star-wikiwars/images/7/7a/Qui-Gon_Jinn_1.jpg/revision/latest/scale-to-width-down/300?cb=20141124191715","https://vignette.wikia.nocookie.net/swfanon/images/5/57/NuteGunrayASWSMain.JPG/revision/latest?cb=20090125235843","https://vignette.wikia.nocookie.net/starwars/images/8/89/Valorum.jpg/revision/latest?cb=20080801152355","https://vignette.wikia.nocookie.net/starwars/images/b/b2/Padmegreenscrshot.jpg/revision/latest/scale-to-width-down/500?cb=20100423143631","https://chrismatthewsleg.files.wordpress.com/2008/05/jarjar.jpg?w=300&h=300","https://vignette.wikia.nocookie.net/darth/images/8/86/Tarpals.jpg/revision/latest?cb=20110301091315","https://timbailey.files.wordpress.com/2008/05/boss-nass.jpg?w=300&h=282","https://vignette.wikia.nocookie.net/starwars/images/4/4c/RicOlieHS-SWE.png/revision/latest?cb=20120226230538","https://arbuztoday.ru/wp-content/uploads/2016/06/4243535.jpg","https://vignette.wikia.nocookie.net/starwars/images/f/ff/Sebulba2.jpg/revision/latest?cb=20080411131418","https://i.pinimg.com/736x/64/93/ca/6493ca87a9053133b4bfed6ae44bb3c0--queen-amidala-padm%C3%A9-amidala.jpg","https://i.pinimg.com/736x/f6/80/e5/f680e5262531a37f5775b19ee3a215c7--diy-stuff-watch.jpg","https://www.ikoncollectables.com.au/sites/default/files/images/extra_images/SID300507--Star-Wars-Darth-Maul-Premium-Format-StatueH.jpg","https://i.pinimg.com/736x/a6/b4/5e/a6b45e5bf2bf12fff631a1622a3511d9--jabbas-palace-star-wars-characters.jpg","https://i.pinimg.com/236x/c3/ba/60/c3ba6008631e88a8846d5abd89636a93--aayla-secura-jedi.jpg","https://vignette.wikia.nocookie.net/starwars/images/0/05/Finalmoments.jpg/revision/latest/scale-to-width-down/200?cb=20060614131230","https://vignette.wikia.nocookie.net/starwars/images/b/b0/Dud_Bolt.jpg/revision/latest?cb=20061130092516","https://vignette.wikia.nocookie.net/starwars/images/5/57/GasganoHS-SWE.jpg/revision/latest?cb=20120112024006","https://vignette.wikia.nocookie.net/starwars/images/7/7f/Cropped_Quadinaros.png/revision/latest?cb=20150630012608","https://upload.wikimedia.org/wikipedia/en/thumb/b/bf/Mace_Windu.png/220px-Mace_Windu.png","https://static.giantbomb.com/uploads/scale_small/0/8572/338543-ki_adi_mundi.jpg","https://vignette.wikia.nocookie.net/darth/images/8/8f/Kit_Smile.jpg/revision/latest?cb=20080427115210","https://pm1.narvii.com/6372/b44318389a268358d76a0eb9f9f4c854280cc865_hq.jpg","https://vignette.wikia.nocookie.net/starwars/images/b/ba/AdiGallia.jpg/revision/latest?cb=20080126123820","https://static.comicvine.com/uploads/original/11111/111114474/4205584-saesee+tiin.jpg","https://vignette.wikia.nocookie.net/starwars/images/6/66/Yarael_Poof_Canon.jpeg/revision/latest?cb=20151012223150","https://vignette.wikia.nocookie.net/starwars/images/1/1f/PloKoon-SWFB.png/revision/latest?cb=20160910061353","https://vignette.wikia.nocookie.net/starwars/images/3/37/Mas_Amedda_SWCT.png/revision/latest?cb=20160630051412","https://vignette.wikia.nocookie.net/starwars/images/5/52/Gregar_Typho.jpg/revision/latest?cb=20090903192036","https://vignette.wikia.nocookie.net/starwars/images/b/b6/Cord%C3%A9_-_SW_Card_Trader.png/revision/latest?cb=20160713053607","https://vignette.wikia.nocookie.net/starwars/images/3/36/ClieggLarsHS-SWE.jpg/revision/latest?cb=20120421063121","https://vignette.wikia.nocookie.net/starwars/images/9/93/Poggle_the_lesser_-_sw_card_trader.png/revision/latest?cb=20160707212132","https://vignette.wikia.nocookie.net/vsbattles/images/8/85/Luminara_UnduliRender.png/revision/latest?cb=20170402180419","https://static.comicvine.com/uploads/original/14/149056/4448465-barriss+offee.jpg","https://vignette.wikia.nocookie.net/starwars/images/1/18/Dormesenate.jpg/revision/latest?cb=20070506233854","https://vignette.wikia.nocookie.net/starwars/images/f/f1/Count_Dooku_headshot_gaze.jpg/revision/latest?cb=20071218042012","https://vignette.wikia.nocookie.net/starwars/images/5/50/Bail_Organa_Mug.jpg/revision/latest?cb=20080823033853","https://vignette.wikia.nocookie.net/starwars/images/c/cc/JangoFett-OP.jpg/revision/latest?cb=20100202215525","https://vignette.wikia.nocookie.net/starwars/images/7/7a/CVD_Zam.jpg/revision/latest?cb=20070223140107","https://vignette.wikia.nocookie.net/starwars/images/6/6c/DexterHS-SWE.jpg/revision/latest?cb=20111106014007","https://vignette.wikia.nocookie.net/starwars/images/7/73/Lama_Su.jpg/revision/latest?cb=20080117165735","https://vignette.wikia.nocookie.net/starwars/images/9/9c/TaunWe.jpg/revision/latest?cb=20080117164920","https://vignette.wikia.nocookie.net/starwars/images/4/44/Jocasta_Nu.jpg/revision/latest?cb=20090909121527","https://images-na.ssl-images-amazon.com/images/I/41KsoWRbdGL._SL500_AC_SS350_.jpg","https://vignette.wikia.nocookie.net/starwars/images/a/a5/Wat_Tambor.png/revision/latest?cb=20160930030006","https://vignette.wikia.nocookie.net/starwars/images/6/6f/SanHill_hs.jpg/revision/latest/scale-to-width-down/499?cb=20080117160044","https://vignette.wikia.nocookie.net/starwars/images/4/44/Shaak_Ti_Big_Headshot.jpg/revision/latest/scale-to-width-down/500?cb=20130421193922","https://lumiere-a.akamaihd.net/v1/images/open-uri20150608-27674-1empmi4_e1f04d9f.jpeg?region=0%2C0%2C1200%2C675","https://vignette.wikia.nocookie.net/starwars/images/3/37/Tarfful_RotS.png/revision/latest?cb=20140825183910","https://vignette.wikia.nocookie.net/starwars/images/8/80/Raymus_card_trader.png/revision/latest?cb=20170716200353","https://vignette.wikia.nocookie.net/starwars/images/e/ec/SlyMooreIsWatchingYouPoop-OfficialPix.jpg/revision/latest?cb=20130913002333","https://vignette.wikia.nocookie.net/starwars/images/4/43/Tion_Medon.jpg/revision/latest/scale-to-width-down/350?cb=20091130182814","https://lumiere-a.akamaihd.net/v1/images/finn-main_952e10d2.jpeg?region=0%2C0%2C1560%2C878&width=768","https://upload.wikimedia.org/wikipedia/en/a/af/Rey_Star_Wars.png","https://vignette.wikia.nocookie.net/starwars/images/2/2d/Star_Wars_Poe_Dameron_1_Movie_Variant_Textless.jpg/revision/latest?cb=20160317192549","https://vignette.wikia.nocookie.net/starwars/images/6/68/BB8-Fathead.png/revision/latest/scale-to-width-down/500?cb=20161108050455","https://vignette.wikia.nocookie.net/starwars/images/0/02/Phasma.png/revision/latest/scale-to-width-down/500?cb=20171231052405"]

struct SWFeature:Decodable{
    let name:String
    let height:String
    let mass:String
    let hair_color:String
    let skin_color:String
    let eye_color:String
    let birth_year:String
    let gender:String
    let homeworld:String
}
class SWViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var swimg: UIImageView!
    var characterarr = [SWFeature]()
    let url_img = URL(string:SWimgStr[myIndex])
    var apiURL = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
                            self.swimg.image = image
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
        
        if myIndex < 17{
            apiURL = "\(myIndex+1)"
        }else{
            apiURL = "\(myIndex+2)"
        }
        guard let url = URL(string:"https://swapi.co/api/people/\(apiURL)/") else{return}
        URLSession.shared.dataTask(with: url){(data,response,error) in
            guard let data = data else{return}
            do{if error == nil{
                self.characterarr = try
                    [JSONDecoder().decode(SWFeature.self, from: data)]
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                //}
                }
                
            }catch let jsonErr{
                print("Error",jsonErr)
            }
            }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characterarr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SWTableViewCell
        cell.nameLabel.text = "Name: \(characterarr[indexPath.row].name)"
        cell.heightLabel.text = "Height: \(characterarr[indexPath.row].height)"
        cell.massLabel.text = "Height: \(characterarr[indexPath.row].mass)"
        cell.hairLabel.text = "Hair Color: \(characterarr[indexPath.row].hair_color)"
        cell.skinLabel.text = "Skin Color: \(characterarr[indexPath.row].skin_color)"
        cell.eyeLabel.text = "Eye Color: \(characterarr[indexPath.row].eye_color)"
        cell.birthLabel.text = "Birth year: \(characterarr[indexPath.row].birth_year)"
        cell.genderLabel.text = "Gender: \(characterarr[indexPath.row].gender)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
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
