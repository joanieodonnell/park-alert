//
//  PreferenceView.swift
//  Park-Alert
//
//  Created by Joanie O'Donnell on 3/26/23.
//

import SwiftUI

struct PreferenceView: View {
    @State private var selectedLots = Set<String>()

    var body: some View {
        NavigationView {
            VStack {
                Text("Choose your preferred lots for notifications:")
                    .font(.title)
                    .foregroundColor(Color("AccentColor"))
                    .padding()

                ScrollView {
                    LazyVStack(alignment: .leading, spacing: 20) {
                        ForEach(locations, id: \.self) { location in
                            Text(location)
                                .font(.headline)
                                .foregroundColor(Color("AccentColor"))
                                .padding(.leading)
                            
                            ForEach(lots[location]!, id: \.self) { lot in
                                Toggle(isOn: Binding(get: {
                                    self.selectedLots.contains(lot)
                                }, set: { newValue in
                                    if newValue {
                                        self.selectedLots.insert(lot)
                                    } else {
                                        self.selectedLots.remove(lot)
                                    }
                                })) {
                                    Text(lot)
                                        .foregroundColor(Color("AccentColor"))
                                        .padding(.leading)
                                }
                            }
                        }
                    }
                }
                .padding(.bottom)

                Spacer()

                Button(action: {
                    print("Get Notified button tapped.")
                    // Implement your notification logic here
                }) {
                    Text("Get Notified")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("AccentColor"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
            }
            .navigationBarTitle("Preferred Lots", displayMode: .large)
        }
    }
}

let locations = ["West Campus", "Southside", "Northside"]
let lots = [
    "West Campus": ["Lot 72A", "Lot 72B"],
    "Southside": ["Lot 40A", "Lot 40B"],
    "Northside": ["Lot 30A", "Lot 30C"]
]

struct PreferenceView_Previews: PreviewProvider {
    static var previews: some View {
       PreferenceView()
    }
}
