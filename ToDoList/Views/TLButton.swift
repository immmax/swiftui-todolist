//
//  TLButton.swift
//  ToDoList
//
//  Created by Maxim Datskiy on 9/30/23.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                    
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "Title", background: .red) {
        //action
    }
}
