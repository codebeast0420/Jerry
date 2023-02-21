//
//  RankView.swift
//  Jerry
//
//  Created by Adam Sims on 2/20/23.
//

import SwiftUI

struct HighRankView: View {
    var image: String
    var name: String
    var value: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable().frame(width: 30, height: 40)
            Text(name)
            Spacer()
            Text(value)
        }
        .offset(y:-30)
        .padding(.horizontal, 30)
        .foregroundColor(Color.white)
        .font(.system(size: 20))
        .fontWeight(.medium)
        .overlay(Rectangle().frame(height: 1).foregroundColor(.white).padding(.horizontal, 30).padding(.vertical, -30), alignment: .bottom)
    }
}

struct OtherRankView: View {
    var rank: Int
    var name: String
    
    var value: String
    
    var body: some View {
        HStack {
            Text("\(rank)")
                .offset(x: 8)
            Text(name)
                .offset(x: 20)
            Spacer()
            Text(value)
        }
        .offset(y:-30)
        .padding(.horizontal, 30)
        .padding(.bottom, 11)
        .foregroundColor(Color.white)
        .font(.system(size: 20))
        .fontWeight(.medium)
        .overlay(Rectangle().frame(height: 1).foregroundColor(.white).padding(.horizontal, 30).padding(.vertical, -30), alignment: .bottom)
    }
}

struct RankView: View {
    var body: some View {
        VStack {
            
            HStack {
                Text("<<")
                    .foregroundColor(.white)
                    .font(.system(size:25))
                    .padding()
                Spacer()
            }
            
            VStack {
                Group {
                    HStack {
                        Image("title-1")
                            .resizable().frame(width: 30, height: 40)
                        Text("湖南省")
                        Spacer()
                        Text("152,183,902")
                    }
                    .padding(30)
                    .foregroundColor(Color.white)
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .overlay(Rectangle().frame(height: 1).foregroundColor(.white).padding(.horizontal, 30).padding(.vertical, -30), alignment: .bottom)
                    
                    HighRankView(image: "title-1", name: "广東省", value: "122,159,984")
                    
                    HighRankView(image: "title-1", name: "河南省", value: "24,589,984")
                    
                    ForEach(0..<10) {index in
                        OtherRankView(rank: index+4, name: "XXX省", value: "24,589,984")
                    }
                    VStack {
                        HStack{
                            Spacer()
                        }
                        Text("adf")
                        Text("adf")
                        Spacer()
                    }
                    .background(Color.white)
                    .cornerRadius(20)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .offset(y: -40)
                    .padding(.bottom, -40)
                }
                
            }
            .background(Color.black)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 2))
            .padding(20)
            
        }
        .background(Color.black)
    }
}

struct RankView_Previews: PreviewProvider {
    static var previews: some View {
        RankView()
    }
}
