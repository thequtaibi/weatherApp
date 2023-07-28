//
//  weaterButton.swift
//  qutaibi
//
//  Created by qutaibi on 28/07/2023.
//

import SwiftUI

struct buttonView: View {
    var title: String
    var textColer: Color
    var backGround: Color
    var body: some View {

            Text(title)
                .frame(width: 280, height: 50)
                .background(backGround)
                .foregroundColor(textColer)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(10.0)
    }
}
