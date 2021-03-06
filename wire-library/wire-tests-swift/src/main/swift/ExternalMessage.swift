// Code generated by Wire protocol buffer compiler, do not edit.
// Source: squareup.protos.kotlin.simple.ExternalMessage in external_message.proto
import Foundation
import Wire

public struct ExternalMessage {

    public var f: Float?
    public var unknownFields: Data = .init()

    public init(f: Float? = nil) {
        self.f = f
    }

}

extension ExternalMessage : Equatable {
}

extension ExternalMessage : Hashable {
}

extension ExternalMessage : Proto2Codable {
    public init(from reader: ProtoReader) throws {
        var f: Float? = nil

        let token = try reader.beginMessage()
        while let tag = try reader.nextTag(token: token) {
            switch tag {
            case 1: f = try reader.decode(Float.self)
            default: try reader.readUnknownField(tag: tag)
            }
        }
        self.unknownFields = try reader.endMessage(token: token)

        self.f = f
    }

    public func encode(to writer: ProtoWriter) throws {
        try writer.encode(tag: 1, value: self.f)
        try writer.writeUnknownFields(unknownFields)
    }
}

extension ExternalMessage : Codable {
    public enum CodingKeys : String, CodingKey {

        case f

    }
}
