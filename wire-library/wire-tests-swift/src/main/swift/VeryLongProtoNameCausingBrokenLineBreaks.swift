// Code generated by Wire protocol buffer compiler, do not edit.
// Source: squareup.protos.tostring.VeryLongProtoNameCausingBrokenLineBreaks in to_string.proto
import Foundation
import Wire

/**
 * https://github.com/square/wire/issues/1125
 */
public struct VeryLongProtoNameCausingBrokenLineBreaks {

    public var foo: String?
    public var unknownFields: Data = .init()

    public init(foo: String? = nil) {
        self.foo = foo
    }

}

extension VeryLongProtoNameCausingBrokenLineBreaks : Equatable {
}

extension VeryLongProtoNameCausingBrokenLineBreaks : Hashable {
}

extension VeryLongProtoNameCausingBrokenLineBreaks : Proto2Codable {
    public init(from reader: ProtoReader) throws {
        var foo: String? = nil

        let token = try reader.beginMessage()
        while let tag = try reader.nextTag(token: token) {
            switch tag {
            case 1: foo = try reader.decode(String.self)
            default: try reader.readUnknownField(tag: tag)
            }
        }
        self.unknownFields = try reader.endMessage(token: token)

        self.foo = foo
    }

    public func encode(to writer: ProtoWriter) throws {
        try writer.encode(tag: 1, value: self.foo)
        try writer.writeUnknownFields(unknownFields)
    }
}

extension VeryLongProtoNameCausingBrokenLineBreaks : Codable {
    public enum CodingKeys : String, CodingKey {

        case foo

    }
}
