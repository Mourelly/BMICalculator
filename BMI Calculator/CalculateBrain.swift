
import UIKit

struct CalculateBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmivalue = weight / pow(height, 2)
        
        switch bmivalue {
        case 0...18.5: bmi = BMI(value: bmivalue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        case 18.5...24.9: bmi = BMI(value: bmivalue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        default: bmi = BMI(value: bmivalue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalePlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalePlace
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "No advice!"
    }
}


