/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Chatroom type in your schema. */
class Chatroom extends amplify_core.Model {
  static const classType = const _ChatroomModelType();
  final String id;
  final List<ChatroomVowUser>? _vowUsers;
  final List<Message>? _messages;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ChatroomModelIdentifier get modelIdentifier {
      return ChatroomModelIdentifier(
        id: id
      );
  }
  
  List<ChatroomVowUser>? get vowUsers {
    return _vowUsers;
  }
  
  List<Message>? get messages {
    return _messages;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Chatroom._internal({required this.id, vowUsers, messages, createdAt, updatedAt}): _vowUsers = vowUsers, _messages = messages, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Chatroom({String? id, List<ChatroomVowUser>? vowUsers, List<Message>? messages}) {
    return Chatroom._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      vowUsers: vowUsers != null ? List<ChatroomVowUser>.unmodifiable(vowUsers) : vowUsers,
      messages: messages != null ? List<Message>.unmodifiable(messages) : messages);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Chatroom &&
      id == other.id &&
      DeepCollectionEquality().equals(_vowUsers, other._vowUsers) &&
      DeepCollectionEquality().equals(_messages, other._messages);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Chatroom {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Chatroom copyWith({List<ChatroomVowUser>? vowUsers, List<Message>? messages}) {
    return Chatroom._internal(
      id: id,
      vowUsers: vowUsers ?? this.vowUsers,
      messages: messages ?? this.messages);
  }
  
  Chatroom copyWithModelFieldValues({
    ModelFieldValue<List<ChatroomVowUser>?>? vowUsers,
    ModelFieldValue<List<Message>?>? messages
  }) {
    return Chatroom._internal(
      id: id,
      vowUsers: vowUsers == null ? this.vowUsers : vowUsers.value,
      messages: messages == null ? this.messages : messages.value
    );
  }
  
  Chatroom.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _vowUsers = json['vowUsers'] is List
        ? (json['vowUsers'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ChatroomVowUser.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _messages = json['messages'] is List
        ? (json['messages'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Message.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'vowUsers': _vowUsers?.map((ChatroomVowUser? e) => e?.toJson()).toList(), 'messages': _messages?.map((Message? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'vowUsers': _vowUsers,
    'messages': _messages,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ChatroomModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ChatroomModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final VOWUSERS = amplify_core.QueryField(
    fieldName: "vowUsers",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'ChatroomVowUser'));
  static final MESSAGES = amplify_core.QueryField(
    fieldName: "messages",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Message'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Chatroom";
    modelSchemaDefinition.pluralName = "Chatrooms";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Chatroom.VOWUSERS,
      isRequired: false,
      ofModelName: 'ChatroomVowUser',
      associatedKey: ChatroomVowUser.CHATROOM
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Chatroom.MESSAGES,
      isRequired: false,
      ofModelName: 'Message',
      associatedKey: Message.CHATROOMID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ChatroomModelType extends amplify_core.ModelType<Chatroom> {
  const _ChatroomModelType();
  
  @override
  Chatroom fromJson(Map<String, dynamic> jsonData) {
    return Chatroom.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Chatroom';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Chatroom] in your schema.
 */
class ChatroomModelIdentifier implements amplify_core.ModelIdentifier<Chatroom> {
  final String id;

  /** Create an instance of ChatroomModelIdentifier using [id] the primary key. */
  const ChatroomModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'ChatroomModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ChatroomModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}