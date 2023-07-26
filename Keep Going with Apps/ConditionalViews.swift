import SwiftUI

struct ConditionalViews: View {
    @State var isOn = false
    @State var isPressed = false

    var body: some View {
        VStack {
            if isOn {
                Circle()
                    .frame(maxHeight: 200)
                    .foregroundColor(.blue)
                Text("On")
            } else {
                Circle()
                    .frame(maxHeight: 200)
                    .foregroundColor(.red)
                Text("Off")
            }
            
            if isPressed {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            } else {
                Image(systemName: "star")
                    .foregroundColor(.secondary)
            }
            
            Button("Press Me") {
                isOn.toggle()
            }
            Button("Press Me as Well") {
                isPressed.toggle()
            }
        }
    }
}

struct ConditionalViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ConditionalViews().assess()
        }
    }
}
