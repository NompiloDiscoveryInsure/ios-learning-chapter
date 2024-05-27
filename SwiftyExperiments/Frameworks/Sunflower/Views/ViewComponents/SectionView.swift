import SwiftUI

struct SectionView<Content: View>: View {
    let header: String
    let iconName: String
    let content: Content
    
    init(header: String, iconName: String, @ViewBuilder content: @escaping () -> Content) {
        self.header = header
        self.iconName = iconName
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack(spacing: 8) {
                Image(iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                Text(header)
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
            .padding(.horizontal)
            
            CardView {
                content
                    .padding([.trailing, .leading], 16)
                    .padding([.top, .bottom], 16)
            }
        }
        .padding(.horizontal)
    }
}
