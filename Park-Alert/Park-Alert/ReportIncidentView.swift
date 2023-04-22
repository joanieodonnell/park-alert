//
//  ReportIncidentView.swift
//  Park-Alert
//
//  Created by Joanie O'Donnell on 3/26/23.
//

import SwiftUI
import UIKit

struct ReportIncidentView: View {
    @State private var selectedLot = "Lot 72A"
    @State private var selectedType = "Towing"
    @State private var description = ""
    @State private var date = Date()
    @State private var selectedImages: [UIImage] = []

    let lots = ["Lot 72A", "Lot 72B", "Lot 100"]
    let types = ["Towing", "Special Event", "Ticketing"]

    var body: some View {
        NavigationView {
          
                VStack {
                    HStack {
                        Text("Report Incident")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("AccentColor"))
                            .padding(.leading, 20)
                        Spacer()
                    }
                    .padding(.top, 50)

                    
                    Form {
                        Section(header: Text("Select Parking Lot")
                                    .foregroundColor(Color("AccentColor"))) {
                            Picker("Choose a parking lot", selection: $selectedLot) {
                                ForEach(lots, id: \.self) {
                                    Text($0)
                                }
                            }
                            .pickerStyle(MenuPickerStyle())
                        }

                        Section(header: Text("Incident Type")
                                    .foregroundColor(Color("AccentColor"))) {
                            Picker("Choose incident type", selection: $selectedType) {
                                ForEach(types, id: \.self) {
                                    Text($0)
                                }
                            }
                            .pickerStyle(MenuPickerStyle())
                        }

                        Section(header: Text("Incident Description")
                                    .foregroundColor(Color("AccentColor"))) {
                            TextField("Provide a brief description", text: $description)
                        }

                        Section(header: Text("Incident Date & Time")
                                            .foregroundColor(Color("AccentColor"))) {
                            Text(dateString(date: date))
                        }

                        Section(header: Text("Attach Photos (Optional)")
                                    .foregroundColor(Color("AccentColor"))) {
                            Button(action: {
                                //navigate to new screen to add images to the report
                            }) {
                                Text("Add Photos")
                            }
                        }

                        Section {
                            Button(action: {
                                // Logic to save the incident report
                                // and navigate back to the previous view
                            }) {
                                Text("Submit Report")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color("AccentColor"))
                                    .cornerRadius(8)
                            }
                        }
                    }
                    .accentColor(Color("AccentColor"))
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }

    func dateString(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }


struct ReportIncidentView_Previews: PreviewProvider {
    static var previews: some View {
        ReportIncidentView()
    }
}
