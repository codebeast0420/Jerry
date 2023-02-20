//
//  ContentView.swift
//  Jerry
//
//  Created by Adam Sims on 2/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image("nav")
                    .resizable()
                    .frame(width: 100, height:100)
                    .offset(y: -50)
                    .offset(x: -15)
                
                Text("功德排行榜")
                    .foregroundColor(.white)
                    .offset(y: -50)
                    .offset(x: 150)
                    .font(.system(size: 17))
                Spacer()
            }

            Image("wooden_fish")
                .resizable()
                .frame(width: 280, height: 200)
                .offset(y: 300)
            Text("120")
                .foregroundColor(.white)
                .offset(y: -320)
                .font(.system(size: 24))
            Divider()
            Text("功德+1")
                .foregroundColor(.white)
                .offset(y: -60)
                .offset(x: 100)
                .font(.system(size: 28))
            
            Spacer()
        }
        .padding()
        .background(Color.black)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
