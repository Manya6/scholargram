import SwiftUI

struct openPage: View {
    @State private var isActive: Bool = false

    var body: some View {
        ZStack {
            if self.isActive {
                ContentView()
                    .transition(.opacity) // This adds a fade-in effect
            } else {
                Rectangle()
                    .fill(Color(red:25/255 , green: 25/255, blue: 25/255))
                    .ignoresSafeArea()
                Image("scholargram")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    
//                    .padding()
            }
        }
        .frame(width: 400.0, height: 900.0)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation(.easeInOut(duration: 1.0)) {
                    self.isActive = true
                }
            }
        }
    }
}

struct openPage_Previews: PreviewProvider {
    static var previews: some View {
        openPage()
    }
}

