/// A Nimble matcher that succeeds when the actual value is nil.
public func beNil<T>() -> Predicate<T> {
    Predicate.simpleNilable("be nil") { actualExpression in
        let actualValue = try actualExpression.evaluate()
        return PredicateStatus(bool: actualValue == nil)
    }
}

#if canImport(Darwin)
import Foundation

extension NMBPredicate {
    @objc public class func beNilMatcher() -> NMBPredicate {
        NMBPredicate { actualExpression in
            try beNil().satisfies(actualExpression).toObjectiveC()
        }
    }
}
#endif
