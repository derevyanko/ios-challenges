//
//  ContentView.swift
//  Casino
//
//  Created by Oleg Derevyanko on 19.08.2021.
//

import SwiftUI

struct Card: Hashable {
    var fruitId: Int
    var fruitName: String
    var backgroundColor: Color
}

struct ContentView: View {
    @State var cards = [[Card]](
        repeating: Array(
            repeating: Card(
                fruitId: 0,
                fruitName: "apple",
                backgroundColor: Color.white
            ),
            count: 3
        ),
        count: 3
    )
    
    private let fruitsSymbols = ["apple", "cherry", "star"]
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("Xorum Casino")
                        .bold()
                        .foregroundColor(Color.white)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(1.5)
                
                Spacer()
                
                Text("Credits: \(1000)")
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()
                
                VStack {
                    ForEach(cards, id: \.self) { row in
                        CardsRow(row: Binding(row))
                    }
                }
                
                Spacer()
                
                Button(action: {
                    for rowIndex in 0...cards.count - 1 {
                        for cardIndex in 0...cards[rowIndex].count - 1 {
                            var card = cards[rowIndex][cardIndex]
                            
                            card.backgroundColor = Color.white
                            card.fruitId = Int.random(in: 0...fruitsSymbols.count - 1)
                            card.fruitName = fruitsSymbols[card.fruitId]
                        }
                    }
                }, label: {
                    Text("Spin")
                        .bold()
                        .padding()
                        .padding(.horizontal, 40)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(20)
                })
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
