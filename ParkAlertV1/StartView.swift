//
//  StartView.swift
//  ParkAlertV1
//
//  Created by Niyati Belathur on 3/26/23.
//

import SwiftUI

struct StartView: View {

    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 16){
            ParkAlertText()
            LoginInstruction()
        
        TextField("Username", text: $username)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(8)
                                .padding(.all, 16)
            SecureField("Password", text: $password)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(8)
                                .padding([.leading, .bottom, .trailing], 16.0)
            NavigationLink(destination: StartView()) {
                Text("Begin reporting")
                    .font(.headline)
                    .foregroundColor(Color("AccentColor"))
                    .frame(maxWidth: .infinity)
                    .padding(.all, 15.0)
                    .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                    .background(Color.white)
                    .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.black, lineWidth: 2)
                        )
                    .cornerRadius(8)
    
                
            }
            
            NavigationLink(destination: HomeScreenView()) {
                Text("Continue as a viewer")
                    .font(.headline)
                    .foregroundColor(Color("AccentColor"))
                    .frame(maxWidth: .infinity)
                    .padding(.all, 15.0)
                    .frame(width: 300.0, height: 50.0)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth: 2)
                    )
                    .cornerRadius(8)
                  
                
            }
        }
    }
}
struct LoginInstruction: View {
    var body: some View {
        Text("Get started by creating an account to notify others of incidents, or continue as a viewer to stay in the know")
                .font(.headline)
                .fontWeight(.regular)
                .foregroundColor(Color("AccentColor"))
                .multilineTextAlignment(.center)
                .padding(.all, 23.0)
        }
    }
struct ParkAlertText: View {
    var body: some View {
        Text("ParkAlert")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color("AccentColor"))
            .padding(.bottom, 20)
        
        
    }
    
struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
}
