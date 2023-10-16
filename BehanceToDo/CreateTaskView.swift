//
//  CreateTaskView.swift
//  BehanceToDo
//
//  Created by Vivek Sehrawat on 16/10/23.
//

import SwiftUI

struct CreateTaskView: View {
    var body: some View {
        NavigationStack{
            VStack{
                LabeledTextFieldView(label: "Main task name", placeholder: "Enter your task")
                LabeledTextFieldView(label: "Sub-task name", placeholder: "Enter your Sub-task name")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading )
            .navigationTitle("Create Task")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CreateTaskView()
}
