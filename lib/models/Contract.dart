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


/** This is an auto generated class representing the Contract type in your schema. */
class Contract extends amplify_core.Model {
  static const classType = const _ContractModelType();
  final String id;
  final bool? _isPrivate;
  final List<String>? _figures;
  final String? _title;
  final CategoryType? _category;
  final String? _description;
  final int? _price;
  final String? _currency;
  final amplify_core.TemporalDateTime? _expiredDate;
  final ContractLocation? _location;
  final List<ContractVowUser>? _vowUsers;
  final String? _pdfDeal;
  final List<String>? _ads;
  final String? _provider;
  final List<String>? _recievers;
  final PoolType? _poolType;
  final StatusType? _status;
  final String? _senderId;
  final bool? _isContractFormatOn;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ContractModelIdentifier get modelIdentifier {
      return ContractModelIdentifier(
        id: id
      );
  }
  
  bool get isPrivate {
    try {
      return _isPrivate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String>? get figures {
    return _figures;
  }
  
  String get title {
    try {
      return _title!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  CategoryType get category {
    try {
      return _category!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get description {
    try {
      return _description!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get price {
    try {
      return _price!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get currency {
    try {
      return _currency!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get expiredDate {
    return _expiredDate;
  }
  
  ContractLocation? get location {
    return _location;
  }
  
  List<ContractVowUser>? get vowUsers {
    return _vowUsers;
  }
  
  String? get pdfDeal {
    return _pdfDeal;
  }
  
  List<String>? get ads {
    return _ads;
  }
  
  String? get provider {
    return _provider;
  }
  
  List<String>? get recievers {
    return _recievers;
  }
  
  PoolType get poolType {
    try {
      return _poolType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  StatusType? get status {
    return _status;
  }
  
  String get senderId {
    try {
      return _senderId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  bool get isContractFormatOn {
    try {
      return _isContractFormatOn!;
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
  
  const Contract._internal({required this.id, required isPrivate, figures, required title, required category, required description, required price, required currency, expiredDate, location, vowUsers, pdfDeal, ads, provider, recievers, required poolType, status, required senderId, required isContractFormatOn, createdAt, updatedAt}): _isPrivate = isPrivate, _figures = figures, _title = title, _category = category, _description = description, _price = price, _currency = currency, _expiredDate = expiredDate, _location = location, _vowUsers = vowUsers, _pdfDeal = pdfDeal, _ads = ads, _provider = provider, _recievers = recievers, _poolType = poolType, _status = status, _senderId = senderId, _isContractFormatOn = isContractFormatOn, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Contract({String? id, required bool isPrivate, List<String>? figures, required String title, required CategoryType category, required String description, required int price, required String currency, amplify_core.TemporalDateTime? expiredDate, ContractLocation? location, List<ContractVowUser>? vowUsers, String? pdfDeal, List<String>? ads, String? provider, List<String>? recievers, required PoolType poolType, StatusType? status, required String senderId, required bool isContractFormatOn}) {
    return Contract._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      isPrivate: isPrivate,
      figures: figures != null ? List<String>.unmodifiable(figures) : figures,
      title: title,
      category: category,
      description: description,
      price: price,
      currency: currency,
      expiredDate: expiredDate,
      location: location,
      vowUsers: vowUsers != null ? List<ContractVowUser>.unmodifiable(vowUsers) : vowUsers,
      pdfDeal: pdfDeal,
      ads: ads != null ? List<String>.unmodifiable(ads) : ads,
      provider: provider,
      recievers: recievers != null ? List<String>.unmodifiable(recievers) : recievers,
      poolType: poolType,
      status: status,
      senderId: senderId,
      isContractFormatOn: isContractFormatOn);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Contract &&
      id == other.id &&
      _isPrivate == other._isPrivate &&
      DeepCollectionEquality().equals(_figures, other._figures) &&
      _title == other._title &&
      _category == other._category &&
      _description == other._description &&
      _price == other._price &&
      _currency == other._currency &&
      _expiredDate == other._expiredDate &&
      _location == other._location &&
      DeepCollectionEquality().equals(_vowUsers, other._vowUsers) &&
      _pdfDeal == other._pdfDeal &&
      DeepCollectionEquality().equals(_ads, other._ads) &&
      _provider == other._provider &&
      DeepCollectionEquality().equals(_recievers, other._recievers) &&
      _poolType == other._poolType &&
      _status == other._status &&
      _senderId == other._senderId &&
      _isContractFormatOn == other._isContractFormatOn;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Contract {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("isPrivate=" + (_isPrivate != null ? _isPrivate!.toString() : "null") + ", ");
    buffer.write("figures=" + (_figures != null ? _figures!.toString() : "null") + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("category=" + (_category != null ? amplify_core.enumToString(_category)! : "null") + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("price=" + (_price != null ? _price!.toString() : "null") + ", ");
    buffer.write("currency=" + "$_currency" + ", ");
    buffer.write("expiredDate=" + (_expiredDate != null ? _expiredDate!.format() : "null") + ", ");
    buffer.write("location=" + (_location != null ? _location!.toString() : "null") + ", ");
    buffer.write("pdfDeal=" + "$_pdfDeal" + ", ");
    buffer.write("ads=" + (_ads != null ? _ads!.toString() : "null") + ", ");
    buffer.write("provider=" + "$_provider" + ", ");
    buffer.write("recievers=" + (_recievers != null ? _recievers!.toString() : "null") + ", ");
    buffer.write("poolType=" + (_poolType != null ? amplify_core.enumToString(_poolType)! : "null") + ", ");
    buffer.write("status=" + (_status != null ? amplify_core.enumToString(_status)! : "null") + ", ");
    buffer.write("senderId=" + "$_senderId" + ", ");
    buffer.write("isContractFormatOn=" + (_isContractFormatOn != null ? _isContractFormatOn!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Contract copyWith({bool? isPrivate, List<String>? figures, String? title, CategoryType? category, String? description, int? price, String? currency, amplify_core.TemporalDateTime? expiredDate, ContractLocation? location, List<ContractVowUser>? vowUsers, String? pdfDeal, List<String>? ads, String? provider, List<String>? recievers, PoolType? poolType, StatusType? status, String? senderId, bool? isContractFormatOn}) {
    return Contract._internal(
      id: id,
      isPrivate: isPrivate ?? this.isPrivate,
      figures: figures ?? this.figures,
      title: title ?? this.title,
      category: category ?? this.category,
      description: description ?? this.description,
      price: price ?? this.price,
      currency: currency ?? this.currency,
      expiredDate: expiredDate ?? this.expiredDate,
      location: location ?? this.location,
      vowUsers: vowUsers ?? this.vowUsers,
      pdfDeal: pdfDeal ?? this.pdfDeal,
      ads: ads ?? this.ads,
      provider: provider ?? this.provider,
      recievers: recievers ?? this.recievers,
      poolType: poolType ?? this.poolType,
      status: status ?? this.status,
      senderId: senderId ?? this.senderId,
      isContractFormatOn: isContractFormatOn ?? this.isContractFormatOn);
  }
  
  Contract copyWithModelFieldValues({
    ModelFieldValue<bool>? isPrivate,
    ModelFieldValue<List<String>?>? figures,
    ModelFieldValue<String>? title,
    ModelFieldValue<CategoryType>? category,
    ModelFieldValue<String>? description,
    ModelFieldValue<int>? price,
    ModelFieldValue<String>? currency,
    ModelFieldValue<amplify_core.TemporalDateTime?>? expiredDate,
    ModelFieldValue<ContractLocation?>? location,
    ModelFieldValue<List<ContractVowUser>?>? vowUsers,
    ModelFieldValue<String?>? pdfDeal,
    ModelFieldValue<List<String>?>? ads,
    ModelFieldValue<String?>? provider,
    ModelFieldValue<List<String>?>? recievers,
    ModelFieldValue<PoolType>? poolType,
    ModelFieldValue<StatusType?>? status,
    ModelFieldValue<String>? senderId,
    ModelFieldValue<bool>? isContractFormatOn
  }) {
    return Contract._internal(
      id: id,
      isPrivate: isPrivate == null ? this.isPrivate : isPrivate.value,
      figures: figures == null ? this.figures : figures.value,
      title: title == null ? this.title : title.value,
      category: category == null ? this.category : category.value,
      description: description == null ? this.description : description.value,
      price: price == null ? this.price : price.value,
      currency: currency == null ? this.currency : currency.value,
      expiredDate: expiredDate == null ? this.expiredDate : expiredDate.value,
      location: location == null ? this.location : location.value,
      vowUsers: vowUsers == null ? this.vowUsers : vowUsers.value,
      pdfDeal: pdfDeal == null ? this.pdfDeal : pdfDeal.value,
      ads: ads == null ? this.ads : ads.value,
      provider: provider == null ? this.provider : provider.value,
      recievers: recievers == null ? this.recievers : recievers.value,
      poolType: poolType == null ? this.poolType : poolType.value,
      status: status == null ? this.status : status.value,
      senderId: senderId == null ? this.senderId : senderId.value,
      isContractFormatOn: isContractFormatOn == null ? this.isContractFormatOn : isContractFormatOn.value
    );
  }
  
  Contract.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _isPrivate = json['isPrivate'],
      _figures = json['figures']?.cast<String>(),
      _title = json['title'],
      _category = amplify_core.enumFromString<CategoryType>(json['category'], CategoryType.values),
      _description = json['description'],
      _price = (json['price'] as num?)?.toInt(),
      _currency = json['currency'],
      _expiredDate = json['expiredDate'] != null ? amplify_core.TemporalDateTime.fromString(json['expiredDate']) : null,
      _location = json['location']?['serializedData'] != null
        ? ContractLocation.fromJson(new Map<String, dynamic>.from(json['location']['serializedData']))
        : null,
      _vowUsers = json['vowUsers'] is List
        ? (json['vowUsers'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ContractVowUser.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _pdfDeal = json['pdfDeal'],
      _ads = json['ads']?.cast<String>(),
      _provider = json['provider'],
      _recievers = json['recievers']?.cast<String>(),
      _poolType = amplify_core.enumFromString<PoolType>(json['poolType'], PoolType.values),
      _status = amplify_core.enumFromString<StatusType>(json['status'], StatusType.values),
      _senderId = json['senderId'],
      _isContractFormatOn = json['isContractFormatOn'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'isPrivate': _isPrivate, 'figures': _figures, 'title': _title, 'category': amplify_core.enumToString(_category), 'description': _description, 'price': _price, 'currency': _currency, 'expiredDate': _expiredDate?.format(), 'location': _location?.toJson(), 'vowUsers': _vowUsers?.map((ContractVowUser? e) => e?.toJson()).toList(), 'pdfDeal': _pdfDeal, 'ads': _ads, 'provider': _provider, 'recievers': _recievers, 'poolType': amplify_core.enumToString(_poolType), 'status': amplify_core.enumToString(_status), 'senderId': _senderId, 'isContractFormatOn': _isContractFormatOn, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'isPrivate': _isPrivate,
    'figures': _figures,
    'title': _title,
    'category': _category,
    'description': _description,
    'price': _price,
    'currency': _currency,
    'expiredDate': _expiredDate,
    'location': _location,
    'vowUsers': _vowUsers,
    'pdfDeal': _pdfDeal,
    'ads': _ads,
    'provider': _provider,
    'recievers': _recievers,
    'poolType': _poolType,
    'status': _status,
    'senderId': _senderId,
    'isContractFormatOn': _isContractFormatOn,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ContractModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ContractModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final ISPRIVATE = amplify_core.QueryField(fieldName: "isPrivate");
  static final FIGURES = amplify_core.QueryField(fieldName: "figures");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final CATEGORY = amplify_core.QueryField(fieldName: "category");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final PRICE = amplify_core.QueryField(fieldName: "price");
  static final CURRENCY = amplify_core.QueryField(fieldName: "currency");
  static final EXPIREDDATE = amplify_core.QueryField(fieldName: "expiredDate");
  static final LOCATION = amplify_core.QueryField(fieldName: "location");
  static final VOWUSERS = amplify_core.QueryField(
    fieldName: "vowUsers",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'ContractVowUser'));
  static final PDFDEAL = amplify_core.QueryField(fieldName: "pdfDeal");
  static final ADS = amplify_core.QueryField(fieldName: "ads");
  static final PROVIDER = amplify_core.QueryField(fieldName: "provider");
  static final RECIEVERS = amplify_core.QueryField(fieldName: "recievers");
  static final POOLTYPE = amplify_core.QueryField(fieldName: "poolType");
  static final STATUS = amplify_core.QueryField(fieldName: "status");
  static final SENDERID = amplify_core.QueryField(fieldName: "senderId");
  static final ISCONTRACTFORMATON = amplify_core.QueryField(fieldName: "isContractFormatOn");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Contract";
    modelSchemaDefinition.pluralName = "Contracts";
    
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
      key: Contract.ISPRIVATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.FIGURES,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.TITLE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.CATEGORY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.DESCRIPTION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.PRICE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.CURRENCY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.EXPIREDDATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'location',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'ContractLocation')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Contract.VOWUSERS,
      isRequired: false,
      ofModelName: 'ContractVowUser',
      associatedKey: ContractVowUser.CONTRACT
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.PDFDEAL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.ADS,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.PROVIDER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.RECIEVERS,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.POOLTYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.STATUS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.SENDERID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Contract.ISCONTRACTFORMATON,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
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

class _ContractModelType extends amplify_core.ModelType<Contract> {
  const _ContractModelType();
  
  @override
  Contract fromJson(Map<String, dynamic> jsonData) {
    return Contract.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Contract';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Contract] in your schema.
 */
class ContractModelIdentifier implements amplify_core.ModelIdentifier<Contract> {
  final String id;

  /** Create an instance of ContractModelIdentifier using [id] the primary key. */
  const ContractModelIdentifier({
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
  String toString() => 'ContractModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ContractModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}