import SwiftUI

struct ExperimentView: View {
    var body: some View {
        VStack {
            FriendDetailView()
            HStack {
                Image("Blu")
                    .resizable()
                    .scaledToFit()
                
                VStack {
                    Text("Blu")
                        .font(.largeTitle)
                    Text("Blu is blue!")
                        .font(.caption)
                }
            }
            
            HStack {
                Image("Hopper")
                    .resizable()
                    .scaledToFit()
                
                VStack {
                    Text("Hopper")
                        .font(.largeTitle)
                    Text("Hopper is green!")
                        .font(.caption)
                }
            }
        }
    }
}

struct ExperimentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ExperimentView()
        }
    }
}
