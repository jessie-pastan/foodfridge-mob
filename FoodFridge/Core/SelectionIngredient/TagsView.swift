//
//  TagsView.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/27/23.
//

import SwiftUI
struct TagsView: View {
    
    let items : [String]
    var groupItems: [[String]] = [[String]]()
    let screenWidth = UIScreen.main.bounds.width
    @State private var selectedItems = Set<String>()
    @EnvironmentObject var vm: TagsViewModel
    
    init(items: [String]) {
        
        self.items = items
        
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
            VStack {
                Text("Carbohydrate")
                    .font(Font.custom(CustomFont.appFontRegular.rawValue, size: 15))
                    .foregroundStyle(.button4)
                    .padding()
                    .padding(.vertical, -10)
                    .background(Color(.button1))
                    .clipShape(RoundedRectangle(cornerRadius: 20.0))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            LazyVStack {
                ForEach(groupItems, id:  \.self) { subItems in
                    HStack {
                        ForEach(subItems, id: \.self) { tag in
                            Text(tag)
                                .font(Font.custom(CustomFont.appFontRegular.rawValue, size: 12))
                                .lineLimit(1)
                                .padding()
                                  .padding(.vertical, -10)
                                .background(selectedItems.contains(tag) ? (Color(.button4)) : (Color(.button3)) )
                                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                                .onTapGesture {
                                    //update tag to prompt
                                    vm.addSelectedTag(tag: tag)
                                    print("selected tag = \(tag)")
                                    print("update added list:\(vm.selectedTags)")
                                    
                                    //update tag background color in sheet
                                    if selectedItems.contains(tag) {
                                        selectedItems.remove(tag)
                                        //update prompt list
                                        vm.deleteSelectedTag(tag: tag)
                                    }else {
                                        selectedItems.insert(tag)
                                    }
                                }
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    TagsView(items: ["bread", "jasmine rice", "rice noodles", "egg noodles", "wholewheat bread", "spagetthi", "glass noodles", "potato", "corn", "pasta","quinou", "oatmeal", "pita", "tortilla", "corn bread", "taro", "sweet potato"])
}
