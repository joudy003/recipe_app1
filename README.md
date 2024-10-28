Recipe App:
Recipe App is an iOS application built with SwiftUI that allows users to easily create, manage, and share recipes. Designed to be user-friendly and visually appealing, this app provides an organized interface for adding ingredients, setting measurements, and customizing servings.


Features: 

Create New Recipes: Add recipe details such as title, description, and ingredients with customized measurements and servings.

Ingredient Management: Add and manage ingredients with a streamlined modal pop-up for easy input.

User-Friendly Interface: Simple, clean, and accessible design with attention to usability.

SwiftUI Design: Built entirely using SwiftUI for a smooth, modern, and reactive UI experience.


You can add relevant screenshots here to showcase key app features.

Technologies Used :
Swift - A programming language for iOS development.
SwiftUI - Framework for declarative UI design.
swiftData - Framework is used to handle events over time.


Installation Requirements
iOS 14.0+
Xcode 12.0+


Steps to Install
1.Clone the repository:
[my repo](https://github.com/joudy003/recipe_app1.git)
2.clone https://github.com/username/RecipeApp.git
3.Open in Xcode: Navigate to the project folder and open RecipeApp.xcodeproj in Xcode.

Build and Run: Select your target device or simulator and click on Run in Xcode.

Usage
Home Screen: Displays options for adding new recipes.
Add New Recipe:
Tap on the "Add New Recipe" button to create a new recipe.
Fill in the recipe's title, description, and add ingredients.
Ingredient Modal: Click on the "+" button under "Add Ingredient" to open a modal pop-up where you can:
Enter the ingredient name.
Select a measurement (Spoon or Cup).
Adjust the serving size.
Code Overview
Project Structure
bash
نسخ الكود
Key Files

IngredientModalView.swift: Contains the pop-up modal for adding ingredients.
AddNewRecipeView.swift: Main view for creating new recipes, linking to the ingredient modal.
RecipeModel.swift: Data model for recipes and ingredients.
ContentView.swift: Root view that navigates to different sections.
UI Highlights
The app's color scheme and UI elements are designed for readability and ease of use. It uses system colors and spacing that adapt well to different device sizes.

Customization
To customize the app's appearance and behavior, you can adjust the following:

Colors: Change colors in the Assets.xcassets or modify color properties in SwiftUI views.
Font Styles: Update font styles in the views to match your brand.
Button Styling: Adjust button styles, such as background color, padding, and corner radius, in the IngredientModalView.
Contributing
We welcome contributions! To contribute to the project:

Fork the repository.
Create a new branch for your feature or bug fix.
Submit a pull request explaining your changes.
License
This project is licensed under the MIT License - see the LICENSE file for details.

Contact
For questions, feedback, or collaboration, please reach out via:

Email:joudy.j.t@gmail.com
GitHub: joudy003
