//
//  PrimaryButton.swift
//  BehanceToDo
//
//  Created by Vivek Sehrawat on 28/08/23.
//

import SwiftUI

struct ToDoButtonStyle: ButtonStyle {
    var buttonType: ButtonType
    var width: CGFloat = 200
    
    enum ButtonType {
        case primary, secondary
        
        var bgColor: Color {
            switch self {
            case .primary:
                return CustomColor.pink
            case .secondary:
                return Color.white
            }
        }
        
        var fgColor: Color {
            switch self {
            case .primary:
                return Color.white
            case .secondary:
                return Color.red
            }
        }
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .bold()
            .frame(minWidth: 0, maxWidth: width)
            .frame(height: 45) // Set the desired height
            .foregroundColor(buttonType.fgColor)
            .background(
                RoundedRectangle(cornerRadius: 12, style: .continuous) // Apply corner radius
                    .fill(buttonType.bgColor)
            )
            .opacity(configuration.isPressed ? 0.4 : 1)
            .cornerRadius(25)
            .shadow(color: Color.black.opacity(0.3), radius: 3, x: 2, y: 2) // Add shadow
    }

}
