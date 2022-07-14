import Foundation

open class AdjacencyList<T: Hashable> {
  public var adjacencyDict : [Vertex<T>: [Edge<T>]] = [:]
  public init() {}
}

//extension AdjacencyList: Graphable {
//  public typealias Element = T
//}
