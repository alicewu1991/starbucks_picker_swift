//
//  ContentView.swift
//  StarbucksPicker
//
//  Created by alice on 2023/2/10.
//

import SwiftUI

struct ContentView: View {
    let drinks=["咖啡星冰樂", "冷萃咖啡","經典巧克力", "冰拿鐵","摩卡", "焦糖瑪其朵", "冰美式咖啡", "濃縮咖啡", "冰醇濃抹茶咖啡"]
    @State private var selectedDrinks:String?
   
   
   var body: some View {
       VStack(spacing:30) {
        Image("bubble-tea")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.trailing, 40.0)

        
        Text("今天喝什麼？")
            .font(.largeTitle)
            .bold()
        
       
        Text(selectedDrinks ?? "還沒設定")
            .font(.title)
            .bold()
        
        Button("就喝這個吧"){
            selectedDrinks=drinks.shuffled().filter{ $0 != selectedDrinks}.first
                
        }.font(.largeTitle).bold()
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
