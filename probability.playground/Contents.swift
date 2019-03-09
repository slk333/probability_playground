import Foundation




// being the first success means being a success AND all the previous attemps are failures
func pFirstSuccessAt(rollNumber:Int)->Double{
    return pSuccess * pow((1-pSuccess),Double(rollNumber-1))
    
    // let pFirstSuccessAtN = p(success at n) * p(failure of all previous)
    // let pFirstSuccessAt1 = pOfSucess
    // let pFirstSuccessAt2 = pOfSucess * pOfFailureOf1                  = pOfSucess * (1-pOfSucess)
    // let pFirstSuccessAt3 = pOfSucess *  pOfFailureOf1 * pOfFailureOf2 = pOfSucess * (1-pOfSucess) * (1-pOfSucess)
    // let pFirstSuccessAt4 =                                            = pOfSucess * pow((1-pOfSucess), 3)
}


// at least one success means adding the probability of all the first success
func pAtLeastOneSuccessInN(rolls:Int)->Double{
    var pAtLeastOneSuccess = 0.0
    for i in 1...rolls{
        pAtLeastOneSuccess += pFirstSuccessAt(rollNumber: i)
    }
    return pAtLeastOneSuccess
}




// using the functions
let pSuccess = 0.20
let pAtLeastOneSuccess = pAtLeastOneSuccessInN(rolls: 5)
let pFailure = 1 - pAtLeastOneSuccess

let NumberOfSuccessFor1Failure = 1 / pFailure






