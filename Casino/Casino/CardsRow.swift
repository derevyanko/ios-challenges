//
//  CardsRow.swift
//  Casino
//
//  Created by Oleg Derevyanko on 19.08.2021.
//

import SwiftUI

struct CardsRow: View {
    @Binding var row: [Card]
    
    var body: some View {
        HStack {
            CardView(card: $row[0])
            
            CardView(card: $row[1])
            
            CardView(card: $row[2])
        }.padding(.horizontal)
    }
}

struct CardsRow_Previews: PreviewProvider {
    static var previews: some View {
        CardsRow(row: Binding.constant(
            Array(
                    repeating: Card(
                        fruitId: 0,
                        fruitName: "apple",
                        backgroundColor: Color.white
                    ),
                count: 3
                )
            )
        )
    }
}
