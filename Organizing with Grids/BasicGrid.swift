import SwiftUI

struct BasicGrid: View {
    var body: some View {
        Grid(alignment: .top, horizontalSpacing: 20, verticalSpacing: 40) {
            GridRow {
                Color.mint
                Color.orange
                Color.pink
            }
            GridRow {
                Color.blue
                Color.teal
                    .gridCellColumns(2)
            }
            GridRow {
                Text("Hello world!")
                Image("Picture of Me in 4th Grade")
                    .resizable()
                    .scaledToFit()
                Image("Paragliding in Saipan")
                    .resizable()
                    .scaledToFit()
            }
            GridRow(alignment: .bottom) { 
                Text("I’m on the bottom of the view!")
                Color.red
                Text("No color here")
                    .gridCellAnchor(.center)
            }
        }
    }
}

struct BasicGrid_Previews: PreviewProvider {
    static var previews: some View {
        BasicGrid()
    }
}

