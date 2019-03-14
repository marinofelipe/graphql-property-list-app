//  This file was automatically generated and should not be edited.

import Apollo

public final class ListQuery: GraphQLQuery {
  public let operationDefinition =
    "query List {\n  propertyList {\n    __typename\n    properties {\n      __typename\n      title\n      neighborhood\n      likes\n      price\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("propertyList", type: .object(PropertyList.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(propertyList: PropertyList? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "propertyList": propertyList.flatMap { (value: PropertyList) -> ResultMap in value.resultMap }])
    }

    public var propertyList: PropertyList? {
      get {
        return (resultMap["propertyList"] as? ResultMap).flatMap { PropertyList(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "propertyList")
      }
    }

    public struct PropertyList: GraphQLSelectionSet {
      public static let possibleTypes = ["PropertyListType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("properties", type: .list(.object(Property.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(properties: [Property?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "PropertyListType", "properties": properties.flatMap { (value: [Property?]) -> [ResultMap?] in value.map { (value: Property?) -> ResultMap? in value.flatMap { (value: Property) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var properties: [Property?]? {
        get {
          return (resultMap["properties"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Property?] in value.map { (value: ResultMap?) -> Property? in value.flatMap { (value: ResultMap) -> Property in Property(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Property?]) -> [ResultMap?] in value.map { (value: Property?) -> ResultMap? in value.flatMap { (value: Property) -> ResultMap in value.resultMap } } }, forKey: "properties")
        }
      }

      public struct Property: GraphQLSelectionSet {
        public static let possibleTypes = ["PropertyType"]

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
          self.init(unsafeResultMap: ["__typename": "PropertyType", "title": title, "neighborhood": neighborhood, "likes": likes, "price": price])
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
}

public struct Property: GraphQLFragment {
  public static let fragmentDefinition =
    "fragment Property on PropertyListType {\n  __typename\n  properties {\n    __typename\n    title\n    neighborhood\n    likes\n    price\n  }\n}"

  public static let possibleTypes = ["PropertyListType"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("properties", type: .list(.object(Property.selections))),
  ]

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(properties: [Property?]? = nil) {
    self.init(unsafeResultMap: ["__typename": "PropertyListType", "properties": properties.flatMap { (value: [Property?]) -> [ResultMap?] in value.map { (value: Property?) -> ResultMap? in value.flatMap { (value: Property) -> ResultMap in value.resultMap } } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var properties: [Property?]? {
    get {
      return (resultMap["properties"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Property?] in value.map { (value: ResultMap?) -> Property? in value.flatMap { (value: ResultMap) -> Property in Property(unsafeResultMap: value) } } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Property?]) -> [ResultMap?] in value.map { (value: Property?) -> ResultMap? in value.flatMap { (value: Property) -> ResultMap in value.resultMap } } }, forKey: "properties")
    }
  }

  public struct Property: GraphQLSelectionSet {
    public static let possibleTypes = ["PropertyType"]

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
      self.init(unsafeResultMap: ["__typename": "PropertyType", "title": title, "neighborhood": neighborhood, "likes": likes, "price": price])
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