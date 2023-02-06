//
//  ViewController.swift
//  Pruducst12
//
//  Created by Mac on 6/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let viewmodel:Viewmodel = Viewmodel1()
    private var drinks :[drink] = []{
        didSet{
            TableView.reloadData()
        }
    }
    
   
    @IBOutlet weak var TableView: UITableView!
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        kokteli()
        koktel()
    }
    private func koktel(){
        TableView.dataSource = self
        TableView.delegate = self
        TableView.register(.init(nibName:String(describing: TableViewCell.self),bundle: nil
                                 ),
                           forCellReuseIdentifier: TableViewCell.resuldID
                           )
    }
        
        private func kokteli(){
        Task{
            
            do{
                let drink  = try await NetworkManeger.shared.kokteli()
                self.drinks = drink.drinks
                
                
            }catch{
                print(error.localizedDescription)
            }
        
            
        }
        
        
    }
}
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        drinks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.resuldID) as! TableViewCell
        let model = drinks[indexPath.row]
        cell.display(item: model)
        return cell
    }
    
    
}
extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        100
    }
}
