//  This file was automatically generated and should not be edited.

import Apollo

public final class ListQuery: GraphQLQuery {
  public let operationDefinition =
    "query List {\n  propertyList {\n    __typename\n    title\n    neighborhood\n    likes\n    price\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("propertyList", type: .list(.object(PropertyList.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(propertyList: [PropertyList?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "propertyList": propertyList.flatMap { (value: [PropertyList?]) -> [ResultMap?] in value.map { (value: PropertyList?) -> ResultMap? in value.flatMap { (value: PropertyList) -> ResultMap in value.resultMap } } }])
    }

    public var propertyList: [PropertyList?]? {
      get {
        return (resultMap["propertyList"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [PropertyList?] in value.map { (value: ResultMap?) -> PropertyList? in value.flatMap { (value: ResultMap) -> PropertyList in PropertyList(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [PropertyList?]) -> [ResultMap?] in value.map { (value: PropertyList?) -> ResultMap? in value.flatMap { (value: PropertyList) -> ResultMap in value.resultMap } } }, forKey: "propertyList")
      }
    }

    public struct PropertyList: GraphQLSelectionSet {
      public static let possibleTypes = ["Property"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("neighborhood", type: .scalar(String.self)),
        GraphQLField("likes", type: .scalar(Int.self)),
        GraphQLField("price", type: .scalar(Double.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(title: String? = nil, neighborhood: String? = nil, likes: Int? = nil, price: Double? = nil) {
        self.init(unsafeResultMap: ["__typename": "Property", "title": title, "neighborhood": neighborhood, "likes": likes, "price": price])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var title: String? {
        get {
          return resultMap["title"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var neighborhood: String? {
        get {
          return resultMap["neighborhood"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "neighborhood")
        }
      }

      public var likes: Int? {
        get {
          return resultMap["likes"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "likes")
        }
      }

      public var price: Double? {
        get {
          return resultMap["price"] as? Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "price")
        }
      }
    }
  }
}