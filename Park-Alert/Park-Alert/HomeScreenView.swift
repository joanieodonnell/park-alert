//  HomeScreenView.swift
//  Park-Alert
//
//  Created by Joanie O'Donnell on 4/20/23.
//

import SwiftUI

struct HomeScreenView: View {
    @State private var showMenu = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("ParkAlert")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("AccentColor"))
                        .padding(.bottom, 20)
                        .padding(.leading, 20)
                    Spacer()
                    Button(action: {
                        showMenu = true
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .font(.system(size: 26))
                            .foregroundColor(Color("AccentColor"))
                            .padding(.top, -10)
                            .padding(.trailing, 20)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }
                .padding(.top, 20)

                LazyVStack {
                    // content here
                }

                Spacer()

                HStack {
                    Spacer()

                    NavigationLink(destination: ReportIncidentView()) {
                        Image(systemName: "plus.app")
                            .font(.system(size: 26))
                            .foregroundColor(Color("AccentColor"))
                    }
                    .frame(maxWidth: .infinity)

                    Spacer()
                }
                .padding(.horizontal)
                .padding(.bottom, 30)
            }
            .accentColor(Color("AccentColor"))
            .navigationBarHidden(true)
            .navigationBarItems(leading:
                EmptyView()
            )
            .overlay(
                MenuView(showMenu: $showMenu)
                    .offset(x: showMenu ? 0 : -UIScreen.main.bounds.width)
                    
            )
        }
    }
}

struct MenuView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            NavigationLink(destination: PreferenceView()) {
                Text("Notifications")
                    .font(.headline)
                    .foregroundColor(Color("AccentColor"))
            }
            
            NavigationLink(destination: InfoView()) {
                Text("Info")
                    .font(.headline)
                    .foregroundColor(Color("AccentColor"))
            }
            
            Button(action: {
                // handle pay with parkmobile action here
                showMenu = false
            }) {
                Text("Pay with Parkmobile")
                    .font(.headline)
                    .foregroundColor(Color("AccentColor"))
            }
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .background(Color.white)
        .edgesIgnoringSafeArea(.bottom)
        .onTapGesture {
            showMenu = false
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
