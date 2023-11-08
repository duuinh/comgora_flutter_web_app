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


/** This is an auto generated class representing the VowUser type in your schema. */
class VowUser extends amplify_core.Model {
  static const classType = const _VowUserModelType();
  final String id;
  final String? _firstName;
  final String? _lastName;
  final String? _birthDate;
  final String? _gender;
  final String? _phone;
  final String? _email;
  final int? _KYCLevel;
  final String? _KYCState;
  final String? _userIdName;
  final String? _profile;
  final List<FriendVowUser>? _friends;
  final List<ContractVowUser>? _contracts;
  final List<ChatroomVowUser>? _chatrooms;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  VowUserModelIdentifier get modelIdentifier {
      return VowUserModelIdentifier(
        id: id
      );
  }
  
  String? get firstName {
    return _firstName;
  }
  
  String? get lastName {
    return _lastName;
  }
  
  String? get birthDate {
    return _birthDate;
  }
  
  String? get gender {
    return _gender;
  }
  
  String? get phone {
    return _phone;
  }
  
  String? get email {
    return _email;
  }
  
  int? get KYCLevel {
    return _KYCLevel;
  }
  
  String? get KYCState {
    return _KYCState;
  }
  
  String? get userIdName {
    return _userIdName;
  }
  
  String? get profile {
    return _profile;
  }
  
  List<FriendVowUser>? get friends {
    return _friends;
  }
  
  List<ContractVowUser>? get contracts {
    return _contracts;
  }
  
