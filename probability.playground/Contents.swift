import UIKit


let pOfSucess = 0.20
var pOfFailure = Double(1 - pOfSucess)
let rolls = 10

let p1 = pOfSucess
let p2 = (1-pOfSucess) * pOfSucess
let p3 = (1-pOfSucess) * (1-pOfSucess) * pOfSucess
let p4 = pow((1-pOfSucess), 3) * pOfSucess

func pFirstSuccessAt(rollNumber:Int)->Double{
    return pow((1-pOfSucess),Double(rollNumber-1)) * pOfSucess
}

func pAtLeastOneSuccessInN(rolls:Int)->Double{
    var pOfSuccess = 0.0
    for i in 1...rolls{
        pOfSuccess += pFirstSuccessAt(rollNumber: i)
    }
    return pOfSuccess
}

let pAtLeastOneSucess = pAtLeastOneSuccessInN(rolls: 9)
let pNoAnySucess = 1 - pAtLeastOneSucess
1.0 / pNoAnySucess






var p : Double = 0.5 + 0.5 * 0.5 + 0.5 * 0.5 * 0.5

var x = Decimal(0.0)
for i in 1...10{
    x += pow(0.5, i)
}

x


// on lance un dé à 10 face 3 fois. Quelle est la probabilité d'avoir 1 au moins 1 fois sur 3 lancers. pour chaque lançer la chance est 0.1. on effectuer un lancer seulement si tous les précédants ont échoués. La chance pour le précédent ait échoué est 0.9. La chance pour que les deux premiers échouent est 0.9*0.9. p(1) p(2) p(3).

// p(1) = 0.1
// p(2 only) = not p(1) AND p(2) = (1 - p(1)) * p(2) = (1 - 0.1) * 0.1 = 0.9 * 0.1 = 0.09
// p(3) = not p(1) AND not p(2) AND p(3) = 0.9*0.91 * 0.1 =    0.081
// Z = 0.1 + 0.09 + 0.081 = 0.271
// 72,9% of times, there won't be any 1 in 3 rolls

