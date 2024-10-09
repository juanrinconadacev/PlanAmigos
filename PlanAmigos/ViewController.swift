//
//  ViewController.swift
//  PlanAmigos
//
//  Created by user257503 on 10/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func aceptarPulsado(_ sender: UIButton) {
        let nombre = nombreTextField.text!
        let valido = Amigo.validarNombre(nombre: nombre)
        if !valido {
            nombreTextField.text = "Nombre inválido"
            nombreTextField.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        } else {
            let amigo = Amigo(nombre: nombre)
            // Cambiar texto del botón
            sender.setTitle("Amigo " + amigo.nombre + " añadido", for: .normal)
            sender.isEnabled = false // Desabilitar
            nombreTextField.text = "" // Borrar campo de texto
        }
    }
    
}

