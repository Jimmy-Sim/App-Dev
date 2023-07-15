import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack {
            Text("Favorites")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)
            HStack {
                Text("Hobbies")
                    .font(.title2)
                Spacer()
            }
            .padding(.leading)
            
            HStack(spacing: 20) {
                Text("🏃")
                    .font(.system(size: 48))
                Text("📚")
                    .font(.system(size: 48))
                Text("💻")
                    .font(.system(size: 48))
                Spacer()
            }
            
            .padding()

            Divider()
            
            HStack {
                Text("Foods")
                    .font(.title2)
                Spacer()
            }
            
            .padding([.top, .leading])
            ScrollView(.horizontal) {
                HStack(spacing: 30) {
                    Text("🍜")
                        .font(.system(size: 48))
                    Text("🍔")
                        .font(.system(size: 48))
                    Text("🍕")
                        .font(.system(size: 48))
                    Text("🥩")
                        .font(.system(size: 48))
                    Text("🥟")
                        .font(.system(size: 48))
                    Text("☕️")
                        .font(.system(size: 48))
                    Text("🍫")
                        .font(.system(size: 48))
                }
            }
            .padding()
            
            Divider()
            
            DisclosureGroup {
                HStack(spacing: 30) {
                    Color.blue
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                    Color.red
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                    Color.green
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                    Color.purple
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                    Spacer()
                }
                .padding(.vertical)
                
            } label: {
                Text("Guess my favorite colors")
                    .font(.title2)
            }
            .padding()
            .accentColor(.blue)

        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
