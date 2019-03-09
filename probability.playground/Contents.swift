import Foundation

func pFirstSuccessAt(n:Int,pSuccess:Double)->Double{
    
    let pFailure = (1-pSuccess)
    
    // being the first success means being a success AND all the previous attemps are failures
    return pSuccess * pow(pFailure,Double(n-1))
    
   
    // let pFirstSuccessAt1 = pSuccess
    // let pFirstSuccessAt2 = pSuccess * pFailure
    // let pFirstSuccessAt3 = pSuccess * pFailure * pFailure
    // let pFirstSuccessAtN = p(success at n) * p(failure of all previous)
    // let pFirstSuccessAtN = pSuccess * pFailure ^ (n-1)
    // on utilise n-1 car on considère le que premier roll est  "1" plutot que  "0". Mais en réalité il faut utiliser "0", d'où le n-1
}

func pAtLeastOneSuccessInN(rolls:Int, pSuccess:Double)->Double{
    
    var pAtLeastOneSuccess = 0.0
    for i in 1...rolls{
        
        // at least one success means adding the probability of a first success of each roll
        pAtLeastOneSuccess += pFirstSuccessAt(n: i, pSuccess:pSuccess)
    }
    return pAtLeastOneSuccess
}


// using the functions

let pAtLeastOneSuccess = pAtLeastOneSuccessInN(rolls: 10, pSuccess:0.2)
let percentageChanceOfAtLeastOneSuccess = pAtLeastOneSuccess * 100


let pAllFailures = 1 - pAtLeastOneSuccess
let rarityOfAllFailure = 1/pAllFailures
// rarity means the number of series you need to wait in order to get the event, here ALL_FAILURE












