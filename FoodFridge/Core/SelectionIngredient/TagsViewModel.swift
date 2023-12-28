//
//  TagsViewModel.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/28/23.
//

import Foundation

class TagsViewModel: ObservableObject {
    
    @Published var selectedTags: [String] = ["test"]
    
    func addSelectedTag(tag: String) {
        self.selectedTags.append(tag)
    }
    
}
