import SwiftUI

struct StoryEditor: View {
    @State var name = "Jimmy"
    @State var hobby = "dancing"
    @State var favoriteFood = "pizza"
    @State var isOn = false
    
    var body: some View {
        VStack {
            if isOn {
                Text("Hello, my name is \(name), my favorite hobby is \(hobby) and I can't stop eating \(favoriteFood)!")
            }
            Button("Show story") {
                isOn.toggle()
            }
        }
        .padding()
    }
}

struct StoryEditor_Previews: PreviewProvider {
    static var previews: some View {
        StoryEditor()
    }
}
