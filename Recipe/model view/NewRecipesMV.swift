import SwiftUI
import SwiftData


extension AddNewRecipes{
    
    
    @Observable
    class ModelView{
        
 var ingredient: [IngredientData] = [IngredientData(quantity: 0, name: "", measurement: "")]
 var showIngredientPopup = false // State to control sheet visibility
 var recepi_title: String = ""
 var recepi_Description: String = ""
      
       // init(modelContext: ModelContext){
         // self.modelContext = modelContext
        }
        
    }
        
        



