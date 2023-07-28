import SwiftUI
import Guide

struct DancingCreatures: View {
    @EnvironmentObject var data : CreatureZoo
    
    var body: some View {
        SPCAssessableGroup(view: self) {
            VStack {
                ZStack {
                    ForEach(data.creatures) { creature in
                        Text(creature.emoji)
                            .resizableFont()
                            .offset(creature.offset)
                            .rotationEffect(creature.rotation)
                            .animation(.default.delay(data.indexFor(creature) / 10), value: creature.offset)
                    }
                }
                .onTapGesture {
                    data.synchronizeOffsets()
                }
            }
        }
    }
}

struct DancingCreatures_Previews: PreviewProvider {
    static var previews: some View {
        DancingCreatures().environmentObject(CreatureZoo())
    }
}
