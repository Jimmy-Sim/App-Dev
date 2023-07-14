import SwiftUI

struct IntroView: View {
    var body: some View {
        HStack {
            Image("FriendAndGem")
                .resizable()
                .scaledToFit()
            
            Text("Hi!")
        }
        
        Text("Hello, world!")
        Text("This is a string!")
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            IntroView()
        }
    }
}
