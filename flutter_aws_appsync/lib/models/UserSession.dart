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
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the UserSession type in your schema. */
@immutable
class UserSession extends Model {
  static const classType = const _UserSessionModelType();
  final String id;
  final String? _client_id;
  final List<Devices>? _devices;
  final String? _last_device;
  final String? _msisdn;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  UserSessionModelIdentifier get modelIdentifier {
      return UserSessionModelIdentifier(
        id: id
      );
  }
  
  String get client_id {
    try {
      return _client_id!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<Devices>? get devices {
    return _devices;
  }
  
  String get last_device {
    try {
      return _last_device!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get msisdn {
    try {
      return _msisdn!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const UserSession._internal({required this.id, required client_id, devices, required last_device, required msisdn, createdAt, updatedAt}): _client_id = client_id, _devices = devices, _last_device = last_device, _msisdn = msisdn, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory UserSession({String? id, required String client_id, List<Devices>? devices, required String last_device, required String msisdn}) {
    return UserSession._internal(
      id: id == null ? UUID.getUUID() : id,
      client_id: client_id,
      devices: devices != null ? List<Devices>.unmodifiable(devices) : devices,
      last_device: last_device,
      msisdn: msisdn);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSession &&
      id == other.id &&
      _client_id == other._client_id &&
      DeepCollectionEquality().equals(_devices, other._devices) &&
      _last_device == other._last_device &&
      _msisdn == other._msisdn;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserSession {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("client_id=" + "$_client_id" + ", ");
    buffer.write("devices=" + (_devices != null ? _devices!.toString() : "null") + ", ");
    buffer.write("last_device=" + "$_last_device" + ", ");
    buffer.write("msisdn=" + "$_msisdn" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserSession copyWith({String? client_id, List<Devices>? devices, String? last_device, String? msisdn}) {
    return UserSession._internal(
      id: id,
      client_id: client_id ?? this.client_id,
      devices: devices ?? this.devices,
      last_device: last_device ?? this.last_device,
      msisdn: msisdn ?? this.msisdn);
  }
  
  UserSession.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _client_id = json['client_id'],
      _devices = json['devices'] is List
        ? (json['devices'] as List)
          .where((e) => e != null)
          .map((e) => Devices.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _last_device = json['last_device'],
      _msisdn = json['msisdn'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'client_id': _client_id, 'devices': _devices?.map((Devices? e) => e?.toJson()).toList(), 'last_device': _last_device, 'msisdn': _msisdn, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'client_id': _client_id, 'devices': _devices, 'last_device': _last_device, 'msisdn': _msisdn, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<UserSessionModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<UserSessionModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField CLIENT_ID = QueryField(fieldName: "client_id");
  static final QueryField DEVICES = QueryField(fieldName: "devices");
  static final QueryField LAST_DEVICE = QueryField(fieldName: "last_device");
  static final QueryField MSISDN = QueryField(fieldName: "msisdn");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserSession";
    modelSchemaDefinition.pluralName = "UserSessions";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserSession.CLIENT_ID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'devices',
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'Devices')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserSession.LAST_DEVICE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserSession.MSISDN,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _UserSessionModelType extends ModelType<UserSession> {
  const _UserSessionModelType();
  
  @override
  UserSession fromJson(Map<String, dynamic> jsonData) {
    return UserSession.fromJson(jsonData);
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [UserSession] in your schema.
 */
@immutable
class UserSessionModelIdentifier implements ModelIdentifier<UserSession> {
  final String id;

  /** Create an instance of UserSessionModelIdentifier using [id] the primary key. */
  const UserSessionModelIdentifier({
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
  String toString() => 'UserSessionModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UserSessionModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}