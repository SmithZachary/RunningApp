//
//  HomeView.swift
//  RunningApp
//
//  Created by Zach Smith on 9/15/21.
//
import SwiftUI

struct HomeView: View {
    
    @State var isSelectSegment = false
    @State var isSelectedIndex = 0
    @State var isSelectGoSegment = false
    @State var isSelectedGoIndex = 0
    @State var timeRemaining = 0.0
    @ObservedObject var stopWatchManager = StopWatchManager()
    
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack {
            isSelectSegment ? Color(hex: "50803c").edgesIgnoringSafeArea(.all) : Color(hex: "E8F0FF").edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Lets Get Started!")
                            .font(.system(size: 25, weight: .medium))
                            .foregroundColor(isSelectSegment ? Color.white : Color.gray)
                        Text("Mule")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color(hex: "2f2f2f"))
                            
                    }
                    .padding(.leading, 30)
                    Spacer()
                    VStack{
                        Button(action:  {
                        
                            stopWatchManager.start()
                        isSelectGoSegment.toggle()
                    }) {
                        Text(isSelectGoSegment ? "Stop" : "Go")
                            .foregroundColor(isSelectGoSegment ? Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)) : .white)
                            .font(.system(size: 19))
                        }
                       
                    .frame(width: 80, height: 80)
                    .background(isSelectGoSegment ? Color.red : Color.green)
                    .cornerRadius(60)
                    .padding(.trailing, 60)
                        Text(String(format: "%.1f", stopWatchManager.secondsElapsed))
                            .font(.custom("Avenir", size: 40))
                                   
                    }
//                    Button(action: {
//                        isSelectGoSegment.toggle()
//                    }) {
//                        Text(isSelectGoSegment ? "Stop" : "Go")
//                    }
//                    .frame(width: 60, height: 60)
//                    .cornerRadius(50)
//                    .padding(.trailing, 30)
//                    .background(isSelectGoSegment ? Color.red : Color.green)
                   
                    
                }.padding(.top, 30)
   
                VStack(alignment: .leading) {
                    Text("What are we doing today?")
                        .font(.system(size: 17))
                        .foregroundColor(isSelectSegment ? Color.white : Color.gray)
                    HStack {
                        
                        //TODO:- Personal Button
                        Button(action: {
                            isSelectSegment.toggle()
                        }) {
                            Text("Running")
                                .foregroundColor(isSelectSegment ? Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)) : .white)
                                .font(.system(size: 19))
                        }
                        .frame(width: 180, height: 54)
                        .background(isSelectSegment ? .white : Color(hex: "2DB3E3"))
                        .cornerRadius(14)
                        
                        //TODO:- Business Button
                        Button(action: {
                            isSelectSegment.toggle()
                        }) {
                            Text("Walking")
                                .foregroundColor(isSelectSegment ? .white : Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)))
                                .font(.system(size: 19))
                        }
                        .frame(width: 180, height: 54)
                        .background(isSelectSegment ? Color(hex: "2DB3E3") : .white)
                        .cornerRadius(14)
                    }
                    .padding(.top, 40)
                    
                }.padding(.top, 20)
                
                VStack(alignment: .leading) {
                    Text("Where To? ")
                        .font(.system(size: 28, weight: .medium))
                        .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))).padding(.leading, 20)
                    
                    VStack {
                        HStack (spacing: 10) {
                            Button(action: {
                                isSelectedIndex = 0
                            }) {
                                VStack {
                                    Image("athletics-track")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    
                                    Text("Track")
                                        .font(.system(size: 19, weight: .medium))
                                        .offset(y: 20)
                                }
                                .frame(width: 180, height: 200)
                                .background(isSelectedIndex == 0 ? Color(hex: "E55238") : Color.white)
                                .cornerRadius(20)
                            }.foregroundColor(isSelectedIndex == 0 ? Color.white : Color.black)
                            
                            Button(action: {
                                isSelectedIndex = 1
                            }) {
                                VStack {
                                    Image("river-trail")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    
                                    Text("Trail")
                                        .font(.system(size: 19, weight: .medium, design: .default))
                                        .offset(y: 20)
                                    
                                }
                                .frame(width: 180, height: 200)
                                .background(isSelectedIndex == 1 ? Color(hex: "E55238") : Color.white)
                                .cornerRadius(20)
                            }.foregroundColor(isSelectedIndex == 1 ? Color.white : Color.black)
                        }
                        .padding()
                        
                        HStack (spacing: 10) {
                            
                            Button(action: {
                                isSelectedIndex = 2
                            }) {
                                VStack {
                                    Image("motorway")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    Text("Road")
                                        .font(.system(size: 19, weight: .medium, design: .default))
                                        .offset(y: 20)
                                }
                                .frame(width: 180, height: 200)
                                .background(isSelectedIndex == 2 ? Color(hex: "E55238") : Color.white)
                                .cornerRadius(20)
                            }.foregroundColor(isSelectedIndex == 2 ? Color.white : Color.black)
                            
                            Button(action: {
                                isSelectedIndex = 3
                            }) {
                                VStack {
                                    Image("sunset")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    Text("Beach")
                                        .font(.system(size: 19, weight: .medium, design: .default))
                                        .offset(y: 20)
                                }
                                .frame(width: 180, height: 200)
                                .background(isSelectedIndex == 3 ? Color(hex: "E55238") : Color.white)
                                .cornerRadius(20)
                            }.foregroundColor(isSelectedIndex == 3 ? Color.white : Color.black)
                        }
                    }
                }
                .padding(.top, 20)
                Spacer()
            }
        }
    }
    
}

