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
            Form {
                Section(header: Text("Parking Lot")
                    .foregroundColor(Color("AccentColor"))) {
                    Picker("Select a parking lot", selection: $selectedLot) {
                        ForEach(lots, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                
                Section(header: Text("Type of Incident")
                    .foregroundColor(Color("AccentColor"))) {
                    Picker("Select a type of incident", selection: $selectedType) {
                        ForEach(types, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                
                Section(header: Text("Description")
                    .foregroundColor(Color("AccentColor"))) {
                    TextField("Enter a description", text: $description)
                }
                
                Section(header: Text("Date and Time")
                    .foregroundColor(Color("AccentColor"))) {
                    
                        //TextField("", text: "\(.date)")
                        
                        // DatePicker("Select a date and time", selection: $date, displayedComponents: [.date, .hourAndMinute])
                }
                
                Section(header: Text("Optional Photos")
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
                    })
                    {
                        
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
            .navigationTitle("Report Incident")
            .navigationBarTitleDisplayMode(.large)
            .accentColor(Color("AccentColor"))
        }
    }
    
    
    struct ReportIncidentView_Previews: PreviewProvider {
        static var previews: some View {
            ReportIncidentView()
        }
    }
}
