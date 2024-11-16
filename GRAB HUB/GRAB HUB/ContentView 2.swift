//
//  ContentView.swift
//  GRAB HUB
//
//  Created by Jack Carlisle on 15/11/2024.
//

import SwiftUI

struct GRAB: Identifiable {
    let id = UUID()
    let Imagename: String
    let Name: String
    let Description: String
    let url: URL
}

struct GRABHUB{
    static let GRABlinks = [
        GRAB (Imagename: "GRAB", Name: "GRAB Level Browser", Description: "Search for the latest GRAB levels", url: URL(string: "https://grabvr.quest/levels")!),
        GRAB (Imagename: "IndexModding", Name: "Index Modding", Description: "Mod GRAB with Index's GRAB Tools", url: URL(string: "https://grab-tools.live/")!),
    ]
}
