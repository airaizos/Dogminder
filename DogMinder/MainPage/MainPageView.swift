//
//  MainPageView.swift
//  DogMinder
//
//  Created by Adrian Iraizos Mendoza on 13/12/22.
//

import SwiftUI

struct MainPageView: View {
    
    let iconSize:CGFloat = 100
    let toDos = ["27.Dic 10:00 Vacuna Kelly","29.Dic 10:00 Bañar a Nube","06.Ene Celo Kelly"]
    var configButton = UIButton.Configuration.filled()
    
    var body: some View {

        VStack{
            Text("Dogminder")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundColor(.pink)
            ZStack{
                Circle()
                    .frame(width: 200, height: 200)
                Image(systemName: "pawprint.fill")
                    .font(.system(size: 120))
                    .foregroundColor(.white)
            }
            .frame(width: 400, height: 250
            )
            .foregroundColor(.teal)
            List(toDos, id: \.self) { toDo in
                Text(toDo)
            }.listStyle(.plain)
            
            .foregroundColor(.gray)
            .fontWeight(.bold)
            HStack {
                
                Button(action: {}) { Image(systemName: "person.circle.fill")}
                    .font(.system(size: iconSize))
                    .foregroundColor(.indigo)
                    .padding()
                 
                Button(action: {}) {Image(systemName: "note.text")}
                    .font(.system(size: iconSize))
                    .foregroundColor(.brown)
                    .padding()
            }
            .frame(width: 100,height: 100)
            HStack{
                Button(action: {}) {Image(systemName: "app.badge.checkmark")}
                    .font(.system(size: iconSize))
                    .foregroundColor(.orange)
                    .padding()
                
                Button(action: {}) {Image(systemName: "wallet.pass")}
                    .font(.system(size: iconSize))
                    .foregroundColor(.purple)
                    .padding()
            }
            Spacer()
            
        }
    }
        
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
