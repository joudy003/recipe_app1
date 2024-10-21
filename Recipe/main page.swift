

import SwiftUI

struct main_page: View {
    var body: some View {
      
                NavigationView {
                    ZStack(alignment: .top) {
                        Color(.systemGray3) // Extending the background color to the top
                            .edgesIgnoringSafeArea(.top)
                            .frame(height: 30
    ) // Height of the header

                        VStack(spacing: 0) {
                            
                            // Header area with light gray background and title text
                            HStack {
                                Text("Food Recipes")
                                    .font(.system(size: 34, weight: .bold))
                                    .padding(.leading, 16)
                                Spacer()
                            }
                            .frame(height: 100) // Ensure the header area aligns with the background
                            .background(Color(.systemGray6)) // To blend seamlessly with the ZStack's background

                            Spacer()
                            
                            // Central Icon using filled SF Symbol, styled to match the image more closely
                            Image(systemName: "fork.knife.circle") // Using a filled SF Symbol
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300, height: 300) // Adjusted size for better fit
                                .foregroundColor(myColors.appOrange)
                                .padding()
                            
                            // Empty State Message
                            Text("There’s no recipe yet")
                                .font(.system(size: 34, weight: .bold))
                                .multilineTextAlignment(.center)
                            
                                .padding()
                                .padding()
                            
                            Text("Please add your recipes")
                                .font(.system(size: 22))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                        }
                    }
                    .toolbar {
                        // Add button
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                // Action to add a new recipe
                            }) {
                                Image(systemName: "plus")
                                    .font(.system(size: 22, weight: .bold))
                                    .foregroundColor(myColors.appOrange)
                            }
                        }
                    }
                }
            }
        }

#Preview {
    main_page()
}
