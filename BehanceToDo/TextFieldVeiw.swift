//
//  TextFieldVeiw.swift
//  BehanceToDo
//
//  Created by Vivek Sehrawat on 16/10/23.
//

import SwiftUI

struct LabeledTextFieldView: View {
    var label: String
    var placeholder: String
    
    @State private var textFieldText: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.system(size: 14))
                .foregroundColor(.red)
                .bold()
            
            TextField(placeholder, text: $textFieldText)
                .font(.system(size: 15))
                .bold()
                .padding(.all, 10)
                .frame(height: 50)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke( Color.gray, lineWidth: 1))
        }
        .padding( EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
    }
}

#Preview {

    LabeledTextFieldView(label: "Main Task name", placeholder: "Enter task name")
   
}
