import SwiftUI

struct NavigationSplitViewExperiment: View {
    var body: some View {
        VStack {
            NavigationSplitView { 
                List {
                    NavigationLink("First link") {
                        Text("😵‍💫")
                    }
                    NavigationLink("Second link") {
                        Text("😵‍")
                    }
                    NavigationLink { 
                        SlidingRectangle()
                            .navigationTitle("Sliding Rectangle")
                    } label: { 
                        HStack { 
                            Text("Tap To Navigate")
                            Spacer()
                            Image(systemName: "arrow.forward.circle")
                                .font(.largeTitle)
                        }
                    }
                    NavigationLink {
                        ConditionalCircle()
                            .navigationTitle("Conditional Circle")
                    } label: {
                        HStack {
                            Text("Play with a Circle!")
                            Spacer()
                            Image(systemName: "circlebadge.fill")
                                .font(.largeTitle)
                        }
                    }
                }
                
            } detail: { 
                Text("Select a link")
                
            }
        }
    }
}

struct NavigationSplitViewExperiment_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitViewExperiment().assess()
    }
}
