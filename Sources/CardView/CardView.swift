import SwiftUI

public struct CardView<Content: View>: View {
    var content: () -> Content
    
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: some View {
        ZStack {
            Color.gray
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .frame(maxWidth: 200, maxHeight: 150)
            VStack {
                self.content()
            }.padding()
        }
    }
}