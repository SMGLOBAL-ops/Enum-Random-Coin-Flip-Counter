import Foundation
import UIKit

enum CoinFlip: Int {
    case heads
    case tails
    
    static func flipCoin(amountOfFlips: Int) -> CoinFlip {
        return CoinFlip(rawValue: Int(arc4random_uniform(2)))!
    }
}

func countHeadsOrTails(flips: Int) {
    var totalFlips = [CoinFlip]()
    for i in 1...flips {
        let flip = CoinFlip.flipCoin(amountOfFlips: i)
        totalFlips.append(flip)
    }
    let mappedItems = totalFlips.map { ($0, 1) }
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
    print(counts)
   
    for (_, value) in counts {
        print(value)
    }
}

countHeadsOrTails(flips: 20)
