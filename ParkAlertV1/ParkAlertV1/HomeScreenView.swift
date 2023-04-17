//
//  HomeView.swift
//  ParkAlertV1
//
//  Created by Niyati Belathur on 3/26/23.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {

        
        VStack(alignment: .center) {
            
            Rectangle().fill(Color.accentColor).border(Color.accentColor).frame(width: 395, height: 100).ignoresSafeArea().overlay(
            
                HStack(alignment: .center, spacing: 180) {
                    
                    Text("Park Alert").foregroundColor(.white).font(.system(size: 30)).padding(.top, 30.0)
                    Image(systemName: "arrow.left.arrow.right").font(.system(size: 26)).padding(.top, 30.0).foregroundColor(.white)
                }
                
            )

            Spacer().frame(width: 395, height: 599).padding(.bottom, 60)
            
            //Lazy V Stack somehow in here!
            LazyVStack {
                
                
            }
           
            Rectangle().fill(Color.white).border(Color(.black)).frame(width: 395, height: 80).overlay(
            
                HStack(alignment: .center, spacing: 105.0) {
                    
                    Image(systemName: "house").font(.system(size: 26))
                    Image(systemName:"plus.circle").font(.system(size: 26))
                    Image(systemName: "person").font(.system(size: 26))
                    
                }.padding(.bottom, 10)
            
            )//end of overlay
 
        }
 
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
