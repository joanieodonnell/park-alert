//
//  StartView.swift
//  Park-Alert
//
//  Created by Joanie O'Donnell on 4/20/23.
//



import SwiftUI

struct StartView: View {
    // MARK: - Properties
    @State private var username: String = ""
    @State private var password: String = ""
    
    // MARK: - View
    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                Color("BackgroundColor")
                    .ignoresSafeArea(.all)
                
                VStack(alignment: .center, spacing: 16) {
                    // App logo
                    AppLogo()
                    
                    // App title
                    ParkAlertText()
                    
                    // Description of the app
                    Description()
                    
                    // Button to start reporting incidents
                    NavigationLink(destination: HomeScreenView()) {
                        Text("Begin reporting")
                            .font(.headline)
                            .foregroundColor(Color("AccentColor"))
                            .frame(maxWidth: .infinity)
                            .frame(width: 300.0, height: 50.0)
                            .background(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                    }
                }
            }
        }
    }
    
    // MARK: - Subviews
    struct AppLogo: View {
        var body: some View {
            Image("app") // app logo image
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding(.all, 30)
        }
    }

    struct ParkAlertText: View {
        var body: some View {
            Text("ParkAlert")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color("AccentColor"))
                
        }
    }

    struct Description: View {
        var body: some View {
            Text("Stay alert and in the know")
                .font(.headline)
                .fontWeight(.regular)
                .foregroundColor(Color("AccentColor"))
                .multilineTextAlignment(.center)
                .padding(.all, 30)
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
