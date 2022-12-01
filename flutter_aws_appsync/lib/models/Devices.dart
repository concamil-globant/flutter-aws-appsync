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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Devices type in your schema. */
@immutable
class Devices {
  final TemporalDate? _date;
  final String? _devices_id;
  final String? _os;

  TemporalDate? get date {
    return _date;
  }
  
  String? get devices_id {
    return _devices_id;
  }
  
  String? get os {
    return _os;
  }
  
  const Devices._internal({date, devices_id, os}): _date = date, _devices_id = devices_id, _os = os;
  
  factory Devices({TemporalDate? date, String? devices_id, String? os}) {
    return Devices._internal(
      date: date,
      devices_id: devices_id,
      os: os);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Devices &&
      _date == other._date &&
      _devices_id == other._devices_id &&
      _os == other._os;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Devices {");
    buffer.write("date=" + (_date != null ? _date!.format() : "null") + ", ");
    buffer.write("devices_id=" + "$_devices_id" + ", ");
    buffer.write("os=" + "$_os");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Devices copyWith({TemporalDate? date, String? devices_id, String? os}) {
    return Devices._internal(
      date: date ?? this.date,
      devices_id: devices_id ?? this.devices_id,
      os: os ?? this.os);
  }
  
  Devices.fromJson(Map<String, dynamic> json)  
    : _date = json['date'] != null ? TemporalDate.fromString(json['date']) : null,
      _devices_id = json['devices_id'],
      _os = json['os'];
  
  Map<String, dynamic> toJson() => {
    'date': _date?.format(), 'devices_id': _devices_id, 'os': _os
  };
  
  Map<String, Object?> toMap() => {
    'date': _date, 'devices_id': _devices_id, 'os': _os
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Devices";
    modelSchemaDefinition.pluralName = "Devices";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'date',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'devices_id',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'os',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}