import SwiftUI
import SwiftData


struct AddNewRecipes: View {
    @State private var modelView = ModelView()

@Environment(\.presentationMode) var presentationMode
@Environment(\.modelContext) var modelContext
 
    //  var ingredient: Ingredient
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading, spacing: 5) {
                // Header Section
                
                HStack {
                    ZStack{
                        Text("\n  New Recipes").font(.title).bold()}
                }
                // Image upload area
                VStack {
                    Image(systemName: "photo.badge.plus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90, height: 80)
                        .foregroundColor(myColors.appOrange)
                    
                    Text("Upload Photo")
                        .padding(.top, -15)
                        .font(.system(size: 25, weight: .bold))
                }
                .frame(width: 380, height: 150)
                .padding()
                .background(Color(.systemGray5))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(myColors.appOrange, style: StrokeStyle(lineWidth: 2, dash: [5]))
                )
                .padding(.vertical)
                
                // Title input
                Text("Title")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                TextField("Title", text: $modelView.recepi_title )
                    .padding()
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
                    .padding(.horizontal)
                
                // Description input
                Text("Description")
                    .font(.headline)
                    .padding(.horizontal)
                    .fontWeight(.bold)
                
                TextField("Description", text: $modelView.recepi_Description)
                    .frame(alignment: .leading)
                    .padding()
                    .frame(width: 367, height: 130, alignment: .topLeading)
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
                    .padding(.horizontal)
                
                
                // Add Ingredients section
                HStack {
                    Text("Add Ingredient")
                        .font(.headline)
                    Spacer().padding()
                    Button(action: {
                        modelView.showIngredientPopup.toggle() // Show popup when button is tapped
                    }) {
                        Image(systemName: "plus")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(myColors.appOrange)
                    }
                }
                .padding(.horizontal)
                .padding(.horizontal, 8)
                Spacer()
            }
            
            .navigationBarItems(
                leading: Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                    .foregroundColor(myColors.appOrange),
                trailing: Button("Save") {
                    //                    MyLocalSorage.myValue=self.recepi_title
                    
                }
                    .foregroundColor(myColors.appOrange)
            )
            
            
            
            
            
            .sheet(isPresented: $modelView.showIngredientPopup) {
                AddIngredientView(isPresented: .constant(false)) // The popup content view
            }
            Spacer()
            
        }
        Spacer()
       
            
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
    
    
    
    func initRecipe(recipeName: String, description: String, ing: [IngredientData]){
        let newRecipe = RecipeData(title: recipeName, description: description,  ing: ing)
        modelContext.insert(newRecipe)
    }
//    init(modelContext: ModelContext){
//      let modelView = ModelView (modelContext: modelContext)
//        _modelView = /*State*/(initilvalue: modelView)
//    }
    
        }
        



