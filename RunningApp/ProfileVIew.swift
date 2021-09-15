//
//  About.swift
//  RunningApp
//
//  Created by Zach Smith on 9/15/21.
//

import SwiftUI
var name = Text("Zach")
struct Profile: View {
    var body: some View {
        
        VStack {
            Text("Profile")
           
            VStack{
                
                    Image("profile")
                        .resizable()
                        .frame(width: 100, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
            List {
                Text("Name: Runner Joe")
                Text("Lifetime Miles Ran: 43.12")
                Text("Fastest Mile: 6:40")
                Text("Last Run Length 3.5 Miles")
            
            }
            }
            
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
