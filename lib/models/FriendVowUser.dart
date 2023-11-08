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


/** This is an auto generated class representing the FriendVowUser type in your schema. */
class FriendVowUser extends amplify_core.Model {
  static const classType = const _FriendVowUserModelType();
  final String id;
  final Friend? _friend;
  final VowUser? _vowUser;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  FriendVowUserModelIdentifier get modelIdentifier {
      return FriendVowUserModelIdentifier(
        id: id
      );
  }
  
  Friend get friend {
    try {
      return _friend!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  VowUser get vowUser {
    try {
      return _vowUser!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const FriendVowUser._internal({required this.id, required friend, required vowUser, createdAt, updatedAt}): _friend = friend, _vowUser = vowUser, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory FriendVowUser({String? id, required Friend friend, required VowUser vowUser}) {
    return FriendVowUser._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      friend: friend,
      vowUser: vowUser);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FriendVowUser &&
      id == other.id &&
      _friend == other._friend &&
      _vowUser == other._vowUser;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("FriendVowUser {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("friend=" + (_friend != null ? _friend!.toString() : "null") + ", ");
    buffer.write("vowUser=" + (_vowUser != null ? _vowUser!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  FriendVowUser copyWith({Friend? friend, VowUser? vowUser}) {
    return FriendVowUser._internal(
      id: id,
      friend: friend ?? this.friend,
      vowUser: vowUser ?? this.vowUser);
  }
  
  FriendVowUser copyWithModelFieldValues({
    ModelFieldValue<Friend>? friend,
    ModelFieldValue<VowUser>? vowUser
  }) {
    return FriendVowUser._internal(
      id: id,
      friend: friend == null ? this.friend : friend.value,
      vowUser: vowUser == null ? this.vowUser : vowUser.value
    );
  }
  
  FriendVowUser.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _friend = json['friend']?['serializedData'] != null
        ? Friend.fromJson(new Map<String, dynamic>.from(json['friend']['serializedData']))
        : null,
      _vowUser = json['vowUser']?['serializedData'] != null
        ? VowUser.fromJson(new Map<String, dynamic>.from(json['vowUser']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'friend': _friend?.toJson(), 'vowUser': _vowUser?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'friend': _friend,
    'vowUser': _vowUser,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<FriendVowUserModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<FriendVowUserModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final FRIEND = amplify_core.QueryField(
    fieldName: "friend",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Friend'));
  static final VOWUSER = amplify_core.QueryField(
    fieldName: "vowUser",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'VowUser'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FriendVowUser";
    modelSchemaDefinition.pluralName = "FriendVowUsers";
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["friendId"], name: "byFriend"),
      amplify_core.ModelIndex(fields: const ["vowUserId"], name: "byVowUser")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: FriendVowUser.FRIEND,
      isRequired: true,
      targetNames: ['friendId'],
      ofModelName: 'Friend'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: FriendVowUser.VOWUSER,
      isRequired: true,
      targetNames: ['vowUserId'],
      ofModelName: 'VowUser'
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

class _FriendVowUserModelType extends amplify_core.ModelType<FriendVowUser> {
  const _FriendVowUserModelType();
  
  @override
  FriendVowUser fromJson(Map<String, dynamic> jsonData) {
    return FriendVowUser.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'FriendVowUser';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [FriendVowUser] in your schema.
 */
class FriendVowUserModelIdentifier implements amplify_core.ModelIdentifier<FriendVowUser> {
  final String id;

  /** Create an instance of FriendVowUserModelIdentifier using [id] the primary key. */
  const FriendVowUserModelIdentifier({
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
  String toString() => 'FriendVowUserModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is FriendVowUserModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}