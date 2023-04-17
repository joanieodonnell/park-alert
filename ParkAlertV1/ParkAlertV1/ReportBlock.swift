//
//  ReportBlock.swift
//  ParkAlertV1
//
//  Created by Niyati Belathur on 4/12/23.
//

import SwiftUI

struct ReportBlock: View {
    var body: some View {
        //Rectangle.frame(width: 335, height: 380).foregroundColor(Color.white)
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 12).stroke(Color.black, lineWidth: 5).frame(width: 335, height: 380)
            
            
            Color.black.frame(width:335, height: 2).position(x: 195,y: 430)
            
            
            //figure out how to start text from same left aligned position
            
            VStack(alignment: .leading) {
                
                HStack {
                    
                    Text("Central Campus Garage").foregroundColor(Color("AccentColor")).multilineTextAlignment(.leading).padding(.bottom, 0.5)
                    
                    
                     
                    Text("Parking").foregroundColor(Color("AccentColor")).background(
                        
                        RoundedRectangle(cornerRadius: 10).frame(width:
                     
                        
                        
                        /*RoundedRectangle(cornerRadius: 120).stroke(Color("AccentColor")), lineWidth: 5).frame(width: 335, height: 380)
                         */
                     )
                     
                }
                
                Text("Game Day - No Parking").font(.title2).fontWeight(.bold).foregroundColor(Color("AccentColor")).multilineTextAlignment(.leading).padding(.bottom, 0.5)
                
                Text("All cars must be removed from the...")
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            }.position(x: 180, y: 487)
            
            
            
        }
        
        
        
        
    }
}

struct ReportBlock_Previews: PreviewProvider {
    static var previews: some View {
        ReportBlock()
    }
}
