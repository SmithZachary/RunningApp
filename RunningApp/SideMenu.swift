//
//  SideMenu.swift
//  RunningApp
//
//  Created by Zach Smith on 9/15/21.
//

import SwiftUI
import UIKit

struct SideMenu : View {
    
    @State private var buttonIndex = 0
    @State private var isToggle = false
    
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    
                    MenuButton(imageName: "plus", menuName: "Lets Get Started",
                               buttonIndex: self.buttonIndex) {
                        self.buttonIndex = 0
                        withAnimation{
                            self.isToggle.toggle()
                        }
                    }
                    
                    Spacer()
                    
                    MenuButton(imageName: "plus", menuName: "Profile",
                               buttonIndex: self.buttonIndex) {
                        self.buttonIndex = 1
                        withAnimation{
                            self.isToggle.toggle()
                        }
                    }
                    
                    Spacer()
                    
                    MenuButton(imageName: "plus", menuName: "Goals",
                               buttonIndex: self.buttonIndex) {
                        self.buttonIndex = 2
                        withAnimation{
                            self.isToggle.toggle()
                        }
                    }
                    
                    Spacer()
                    
                    MenuButton(imageName: "plus", menuName: "Run Pals",
                               buttonIndex: self.buttonIndex) {
                        self.buttonIndex = 3
                        withAnimation{
                            self.isToggle.toggle()
                        }
                    }
                    
                    Spacer()
                    
                    MenuButton(imageName: "plus", menuName: "Settings",
                               buttonIndex: self.buttonIndex) {
                        self.buttonIndex = 4
                        withAnimation{
                            self.isToggle.toggle()
                        }
                    }
                }.frame(height: 400)
                .position(x: 100, y: 300)
                
                Spacer()
            }
        
           
            
            VStack(spacing: 0) {
                HStack(spacing: 1) {
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .frame(width: 25, height: isToggle ? 25 : 20)
                        .rotationEffect(.degrees(isToggle ? 90 : 0))
                        .onTapGesture {
                            isToggle.toggle()
                        }
                    Spacer(minLength: 0)
                }
                .padding(.top, CGFloat(60))
                .padding(.leading, 30)
                
                if buttonIndex == 0 {
                    HomeView()
                }
                if buttonIndex == 1 {
                    Profile()
                }
                if buttonIndex == 2 {
                    Profile()
                }
                if buttonIndex == 3 {
                    Profile()
                }
            }.background(Color.white)
            .cornerRadius(25)
            .offset(x: isToggle ? UIScreen.main.bounds.width / 2 : 0, y: self.isToggle ? 0 : 0)
            .animation(Animation.linear(duration: 0.3))
        }
        .background(Color(hex: "13547a")).ignoresSafeArea()
    }
}
struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu()
    }
}
