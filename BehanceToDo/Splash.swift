//
//  ContentView.swift
//  BehanceToDo
//
//  Created by Vivek Sehrawat on 28/08/23.
//

import SwiftUI

struct Splash: View {
    var body: some View {
        VStack{
            Spacer()
            Image("splash_image")
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                
            Text("Task/ Todo List &\n Managment")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding(.bottom, 20)
                .multilineTextAlignment(.center)
            


            Button("Log in", action: {
                
            })
            .buttonStyle(ToDoButtonStyle(buttonType: .primary))
            .padding(.bottom, 10)
            

            Button("Sign Up", action: {
                
            })
            .buttonStyle(ToDoButtonStyle(buttonType: .secondary))
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
