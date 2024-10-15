//
//  ViewController.swift
//  PlanAmigos
//
//  Created by user257503 on 10/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var aceptarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inicio()
    }

    @IBAction func aceptarPulsado(_ sender: UIButton) {
        if nombreValido() {
            crearAmigo(nombre: nombreTextField.text!)
        }
    }
    
    
    @IBAction func textoCambiado(_ sender: Any) {
        nombreValido()
    }
    
    func nombreValido() -> Bool {
        let nombre = nombreTextField.text!
        let valido = Amigo.validarNombre(nombre: nombre)
        if nombre.isEmpty {
            inicio()
        } else if !valido {
            error()
        } else {
            escribiendo()
        }
        return valido
    }
    
    func inicio() {
        aceptarButton.setTitle("Aceptar", for: .normal)
        aceptarButton.isEnabled = false
    }
    
    func escribiendo() {
        aceptarButton.setTitle("Aceptar", for: .normal)
        aceptarButton.isEnabled = true
    }
    
    func error() {
        aceptarButton.setTitle("Nombre inválido", for: .normal)
        aceptarButton.isEnabled = false
    }
    
    func crearAmigo(nombre: String) {
        let amigo = Amigo(nombre: nombre)
        performSegue(withIdentifier: "irAPantallaAmigo", sender: nil)
    }
    
}

