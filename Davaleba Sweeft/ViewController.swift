//
//  ViewController.swift
//  Davaleba Sweeft
//
//  Created by USER on 09.12.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    //MARK: დავალება 1
    func isPalindrome(text: String) -> Bool {
        var reversed = "" //MARK: String(text.reversed()) // ეს ჩაშენებული ფუნქციის გამოყენებით
        let textArray = Array(text) // რათა წვდომა მქონდეს სტრინგის ინდივიდუალურ ჩარებთან ინდექსის გამოყენებით
        
        
        for index in stride(from: textArray.count-1, through: 0, by: -1) { // მოვუყვებით მასივს უკუღმა და თითოეულ
            reversed += String(textArray[index]) //                             ჩარს ვუმატებთ
        }
        
        if text == reversed { // საბოლოოდ ვადარებთ პალინდრომია თუ არა
            return true
        }
        else{
            return false
        }
    }
    
    //MARK: დავალება 2
    func minSplit(amount: Int) -> Int {
        var tanxa = amount
        var amountOfCoins = 0
        let coinValues = [50,20,10,5,1]
        
        for CoinValue in coinValues {
            if tanxa / CoinValue != 0 { //MARK: ეს ალგორითმი ზოგავს მინიჭებების ოპერაციების რაოდენობას
                amountOfCoins += tanxa / CoinValue
                tanxa = tanxa % CoinValue
            }
            else if (tanxa == 0){
                return amountOfCoins
            }
            
            
            if (tanxa == 0) { //MARK: ეს ალგორითმი კიდეც შედარების ოპერაციების რაოდენობას ზოგავს
                return amountOfCoins
            }
            else {
                amountOfCoins += tanxa / CoinValue
                tanxa = tanxa % CoinValue
            }
        }
        
        return -1
    }
    
    
    //დავალება 3
    func notContains(array: [Int]) -> Int {
        var minimum = 1
        
        while(true){
            switch array.contains(minimum) {
            case true:
                minimum += 1
                continue
            default:
                break
            }
        }
    }
    
    
    
    //დავალება 4
    func isProperly(sequence: String) -> Bool {
        var lefterCount = 0
        var righterCount = 0
        
        for symbol in sequence {
            switch symbol {
            case "(":
                lefterCount += 1
            case ")":
                righterCount += 1
            default:
                continue
            }
        }
        
        if lefterCount == righterCount {
            return true
        }
        else{
            return false
        }
    }
    
    
    // დავალება 5
    func countVariants(stairsCount: Int) -> Int {
        return Int(pow(Double(2), Double(stairsCount)))
    }
    
    //დავალება 6
    //MARK: სიმართლე ითქვას ზუსტად ვერ მივხვდი რა იგულისხმებოდა ამ დავალებაში. ბევრი ძიების მერე გასაგები გახდა, რომ Dictionaryები არის მონაცემთა სტრუქტურები, რომლებიც O(1) დროს ანდომებენ ოპერაციის შესრულებას (insert, retrieve, remove და ა.შ.). Hash Codeების წარმოების და გამოყენების მეშვეობით ისინი უზარმაზარ მასივებს კომპაქტურებად გარდაქმნიან და ისე ინახავენ ინფორმაციას. გაუგებრობა იმაში წარმომექმნა რომ ვერ მივხვდი უბრალოდ Dictionaryს ობიექტი უნდა შემექმნა თუ თავიდან დამეწერა Dictionaryს იდეა.
    
    
    //MARK: p.s. საინტერესო დავალებები იყო და ვიხალისე კიდეც მათი გაკეთებით. მადლობა და ველი თქვენგან პასუხს <3 
}

