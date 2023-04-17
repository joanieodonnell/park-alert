//
//  LotTest.swift
//  ParkAlertV1
//
//  Created by Niyati Belathur on 3/26/23.
//

import Foundation

struct Item: Identifiable {
    
    let id = UUID()
    let title: String
    let children: [Item]?
    
}
