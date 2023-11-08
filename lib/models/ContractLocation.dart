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


/** This is an auto generated class representing the ContractLocation type in your schema. */
class ContractLocation {
  final String? _type;
  final String? _placeId;
  final String? _formattedAddress;
  final String? _lat;
  final String? _lng;

  String? get type {
    return _type;
  }
  
  String? get placeId {
    return _placeId;
  }
  
  String? get formattedAddress {
    return _formattedAddress;
  }
  
  String? get lat {
    return _lat;
  }
  
  String? get lng {
    return _lng;
  }
  
  const ContractLocation._internal({type, placeId, formattedAddress, lat, lng}): _type = type, _placeId = placeId, _formattedAddress = formattedAddress, _lat = lat, _lng = lng;
  
  factory ContractLocation({String? type, String? placeId, String? formattedAddress, String? lat, String? lng}) {
    return ContractLocation._internal(
      type: type,
      placeId: placeId,
      formattedAddress: formattedAddress,
      lat: lat,
      lng: lng);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContractLocation &&
      _type == other._type &&
      _placeId == other._placeId &&
      _formattedAddress == other._formattedAddress &&
      _lat == other._lat &&
      _lng == other._lng;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ContractLocation {");
    buffer.write("type=" + "$_type" + ", ");
    buffer.write("placeId=" + "$_placeId" + ", ");
    buffer.write("formattedAddress=" + "$_formattedAddress" + ", ");
    buffer.write("lat=" + "$_lat" + ", ");
    buffer.write("lng=" + "$_lng");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ContractLocation copyWith({String? type, String? placeId, String? formattedAddress, String? lat, String? lng}) {
    return ContractLocation._internal(
      type: type ?? this.type,
      placeId: placeId ?? this.placeId,
      formattedAddress: formattedAddress ?? this.formattedAddress,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng);
  }
  
  ContractLocation copyWithModelFieldValues({
    ModelFieldValue<String?>? type,
    ModelFieldValue<String?>? placeId,
    ModelFieldValue<String?>? formattedAddress,
    ModelFieldValue<String?>? lat,
    ModelFieldValue<String?>? lng
  }) {
    return ContractLocation._internal(
      type: type == null ? this.type : type.value,
      placeId: placeId == null ? this.placeId : placeId.value,
      formattedAddress: formattedAddress == null ? this.formattedAddress : formattedAddress.value,
      lat: lat == null ? this.lat : lat.value,
      lng: lng == null ? this.lng : lng.value
    );
  }
  
  ContractLocation.fromJson(Map<String, dynamic> json)  
    : _type = json['type'],
      _placeId = json['placeId'],
      _formattedAddress = json['formattedAddress'],
      _lat = json['lat'],
      _lng = json['lng'];
  
  Map<String, dynamic> toJson() => {
    'type': _type, 'placeId': _placeId, 'formattedAddress': _formattedAddress, 'lat': _lat, 'lng': _lng
  };
  
  Map<String, Object?> toMap() => {
    'type': _type,
    'placeId': _placeId,
    'formattedAddress': _formattedAddress,
    'lat': _lat,
    'lng': _lng
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ContractLocation";
    modelSchemaDefinition.pluralName = "ContractLocations";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'type',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'placeId',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'formattedAddress',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'lat',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'lng',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}