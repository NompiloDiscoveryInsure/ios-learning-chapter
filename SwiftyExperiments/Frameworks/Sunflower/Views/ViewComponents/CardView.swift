import SwiftUI

public struct CardView<Content: View> {
    private let content: () -> Content

    public init(content: @escaping () -> Content) {
        self.content = content
    }
}

extension CardView: View {
    public var body: some View {
        content()
            .padding(8)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white)
                    .shadow(color: (Color.gray).opacity(0.15), radius: 6, x: 0, y: 1)
            )
            .padding([.leading, .trailing], 16)
    }
}
