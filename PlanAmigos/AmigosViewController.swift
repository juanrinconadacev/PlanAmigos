//
//  AmigosViewController.swift
//  PlanAmigos
//
//  Created by user257503 on 10/16/24.
//

import UIKit

class AmigosViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var amigosTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        amigosTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        amigos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAmigo")
        celda?.textLabel?.text = amigos[indexPath.row].nombre
        return celda!
    }
        
}
