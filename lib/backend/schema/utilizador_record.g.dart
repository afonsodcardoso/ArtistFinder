// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utilizador_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UtilizadorRecord> _$utilizadorRecordSerializer =
    new _$UtilizadorRecordSerializer();

class _$UtilizadorRecordSerializer
    implements StructuredSerializer<UtilizadorRecord> {
  @override
  final Iterable<Type> types = const [UtilizadorRecord, _$UtilizadorRecord];
  @override
  final String wireName = 'UtilizadorRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UtilizadorRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mail;
    if (value != null) {
      result
        ..add('mail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gostos;
    if (value != null) {
      result
        ..add('gostos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.passe;
    if (value != null) {
      result
        ..add('passe')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.localizacao;
    if (value != null) {
      result
        ..add('localizacao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descricao;
    if (value != null) {
      result
        ..add('descricao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fotoPerfil;
    if (value != null) {
      result
        ..add('foto_perfil')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fotos;
    if (value != null) {
      result
        ..add('fotos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tipodeConta;
    if (value != null) {
      result
        ..add('TipodeConta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  UtilizadorRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UtilizadorRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mail':
          result.mail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gostos':
          result.gostos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'passe':
          result.passe = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'localizacao':
          result.localizacao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descricao':
          result.descricao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'foto_perfil':
          result.fotoPerfil = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fotos':
          result.fotos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'TipodeConta':
          result.tipodeConta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UtilizadorRecord extends UtilizadorRecord {
  @override
  final String nome;
  @override
  final String mail;
  @override
  final BuiltList<String> gostos;
  @override
  final String passe;
  @override
  final String localizacao;
  @override
  final String descricao;
  @override
  final String fotoPerfil;
  @override
  final BuiltList<String> fotos;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final int age;
  @override
  final String tipodeConta;
  @override
  final DocumentReference<Object> reference;

  factory _$UtilizadorRecord(
          [void Function(UtilizadorRecordBuilder) updates]) =>
      (new UtilizadorRecordBuilder()..update(updates)).build();

  _$UtilizadorRecord._(
      {this.nome,
      this.mail,
      this.gostos,
      this.passe,
      this.localizacao,
      this.descricao,
      this.fotoPerfil,
      this.fotos,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.age,
      this.tipodeConta,
      this.reference})
      : super._();

  @override
  UtilizadorRecord rebuild(void Function(UtilizadorRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UtilizadorRecordBuilder toBuilder() =>
      new UtilizadorRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UtilizadorRecord &&
        nome == other.nome &&
        mail == other.mail &&
        gostos == other.gostos &&
        passe == other.passe &&
        localizacao == other.localizacao &&
        descricao == other.descricao &&
        fotoPerfil == other.fotoPerfil &&
        fotos == other.fotos &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        age == other.age &&
        tipodeConta == other.tipodeConta &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        nome
                                                                            .hashCode),
                                                                    mail
                                                                        .hashCode),
                                                                gostos
                                                                    .hashCode),
                                                            passe.hashCode),
                                                        localizacao.hashCode),
                                                    descricao.hashCode),
                                                fotoPerfil.hashCode),
                                            fotos.hashCode),
                                        email.hashCode),
                                    displayName.hashCode),
                                photoUrl.hashCode),
                            uid.hashCode),
                        createdTime.hashCode),
                    phoneNumber.hashCode),
                age.hashCode),
            tipodeConta.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UtilizadorRecord')
          ..add('nome', nome)
          ..add('mail', mail)
          ..add('gostos', gostos)
          ..add('passe', passe)
          ..add('localizacao', localizacao)
          ..add('descricao', descricao)
          ..add('fotoPerfil', fotoPerfil)
          ..add('fotos', fotos)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('age', age)
          ..add('tipodeConta', tipodeConta)
          ..add('reference', reference))
        .toString();
  }
}

class UtilizadorRecordBuilder
    implements Builder<UtilizadorRecord, UtilizadorRecordBuilder> {
  _$UtilizadorRecord _$v;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  String _mail;
  String get mail => _$this._mail;
  set mail(String mail) => _$this._mail = mail;

  ListBuilder<String> _gostos;
  ListBuilder<String> get gostos =>
      _$this._gostos ??= new ListBuilder<String>();
  set gostos(ListBuilder<String> gostos) => _$this._gostos = gostos;

  String _passe;
  String get passe => _$this._passe;
  set passe(String passe) => _$this._passe = passe;

  String _localizacao;
  String get localizacao => _$this._localizacao;
  set localizacao(String localizacao) => _$this._localizacao = localizacao;

  String _descricao;
  String get descricao => _$this._descricao;
  set descricao(String descricao) => _$this._descricao = descricao;

  String _fotoPerfil;
  String get fotoPerfil => _$this._fotoPerfil;
  set fotoPerfil(String fotoPerfil) => _$this._fotoPerfil = fotoPerfil;

  ListBuilder<String> _fotos;
  ListBuilder<String> get fotos => _$this._fotos ??= new ListBuilder<String>();
  set fotos(ListBuilder<String> fotos) => _$this._fotos = fotos;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  int _age;
  int get age => _$this._age;
  set age(int age) => _$this._age = age;

  String _tipodeConta;
  String get tipodeConta => _$this._tipodeConta;
  set tipodeConta(String tipodeConta) => _$this._tipodeConta = tipodeConta;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UtilizadorRecordBuilder() {
    UtilizadorRecord._initializeBuilder(this);
  }

  UtilizadorRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _mail = $v.mail;
      _gostos = $v.gostos?.toBuilder();
      _passe = $v.passe;
      _localizacao = $v.localizacao;
      _descricao = $v.descricao;
      _fotoPerfil = $v.fotoPerfil;
      _fotos = $v.fotos?.toBuilder();
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _age = $v.age;
      _tipodeConta = $v.tipodeConta;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UtilizadorRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UtilizadorRecord;
  }

  @override
  void update(void Function(UtilizadorRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UtilizadorRecord build() {
    _$UtilizadorRecord _$result;
    try {
      _$result = _$v ??
          new _$UtilizadorRecord._(
              nome: nome,
              mail: mail,
              gostos: _gostos?.build(),
              passe: passe,
              localizacao: localizacao,
              descricao: descricao,
              fotoPerfil: fotoPerfil,
              fotos: _fotos?.build(),
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              age: age,
              tipodeConta: tipodeConta,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'gostos';
        _gostos?.build();

        _$failedField = 'fotos';
        _fotos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UtilizadorRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
