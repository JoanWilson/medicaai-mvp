//
//  SplashScreenView.swift
//  MedicaAi
//
//  Created by Joan Wilson Oliveira on 26/04/22.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            TabManagerView()
        } else {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("blue-medicaai"), Color("white-medicaai")]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Image("logo-splashscreen")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .center)
                        .font(.system(size: 80))
                        .foregroundColor(.red)
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
