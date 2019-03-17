//  This file was automatically generated and should not be edited.

import Apollo

public final class ListQuery: GraphQLQuery {
  public let operationDefinition =
    "query List {\n  propertyList {\n    __typename\n    properties {\n      __typename\n      ...PropertyInfo\n      ...Contacts\n    }\n  }\n}"

  public var queryDocument: String { return operationDefinition.appending(PropertyInfo.fragmentDefinition).appending(Contacts.fragmentDefinition) }

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
          GraphQLFragmentSpread(PropertyInfo.self),
          GraphQLFragmentSpread(Contacts.self),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var propertyInfo: PropertyInfo {
            get {
              return PropertyInfo(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }

          public var contacts: Contacts {
            get {
              return Contacts(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class LikePropertyMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation LikeProperty($id: ID!) {\n  likeProperty(id: $id) {\n    __typename\n    success\n    message\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("likeProperty", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(LikeProperty.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(likeProperty: LikeProperty) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "likeProperty": likeProperty.resultMap])
    }

    public var likeProperty: LikeProperty {
      get {
        return LikeProperty(unsafeResultMap: resultMap["likeProperty"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "likeProperty")
      }
    }

    public struct LikeProperty: GraphQLSelectionSet {
      public static let possibleTypes = ["PropertyUpdateResponse"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("message", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(success: Bool, message: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PropertyUpdateResponse", "success": success, "message": message])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var message: String? {
        get {
          return resultMap["message"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }
    }
  }
}

public struct PropertyInfo: GraphQLFragment {
  public static let fragmentDefinition =
    "fragment PropertyInfo on PropertyType {\n  __typename\n  id\n  title\n  neighborhood\n  price\n  likes\n}"

  public static let possibleTypes = ["PropertyType"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("title", type: .scalar(String.self)),
    GraphQLField("neighborhood", type: .scalar(String.self)),
    GraphQLField("price", type: .scalar(Double.self)),
    GraphQLField("likes", type: .scalar(Int.self)),
  ]

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, title: String? = nil, neighborhood: String? = nil, price: Double? = nil, likes: Int? = nil) {
    self.init(unsafeResultMap: ["__typename": "PropertyType", "id": id, "title": title, "neighborhood": neighborhood, "price": price, "likes": likes])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// Information about an available property.
  public var id: GraphQLID {
    get {
      return resultMap["id"]! as! GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
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

  public var price: Double? {
    get {
      return resultMap["price"] as? Double
    }
    set {
      resultMap.updateValue(newValue, forKey: "price")
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
}

public struct Contacts: GraphQLFragment {
  public static let fragmentDefinition =
    "fragment Contacts on PropertyType {\n  __typename\n  contacts {\n    __typename\n    name\n  }\n}"

  public static let possibleTypes = ["PropertyType"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("contacts", type: .list(.object(Contact.selections))),
  ]

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(contacts: [Contact?]? = nil) {
    self.init(unsafeResultMap: ["__typename": "PropertyType", "contacts": contacts.flatMap { (value: [Contact?]) -> [ResultMap?] in value.map { (value: Contact?) -> ResultMap? in value.flatMap { (value: Contact) -> ResultMap in value.resultMap } } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var contacts: [Contact?]? {
    get {
      return (resultMap["contacts"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Contact?] in value.map { (value: ResultMap?) -> Contact? in value.flatMap { (value: ResultMap) -> Contact in Contact(unsafeResultMap: value) } } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Contact?]) -> [ResultMap?] in value.map { (value: Contact?) -> ResultMap? in value.flatMap { (value: Contact) -> ResultMap in value.resultMap } } }, forKey: "contacts")
    }
  }

  public struct Contact: GraphQLSelectionSet {
    public static let possibleTypes = ["ContactType"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .nonNull(.scalar(String.self))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(name: String) {
      self.init(unsafeResultMap: ["__typename": "ContactType", "name": name])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var name: String {
      get {
        return resultMap["name"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "name")
      }
    }
  }
}