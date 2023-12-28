//
//  TagViewPrompt.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/28/23.
//

import SwiftUI

struct TagsViewPrompt: View {
   
    var groupItems: [[String]] = [[String]]()
    let screenWidth = UIScreen.main.bounds.width
    @State private var selectedItems = Set<String>()
    var items: [String]
    @ObservedObject var vm = TagsViewModel()
    
    init(items: [String]) {
        self.items = items
        _vm = ObservedObject(initialValue: TagsViewModel())
        //groupItems = createGroupedItems(items: _vm.wrappedValue.selectedTags )
        groupItems = createGroupedItems(items: items)
        func createGroupedItems(items: [String]) -> [[String]] {
            var groupedItems: [[String]] = [[String]]()
            var tempItems: [String] = [String]()
            var width: CGFloat = 0
            for word in items {
                let label = UILabel()
                label.text = word
                label.sizeToFit()
                
                let labelWidth = label.frame.size.width + 32
                if (width + labelWidth + 32) < screenWidth {
                    width += labelWidth
                    tempItems.append(word)
                    
                }else {
                    width = labelWidth
                    groupedItems.append(tempItems)
                    tempItems.removeAll()
                    tempItems.append(word)
                }
                
            }
            groupedItems.append(tempItems)
            
            return groupedItems

        }
    }
    
    var body: some View {
        
        ScrollView {
            LazyVStack {
                ForEach(groupItems, id:  \.self) { subItems in
                    HStack {
                        ForEach(subItems, id: \.self) { item in
                                Text("\(item) x")
                                .font(Font.custom(CustomFont.appFontRegular.rawValue, size: 12))
                                .foregroundStyle(.black)
                                .lineLimit(1)
                                .padding()
                                .padding(.vertical, -10)
                                .background((Color(.button4))
                                .clipShape(RoundedRectangle(cornerRadius: 20.0)))
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
        TagsViewPrompt(items: ["testing"])
}
