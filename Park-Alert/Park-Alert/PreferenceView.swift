//  PreferenceView.swift
//  Park-Alert
//
//  Created by Joanie O'Donnell on 3/26/23.
//

import SwiftUI

struct PreferenceView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedLots = Set<String>()

    var body: some View {
        VStack {
            HStack {
                Text("Notifications")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("AccentColor"))
                    .padding(.bottom, 20)
                    .padding(.leading, 20)
                Spacer()
            }

            Text("Select lots to receive alerts for")
                .font(.title3)
                .fontWeight(.regular)
                .foregroundColor(Color("AccentColor"))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
                .padding(.bottom, 30.0)

            ScrollView {
                LazyVStack(alignment: .leading, spacing: 20) {
                    ForEach(locations, id: \.self) { location in
                        Text(location)
                            .font(.headline)
                            .foregroundColor(Color("AccentColor"))
                            .padding(.leading)

                        ForEach(lots[location]!, id: \.self) { lot in
                            HStack {
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
                                        .font(.headline)
                                        .fontWeight(.light)
                                        .foregroundColor(Color.black)
                                }
                                .toggleStyle(SwitchToggleStyle(tint: Color.accentColor))
                                Spacer()
                            }
                            .padding(.leading)
                        }
                    }
                }
            }

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
        .navigationBarTitleDisplayMode(.large)
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            
        })
       
    }

    let locations = ["West Campus", "Southside", "Northside"]
    let lots = [        "West Campus": ["Lot 72A", "Lot 72B"],
        "Southside": ["Lot 40A", "Lot 40B"],
        "Northside": ["Lot 30A", "Lot 30C"]
    ]
}


struct PreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceView()
    }
}
