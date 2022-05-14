
@propertyWrapper
public struct CodingStyle {
    private var value: String
    private let codingType: CodingType
    private static let codings: [CodingType: (String) -> String] = [
        .camel: { value in
            let value = value.lowercased()
                .split(separator: " ")
                .drop { $0.isEmpty }
                .map { $0.prefix(1).uppercased()+$0.dropFirst() }
                .joined()
            return value.prefix(1).lowercased()+value.dropFirst()
        },
        .kebab: { value in
            value.lowercased()
                .split(separator: " ")
                .drop { $0.isEmpty }
                .joined(separator: "-")
        },
        .snake: { value in value.lowercased()
            .split(separator: " ")
            .drop { $0.isEmpty }
            .joined(separator: "_")
        }
    ]

    init(wrappedValue: String, coding: CodingType) {
        self.value = wrappedValue
        self.codingType = coding
    }

    private func get() -> String {
        guard let coding = CodingStyle.codings[codingType] else { return value }
        return coding(value)
    }

    private mutating func set(_ newValue: String) {
        value = newValue
    }

    public var wrappedValue: String {
        get {
            get()
        }
        set {
            set(newValue)
        }
    }
}
