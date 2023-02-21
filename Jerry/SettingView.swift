//
//  RankView.swift
//  Jerry
//
//  Created by Adam Sims on 2/20/23.
//

import SwiftUI

struct First: View {
    var body: some View {
        HStack{
            Image("white-fish").resizable().frame(width: 30, height: 45)
                .offset(x: -6)
        }
    }
}

struct FishView: View {
    var image: String
    var body: some View {
        Image(image).resizable().frame(width: 30, height: 45)
    }
}

struct QuestionView: View {
    var body: some View {
        Image("question").resizable().frame(width: 55, height: 45).padding(.horizontal, -9.5)
    }
}

struct SelView: View {
    var body: some View {
        Image("yellow-circle").resizable().frame(width: 50, height: 42).offset(x:-175, y:10)
            .padding(.bottom, -50)
        HStack {
            First()
            FishView(image: "red-fish")
            FishView(image: "green-fish")
            Group{
                ForEach(0..<6){index in
                    QuestionView()
                }
                .offset(x:5)
            }
        }
        HStack {
            ForEach(0..<9){index in
                QuestionView()
            }
        }
        HStack {
            ForEach(0..<9){index in
                QuestionView()
            }
        }
        HStack {
            ForEach(0..<9){index in
                QuestionView()
            }
        }
    }
}

struct ControlView: View {
    @State private var isVibration = false
    @State private var isAuto = false
    @State private var volumn: Double = 0
    @State private var autoSpeed: Double = 0
    var body: some View {
        HStack {
            Text("悬浮文字 1").offset(x:-2,y:5)
            Spacer()
            VStack{
                HStack{
                    Spacer()
                }
                Text("功德 + 1")
            }.overlay(Rectangle().frame(height: 1).foregroundColor(Color.gray).offset(y:5),alignment: .bottom)
            
        }
        Divider()
        Divider()
        HStack{
            Text("自动敲击").frame(width: 80)
            Image("back").resizable().frame(width: 43, height: 35).padding(.leading,-15)
           
            Text("震动").offset(x:20)
            Toggle("",isOn: $isVibration).offset(x:10)
            Text("自动敲击").frame(width: 80)
                .offset(x:20)
            Toggle("",  isOn: $isAuto)
        }.offset(y:5)
        Divider()
        Image("music").resizable().frame(width: 30, height: 30).padding(.top, -45).offset(x:-94, y:-3)
        HStack{
            VStack{
                Text("音量").offset(x: -47)
                Slider(value: $volumn).accentColor(Color.green).scaleEffect(0.7)
                    .frame(width: 225).offset(x:17)
            }
            VStack{
                Text("自动速度").offset(x: -55)
                Slider(value: $autoSpeed).accentColor(Color.green).scaleEffect(0.7).frame(width: 225).offset(x:-10)
            }
        }
        Divider()
        Button("功德排行榜"){
            print("功德排行榜")
        }.frame(width: 250,height: 50)
            .background(Color(red:1, green:0, blue:0.3)).cornerRadius(20)
    }
}

struct SettingView: View {

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
                HStack {
                    Text("自动敲击")
                }
                SelView()
                Spacer()
                ControlView()
            }
            .foregroundColor(.white)
            .background(Color.black)
            .padding()
            Spacer()
            Spacer(minLength: 100)
            
        }
        .background(Color.black)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
