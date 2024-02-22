//
//  TLButton.swift
//  ToDoList
//
//  Created by Yeabsira Sefr on 2/19/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            //Attempt log in
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
            }
        }
    }
}

#Preview {
    TLButton(title: "Value",
             background: .pink) {
            //Action  
    }
}
