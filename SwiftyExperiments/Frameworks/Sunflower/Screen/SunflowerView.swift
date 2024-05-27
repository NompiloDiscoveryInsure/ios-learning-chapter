import SwiftUI

struct SunflowerView: View {
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                .onAppear {
                    self.isAnimating = true
                }
            
            VStack {
                SunflowerDetailView()
                    .opacity(isAnimating ? 1 : 0)
                    .animation(Animation.easeInOut(duration: 1).delay(0.5))
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
