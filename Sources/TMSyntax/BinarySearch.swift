import Foundation

extension Array {
    public func binarySearch(isLessThanTarget: (Element) -> Bool) -> Int {
        if isEmpty {
            return 0
        }
        
        var leftIndex = 0
        var rightIndex = count
        while true {
            if leftIndex == rightIndex {
                return leftIndex
            }
            let nextIndex = (leftIndex + rightIndex) / 2
            let nextElement = self[nextIndex]
            
            if isLessThanTarget(nextElement) {
                leftIndex = nextIndex + 1
            } else {
                rightIndex = nextIndex
            }
        }
    }
}
