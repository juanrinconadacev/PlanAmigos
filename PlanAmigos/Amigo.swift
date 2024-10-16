

import Foundation

var amigos: [Amigo] = []

class Amigo {
    var nombre: String = "Invitado"
    var email: String?
    var telefono: Int?
    var localizacion: String?
    
    init() {
        // Constructor vacío
    }
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    static func validarTelefono(telefono: Int) -> Bool {
        return telefono > 99999999 && telefono < 999999999 && String(telefono).first == "6"
    }
    
    
    static private func tieneCaracteresEspeciales(texto: String) -> Bool {
        let especiales = "!¡$%/()?¿+-*,.;:{}[]"
        for letra in texto {
            for especial in especiales {
                if letra == especial {
                    return true
                }
            }
        }
        return false
    }

    static func validarNombre(nombre: String) -> Bool {
        if nombre.isEmpty {
            return false
        }
        let maximo10Letras = nombre.count <= 10
        let primeraLetra = !nombre.first!.isNumber
        let sinEspeciales = !tieneCaracteresEspeciales(texto: nombre)
        return maximo10Letras && primeraLetra && sinEspeciales
    }
}
