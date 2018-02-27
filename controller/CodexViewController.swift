//
//  CodexViewController.swift
//  combinedcodex
//
//  Created by User on 2/24/18.
//  Copyright © 2018 dikan.chen. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

var myIndex = 0

class CodexViewController: UIViewController {

    
    
    @IBOutlet weak var tableView: UITableView!
    var viewModel =  todoviewmodel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if apiStr == "http://pokeapi.co/api/v2/pokemon/?limit=949&offset=0/"{
            let objArray: Observable<[Item]> = Observable.just(viewModel.pokemon)
            objArray.bind(to: tableView.rx.items(cellIdentifier: "Cell")){
                index, item, cell in
                if let cellToUse = cell as? TableViewCell {
                    cellToUse.Label1.text = item.name
                }
                }.disposed(by: disposeBag)
            tableView.rx.modelSelected(Item.self).subscribe(onNext: {
                item in
                print(item.name)
            }).disposed(by: disposeBag)
            tableView.rx.itemSelected.subscribe(onNext: {
                [weak self] IndexPath in
                if (self?.tableView.cellForRow(at: IndexPath) as? TableViewCell) != nil{
                    //cell.Label1.text = "new value"
                    print(IndexPath[1])
                    myIndex = IndexPath[1]
                    print(myIndex)
                    self?.performSegue(withIdentifier: "detail", sender: self)
                }
            }).disposed(by: disposeBag)
            
        }
        else{
            let objArray: Observable<[Item]> = Observable.just(viewModel.starwars)
            objArray.bind(to: tableView.rx.items(cellIdentifier: "Cell")){
                index, item, cell in
                if let cellToUse = cell as? TableViewCell {
                    cellToUse.Label1.text = item.name
                }
                }.disposed(by: disposeBag)
            tableView.rx.modelSelected(Item.self).subscribe(onNext: {
                item in
                print(item.name)
            }).disposed(by: disposeBag)
            tableView.rx.itemSelected.subscribe(onNext: {
                [weak self] IndexPath in
                if (self?.tableView.cellForRow(at: IndexPath) as? TableViewCell) != nil{
                    //cell.Label1.text = "new value"
                    print(IndexPath[1])
                    myIndex = IndexPath[1]
                    print(myIndex)
                    self?.performSegue(withIdentifier: "SWdetail", sender: self)
                }
            }).disposed(by: disposeBag)
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
