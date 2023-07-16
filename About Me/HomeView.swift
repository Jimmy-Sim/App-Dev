import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("All About")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
          
            Image("Eating Lunch in Saipan")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(.blue, style: StrokeStyle(lineWidth: 5))
                )
          
            Text("Jimmy Sim")
                .font(.custom(FontNames.helvetica, size: 40))
                .bold()
                .foregroundColor(.black)
                .padding(30)
                .background(Color(red: 0.75, green: 0.75, blue: 0.75))
                .cornerRadius(15)
                .shadow(color: .blue, radius: 30)
          
            HStack {
                Image(systemName: "book.fill")
                Text("On the grind")
                    .font(.title)
                    .foregroundColor(.secondary)
                    .padding()
                Image(systemName: "graduationcap.fill")
            }
        }
        .padding()
        .background(Image("Blue"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct FontNames {
    static var americanTypwriter = "American Typewriter"
    static var arial = "Arial"
    static var baskerville = "Baskerville"
    static var chalkduster = "Chalkduster"
    static var courier = "Courier"
    static var georgia = "Georgia"
    static var helvetica = "Helvetica"
    static var palatino = "Palatino"
    static var zapfino = "Zapfino"
}