  List<ChatroomVowUser>? get chatrooms {
    return _chatrooms;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const VowUser._internal({required this.id, firstName, lastName, birthDate, gender, phone, email, KYCLevel, KYCState, userIdName, profile, friends, contracts, chatrooms, createdAt, updatedAt}): _firstName = firstName, _lastName = lastName, _birthDate = birthDate, _gender = gender, _phone = phone, _email = email, _KYCLevel = KYCLevel, _KYCState = KYCState, _userIdName = userIdName, _profile = profile, _friends = friends, _contracts = contracts, _chatrooms = chatrooms, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory VowUser({String? id, String? firstName, String? lastName, String? birthDate, String? gender, String? phone, String? email, int? KYCLevel, String? KYCState, String? userIdName, String? profile, List<FriendVowUser>? friends, List<ContractVowUser>? contracts, List<ChatroomVowUser>? chatrooms}) {
    return VowUser._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      firstName: firstName,
      lastName: lastName,
      birthDate: birthDate,
      gender: gender,
      phone: phone,
      email: email,
      KYCLevel: KYCLevel,
      KYCState: KYCState,
      userIdName: userIdName,
      profile: profile,
      friends: friends != null ? List<FriendVowUser>.unmodifiable(friends) : friends,
      contracts: contracts != null ? List<ContractVowUser>.unmodifiable(contracts) : contracts,
      chatrooms: chatrooms != null ? List<ChatroomVowUser>.unmodifiable(chatrooms) : chatrooms);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VowUser &&
      id == other.id &&
      _firstName == other._firstName &&
      _lastName == other._lastName &&
      _birthDate == other._birthDate &&
      _gender == other._gender &&
      _phone == other._phone &&
      _email == other._email &&
      _KYCLevel == other._KYCLevel &&
      _KYCState == other._KYCState &&
      _userIdName == other._userIdName &&
      _profile == other._profile &&
      DeepCollectionEquality().equals(_friends, other._friends) &&
      DeepCollectionEquality().equals(_contracts, other._contracts) &&
      DeepCollectionEquality().equals(_chatrooms, other._chatrooms);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("VowUser {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("firstName=" + "$_firstName" + ", ");
    buffer.write("lastName=" + "$_lastName" + ", ");
    buffer.write("birthDate=" + "$_birthDate" + ", ");
    buffer.write("gender=" + "$_gender" + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("KYCLevel=" + (_KYCLevel != null ? _KYCLevel!.toString() : "null") + ", ");
    buffer.write("KYCState=" + "$_KYCState" + ", ");
    buffer.write("userIdName=" + "$_userIdName" + ", ");
    buffer.write("profile=" + "$_profile" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  VowUser copyWith({String? firstName, String? lastName, String? birthDate, String? gender, String? phone, String? email, int? KYCLevel, String? KYCState, String? userIdName, String? profile, List<FriendVowUser>? friends, List<ContractVowUser>? contracts, List<ChatroomVowUser>? chatrooms}) {
    return VowUser._internal(
      id: id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      birthDate: birthDate ?? this.birthDate,
      gender: gender ?? this.gender,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      KYCLevel: KYCLevel ?? this.KYCLevel,
      KYCState: KYCState ?? this.KYCState,
      userIdName: userIdName ?? this.userIdName,
      profile: profile ?? this.profile,
      friends: friends ?? this.friends,
      contracts: contracts ?? this.contracts,
      chatrooms: chatrooms ?? this.chatrooms);
  }
  
  VowUser copyWithModelFieldValues({
    ModelFieldValue<String?>? firstName,
    ModelFieldValue<String?>? lastName,
    ModelFieldValue<String?>? birthDate,
    ModelFieldValue<String?>? gender,
    ModelFieldValue<String?>? phone,
    ModelFieldValue<String?>? email,
    ModelFieldValue<int?>? KYCLevel,
    ModelFieldValue<String?>? KYCState,
    ModelFieldValue<String?>? userIdName,
    ModelFieldValue<String?>? profile,
    ModelFieldValue<List<FriendVowUser>?>? friends,
    ModelFieldValue<List<ContractVowUser>?>? contracts,
    ModelFieldValue<List<ChatroomVowUser>?>? chatrooms
  }) {
    return VowUser._internal(
      id: id,
      firstName: firstName == null ? this.firstName : firstName.value,
      lastName: lastName == null ? this.lastName : lastName.value,
      birthDate: birthDate == null ? this.birthDate : birthDate.value,
      gender: gender == null ? this.gender : gender.value,
      phone: phone == null ? this.phone : phone.value,
      email: email == null ? this.email : email.value,
      KYCLevel: KYCLevel == null ? this.KYCLevel : KYCLevel.value,
      KYCState: KYCState == null ? this.KYCState : KYCState.value,
      userIdName: userIdName == null ? this.userIdName : userIdName.value,
      profile: profile == null ? this.profile : profile.value,
      friends: friends == null ? this.friends : friends.value,
      contracts: contracts == null ? this.contracts : contracts.value,
      chatrooms: chatrooms == null ? this.chatrooms : chatrooms.value
    );
  }
  
  VowUser.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _firstName = json['firstName'],
      _lastName = json['lastName'],
      _birthDate = json['birthDate'],
      _gender = json['gender'],
      _phone = json['phone'],
      _email = json['email'],
      _KYCLevel = (json['KYCLevel'] as num?)?.toInt(),
      _KYCState = json['KYCState'],
      _userIdName = json['userIdName'],
      _profile = json['profile'],
      _friends = json['friends'] is List
        ? (json['friends'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => FriendVowUser.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _contracts = json['contracts'] is List
        ? (json['contracts'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ContractVowUser.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _chatrooms = json['chatrooms'] is List
        ? (json['chatrooms'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ChatroomVowUser.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'firstName': _firstName, 'lastName': _lastName, 'birthDate': _birthDate, 'gender': _gender, 'phone': _phone, 'email': _email, 'KYCLevel': _KYCLevel, 'KYCState': _KYCState, 'userIdName': _userIdName, 'profile': _profile, 'friends': _friends?.map((FriendVowUser? e) => e?.toJson()).toList(), 'contracts': _contracts?.map((ContractVowUser? e) => e?.toJson()).toList(), 'chatrooms': _chatrooms?.map((ChatroomVowUser? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'firstName': _firstName,
    'lastName': _lastName,
    'birthDate': _birthDate,
    'gender': _gender,
    'phone': _phone,
    'email': _email,
    'KYCLevel': _KYCLevel,
    'KYCState': _KYCState,
    'userIdName': _userIdName,
    'profile': _profile,
    'friends': _friends,
    'contracts': _contracts,
    'chatrooms': _chatrooms,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<VowUserModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<VowUserModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final FIRSTNAME = amplify_core.QueryField(fieldName: "firstName");
  static final LASTNAME = amplify_core.QueryField(fieldName: "lastName");
  static final BIRTHDATE = amplify_core.QueryField(fieldName: "birthDate");
  static final GENDER = amplify_core.QueryField(fieldName: "gender");
  static final PHONE = amplify_core.QueryField(fieldName: "phone");
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final KYCLEVEL = amplify_core.QueryField(fieldName: "KYCLevel");
  static final KYCSTATE = amplify_core.QueryField(fieldName: "KYCState");
  static final USERIDNAME = amplify_core.QueryField(fieldName: "userIdName");
  static final PROFILE = amplify_core.QueryField(fieldName: "profile");
  static final FRIENDS = amplify_core.QueryField(
    fieldName: "friends",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'FriendVowUser'));
  static final CONTRACTS = amplify_core.QueryField(
    fieldName: "contracts",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'ContractVowUser'));
  static final CHATROOMS = amplify_core.QueryField(
    fieldName: "chatrooms",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'ChatroomVowUser'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "VowUser";
    modelSchemaDefinition.pluralName = "VowUsers";
    
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
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VowUser.FIRSTNAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VowUser.LASTNAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VowUser.BIRTHDATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VowUser.GENDER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VowUser.PHONE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VowUser.EMAIL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VowUser.KYCLEVEL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VowUser.KYCSTATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VowUser.USERIDNAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VowUser.PROFILE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: VowUser.FRIENDS,
      isRequired: false,
      ofModelName: 'FriendVowUser',
      associatedKey: FriendVowUser.VOWUSER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: VowUser.CONTRACTS,
      isRequired: false,
      ofModelName: 'ContractVowUser',
      associatedKey: ContractVowUser.VOWUSER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: VowUser.CHATROOMS,
      isRequired: false,
      ofModelName: 'ChatroomVowUser',
      associatedKey: ChatroomVowUser.VOWUSER
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

class _VowUserModelType extends amplify_core.ModelType<VowUser> {
  const _VowUserModelType();
  
  @override
  VowUser fromJson(Map<String, dynamic> jsonData) {
    return VowUser.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'VowUser';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [VowUser] in your schema.
 */
class VowUserModelIdentifier implements amplify_core.ModelIdentifier<VowUser> {
  final String id;

  /** Create an instance of VowUserModelIdentifier using [id] the primary key. */
  const VowUserModelIdentifier({
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
  String toString() => 'VowUserModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is VowUserModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}