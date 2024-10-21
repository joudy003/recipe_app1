import SwiftUI

struct AddNewRecipes: View {
    var body: some View {
        @Environment(\.presentationMode) var presentationMode
        NavigationView {
                    VStack(alignment: .leading, spacing: 20){
                        HStack {
                            Text(  "    New Recipes").font(.title).bold()
                            Spacer().frame(height: 10)
                        }.frame(height: 80)
                            .background(Color(.systemGray6))
                        

                       
                        // Image upload area
                        VStack {
                            Image(systemName: "photo.badge.plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 90, height: 90)
                                .foregroundColor(myColors.appOrange)

                            Text("Upload Photo")                      .padding(.top, -15)

                                .font(.system(size: 25, weight: .bold))
                        }
                        .frame(maxWidth: .infinity, minHeight: 150)
                        .padding()
                        
                        .background(Color(.systemGray5))
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(myColors.appOrange, style:StrokeStyle(lineWidth: 2, dash:[5]))
                        )
                        .padding(.vertical)
                        // Title input
                                        Text("Title")
                                            .font(.headline)
                                            .padding(.horizontal)
                                        
                    TextField("Title", text: .constant(""))
                        .padding()
                        .background(Color(.systemGray5))
                        .cornerRadius(8)
                        .padding(.horizontal)

                        // Description input
                        Text("Description").font(.headline)  .frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal)
                                       
                        TextField("Description", text: .constant(""))
                            .padding()
                            .background(Color(.systemGray5))
                            .cornerRadius(8)
                            .frame(width:100, height: 100) // Adjust height to resemble a larger text box area
                            .padding(.horizontal)
                        

                        // Add Ingredients section
                        HStack {
                            Text("Add Ingredient")
                                .font(.headline)
                            Spacer()
                            Button(action: {
                                // Action to add a new ingredient
                            }) {
                                Image(systemName: "plus")
                                    .font(.system(size: 22, weight: .bold))
                                    .foregroundColor(myColors.appOrange)
                            }
                        }
                        .padding(.horizontal)

                        Spacer()
                    }
                    
                    .navigationBarItems(
                        leading: Button("Back") {
                            presentationMode.wrappedValue.dismiss()
                        }
                        .foregroundColor(myColors.appOrange),
                        trailing: Button("Save") {
                            // Action to save the recipe
                        }
                        .foregroundColor(myColors.appOrange)
                    )
                }

    }
}

#Preview {
    AddNewRecipes()
}
