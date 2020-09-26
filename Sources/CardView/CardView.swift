import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
public struct CardView<Content: View>: View {
    var content: () -> Content
    var color: Color
    
    public init(
        color: Color = Color.gray, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.color = color
    }
    
    public var body: some View {
        ZStack {
            self.color
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .frame(maxWidth: 200, maxHeight: 150)
            VStack {
                self.content()
            }.padding()
        }
    }
}
