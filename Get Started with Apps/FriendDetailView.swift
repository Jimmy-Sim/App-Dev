import SwiftUI

struct FriendDetailView: View {
    var body: some View {
        VStack {
            HStack {
                Image("Friend")
                    .resizable()
                    .scaledToFit()
                
                VStack {
                    Text("Friend")
                        .font(.largeTitle)
                    Text("Friend is orange!")
                        .font(.caption)
                }
            }
        }
    }
}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            FriendDetailView()
        }
    }
}
