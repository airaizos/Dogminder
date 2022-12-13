//
//  VetView.swift
//  DogMinder
//
//  Created by Adrian Iraizos Mendoza on 13/12/22.
//

import SwiftUI

struct VetView: View {
    var iconSize: CGFloat = 100
    let toDos = ["27.Dic 10:00 Vacuna Kelly","29.Dic 10:00 Bañar a Nube","06.Ene Celo Kelly"]
    let notes = ["Bolita ojo","Bolita abdomen"]
    
    var body: some View {
        VStack(alignment: .center) {
            
            ZStack {
                Circle()
                    .frame(width:200, height: 200)
                Image(systemName: "syringe")
                    .foregroundColor(.pink)
                    .font(.system(size: iconSize))
            }
            Text("""
                Veterinario Akima  Tosanos
                Teléfono: 57487744
                Dirección: Calle Arcadas 7
                Urgencias: 74157411
                """)
            .foregroundColor(.indigo)
            .fontWeight(.medium)
            
            List(toDos, id: \.self) { toDo in
                Text(toDo)
            }
            .listStyle(.grouped)
            
            Text("Recordar")
                .font(.title)
            List(notes, id: \.self) { note in
                Text(note)
                    .foregroundColor(.pink)
            }
        }
    }
}




struct VetView_Previews: PreviewProvider {
    static var previews: some View {
        VetView()
    }
}
