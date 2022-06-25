import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'utilizador_record.g.dart';

abstract class UtilizadorRecord
    implements Built<UtilizadorRecord, UtilizadorRecordBuilder> {
  static Serializer<UtilizadorRecord> get serializer =>
      _$utilizadorRecordSerializer;

  @nullable
  String get nome;

  @nullable
  String get mail;

  @nullable
  BuiltList<String> get gostos;

  @nullable
  String get passe;

  @nullable
  String get localizacao;

  @nullable
  String get descricao;

  @nullable
  @BuiltValueField(wireName: 'foto_perfil')
  String get fotoPerfil;

  @nullable
  BuiltList<String> get fotos;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  int get age;

  @nullable
  @BuiltValueField(wireName: 'TipodeConta')
  String get tipodeConta;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UtilizadorRecordBuilder builder) => builder
    ..nome = ''
    ..mail = ''
    ..gostos = ListBuilder()
    ..passe = ''
    ..localizacao = ''
    ..descricao = ''
    ..fotoPerfil = ''
    ..fotos = ListBuilder()
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..age = 0
    ..tipodeConta = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('utilizador');

  static Stream<UtilizadorRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UtilizadorRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UtilizadorRecord._();
  factory UtilizadorRecord([void Function(UtilizadorRecordBuilder) updates]) =
      _$UtilizadorRecord;

  static UtilizadorRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUtilizadorRecordData({
  String nome,
  String mail,
  String passe,
  String localizacao,
  String descricao,
  String fotoPerfil,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  int age,
  String tipodeConta,
}) =>
    serializers.toFirestore(
        UtilizadorRecord.serializer,
        UtilizadorRecord((u) => u
          ..nome = nome
          ..mail = mail
          ..gostos = null
          ..passe = passe
          ..localizacao = localizacao
          ..descricao = descricao
          ..fotoPerfil = fotoPerfil
          ..fotos = null
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..age = age
          ..tipodeConta = tipodeConta));
