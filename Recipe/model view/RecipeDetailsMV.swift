
import SwiftUI

extension ShowRecipeDetails{
  
    @Observable
    class ModelView{
        var isPresentingNewRecipe = false
        var showDeleteConfirmation = false
        var navigateToMainPage = false
        var navigateToEdit = false
    }
}


