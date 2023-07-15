import SwiftUI

struct FunFactsView: View {
    var allFunFacts =
    [
        "I have been to 7 countries!",
        "I have one sibling–a younger brother.",
        "I love to read.",
        "My personal record for the 5k is 19:25.",
        "I am currently reading \"Crime and Punishment\" by Fyodor Dostoyevsky.",
    ]
    @State private var funFact = ""
    
    var body: some View {
        ZStack {
            Image("Green")
            VStack {
                Text("Fun Facts")
                    .font(.largeTitle)
                Text(funFact)
                    .font(.title)
                    .frame(maxWidth: 400, minHeight: 300)
                
                Button("Show Random Fact") {
                    funFact = allFunFacts.randomElement() ?? "No Fun."
                }
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(radius: 15)
                .font(.title2)
            }
            .padding()
        }
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
