//
//  ReportBlock.swift
//  Park-Alert
//
//  Created by Joanie O'Donnell on 4/20/23.
//

import SwiftUI

struct ReportBlock: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image("ticket")
                .resizable()
                .scaledToFit()
                .cornerRadius(16)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.black, lineWidth: 2)
                )
                .frame(height: 200)
                .padding(.horizontal, 16)
            
            HStack {
                Text("Lot 72A")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color("AccentColor"))
                
                Spacer()
                
                
                Text("Ticketing")
                    .foregroundColor(Color("AccentColor"))
                    .font(.subheadline)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color("AccentColor"), lineWidth: 2))
                
                
            }
            
            Text("10:30 AM")
                    .foregroundColor(.black)
                    .font(.subheadline)

            Text("Starting from front")
                .foregroundColor(Color(.black))
        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.black, lineWidth: 2)
                .background(Color.white)
        )
        .padding(.horizontal, 16)
    }
}

struct ReportBlock_Previews: PreviewProvider {
    static var previews: some View {
        ReportBlock()
    }
}
