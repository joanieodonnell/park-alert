//
//  ReportView.swift
//  Park-Alert
//
//  Created by Joanie O'Donnell on 3/26/23.
//

import SwiftUI
struct ReportView: View {
    @State private var incidentTitle: String = ""
       @State private var incidentDescription: String = ""
       @State private var incidentLocation: String = ""
       @State private var incidentDate = Date()
    
    @State private var selectedLot: String = ""
    @State private var lotOptions = ["Lot A", "Lot B", "Lot C", "Lot D"]
    
    @State private var selectedReportType = "Towing"
       let reportTypes = ["Towing", "Special Event", "Ticketing"]
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    
                    Picker("Lot", selection: $selectedLot) {
                        ForEach(lotOptions.filter {
                            $0.lowercased().contains(selectedLot.lowercased()) ||
                            selectedLot.isEmpty
                        }, id: \.self) {
                            Text($0)
                        }
                        
                        }
                    Section(header: Text("Report Details")) {
                                      Picker("Report Type", selection: $selectedReportType) {
                                          ForEach(reportTypes, id: \.self) { type in
                                              Text(type)
                    
                    
                    TextField("Description", text: $incidentDescription)
                        
                        DatePicker("Date", selection: $incidentDate, displayedComponents: [.date])
                    }
                    
                    
                    
                    
                    
                    Section {
                        Button(action: {
                            // Logic to save the incident report
                            // and navigate back to the previous view
                        }) {
                            Text("Report")
                        }
                    }
                }
            .navigationTitle("Report Incident")
            .navigationBarTitleDisplayMode(.large)
            }
           
                        
                        
            
            
            
            
          
            
        }
    }


struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
