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
    
    @State private var creditsCount = 1_000
    private let spinCost = 10
    private let rowMatchPay = 50
    private let diagonalMatchPay = 75
    
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
                }
                .padding()
                .background(Color.black.opacity(0.5))
                .cornerRadius(40)
                .scaleEffect(1.5)
                
                Spacer()
                
                Text("Credits: \(creditsCount)")
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(30)
                
                Spacer()
                
                VStack {
                    ForEach(cards, id: \.self) { row in
                        CardsRow(row: Binding.constant(row))
                    }
                }
                
                Spacer()
                
                Button(action: {
                    self.creditsCount -= spinCost
                    
                    for rowIndex in 0...cards.count - 1 {
                        for cardIndex in 0...cards[rowIndex].count - 1 {
                            var card = cards[rowIndex][cardIndex]
                            
                            card.backgroundColor = Color.white
                            card.fruitId = Int.random(in: 0...fruitsSymbols.count - 1)
                            card.fruitName = fruitsSymbols[card.fruitId]
                            
                            cards[rowIndex][cardIndex] = card
                        }
                        
                        if cards[rowIndex][0].fruitId == cards[rowIndex][1].fruitId && cards[rowIndex][1].fruitId == cards[rowIndex][2].fruitId {
                            cards[rowIndex][0].backgroundColor = Color.green
                            cards[rowIndex][1].backgroundColor = Color.green
                            cards[rowIndex][2].backgroundColor = Color.green
                            
                            self.creditsCount += rowMatchPay
                        }
                    }
                    
                    if cards[0][0].fruitId == cards[1][1].fruitId && cards[1][1].fruitId == cards[2][2].fruitId {
                        cards[0][0].backgroundColor = Color.green
                        cards[1][1].backgroundColor = Color.green
                        cards[2][2].backgroundColor = Color.green
                        
                        self.creditsCount += diagonalMatchPay
                    }
                    
                    if cards[0][2].fruitId == cards[1][1].fruitId && cards[1][1].fruitId == cards[2][0].fruitId {
                        cards[0][2].backgroundColor = Color.green
                        cards[1][1].backgroundColor = Color.green
                        cards[2][0].backgroundColor = Color.green
                        
                        self.creditsCount += diagonalMatchPay
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
                .shadow(radius: 5)
                
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
