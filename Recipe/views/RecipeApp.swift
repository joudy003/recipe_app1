import SwiftUI
import SwiftData
@main
struct RecipeApp: App {
   // let cotainer = ModelContainer
    @Environment(\.modelContext) var modelContext
    var body: some Scene {
        WindowGroup {
            RecipeCard( recipe: Recipe(title: " Halomi Salad", description: " Semi-hard cheese typically made from the milk of goats, sheep, or cows. It's known for its tangy taste and firm, chewy texture.", imageName: "img"))
        }
        .modelContainer(for: RecipeData.self)
       
    }
}
