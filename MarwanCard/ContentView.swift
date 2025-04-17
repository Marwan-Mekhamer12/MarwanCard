//
//  ContentView.swift
//  MarwanCard
//
//  Created by Marwan Mekhamer on 17/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.40, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("marwan")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
            
                Text("Marwan Mekhamer")
                    .font(.title)
                    .foregroundColor(.white)
                Text("Junior iOS Developer")
                    .foregroundColor(.white)
                Divider()
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 380, height: 40)
                    .foregroundColor(.white)
                    .overlay(HStack {
                        Image(systemName: "phone.fill")
                            .foregroundColor(.green)
                        Text("+20 102 675 2345")
                        
                    })
                    .padding(.all)
                
                    
            }
        }
//        .padding() // If I show this line... the safe area is true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
