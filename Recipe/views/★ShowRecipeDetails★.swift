
import SwiftUI

struct ShowRecipeDetails: View {
    @State private var modelView = ModelView()
    
    
    @Environment(\.dismiss) private var dismiss
    var recipe: Recipe
    
    var body: some View {
        //        var recipes: Recipe
        
        ScrollView {
            VStack(alignment: .leading) {
                // Header with Back and Edit Button
                HStack {
                        Button(action: {
                            // Set navigateToEdit to true to trigger the NavigationLink
                            modelView.navigateToEdit = true
                        }) {
                            Text("Edit")
                                .padding(.vertical, 1)
                                .foregroundColor(myColors.appOrange)
                        }
                        
                        Spacer()
                        
                        // NavigationLink activated by navigateToEdit
                    NavigationLink(destination: AddNewRecipes(), isActive: $modelView.navigateToEdit) {
                            EmptyView()
                        }
                        .navigationBarBackButtonHidden(true)
                    Button(action: {
                        dismiss()
                    }) {
                        Text("save ")
                            .foregroundColor(myColors.appOrange)  .padding(.vertical, 1)
                    }
                }
                
                
                .padding(.bottom)
                
                // Title Section
                Text("Halomi Salad")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                // Image and Description Section
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text("Semi-hard cheese typically made from the milk of goats, sheep, or cows. It's known for its tangy taste and firm, chewy texture.")
                    .font(.body)
                    .padding(.horizontal)
                    .padding(.vertical, 4)
                
                // Ingredients Section
                Text("Ingredients")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                    .padding(.top)
                
                HStack {
                    
                    Text("1")
                        .font(.headline)
                        .foregroundColor(myColors.appOrange).bold()
                    
                    Text("palsamic")
                        .font(.headline)
                        .foregroundColor(myColors.appOrange).bold()
                    //
                    Spacer()
                    //
                    Text("🥄spoon").frame(width: 90,height:29 ).padding(.horizontal, 7)
                        .padding(.vertical, 2)
                        .background(myColors.appOrange)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                
                .padding()
                .background(Color(.systemGray5)).frame(width:358, height: 52)
                .cornerRadius(8)
                .padding(.horizontal)
            }
            
        }
        
        // Delete Button Section
        Button(action: {
            modelView.showDeleteConfirmation = true
        }){
            Text("Delete Recipe")
                .foregroundColor(.red)
                .bold()
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
        }
        .alert(isPresented: $modelView.showDeleteConfirmation) {
            Alert(
                title: Text("Delete a recepie"),
                message: Text("Are you sure you want to delete the recipe?"),
                primaryButton: .destructive(Text("Delete")) {
                    modelView.navigateToMainPage = true
                    
                    print("Recipe deleted")
                },
                secondaryButton: .cancel()
            )
        }
        
        .navigationBarBackButtonHidden(true)
        .padding(.top)
        
        NavigationLink(destination: main_page(), isActive: $modelView.navigateToMainPage) {
            EmptyView()
            .navigationBarBackButtonHidden(true)  }
        
       
    }
}
    


    #Preview {
        RecipeCard(recipe: Recipe(title: " Halomi Salad", description: " Semi-hard cheese typically made from the milk of goats, sheep, or cows. It's known for its tangy taste and firm, chewy texture.", imageName: "img"))
    }
