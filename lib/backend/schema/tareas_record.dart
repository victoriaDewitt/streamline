import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TareasRecord extends FirestoreRecord {
  TareasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "billingAddresses" field.
  List<DocumentReference>? _billingAddresses;
  List<DocumentReference> get billingAddresses => _billingAddresses ?? const [];
  bool hasBillingAddresses() => _billingAddresses != null;

  // "shippingAddresses" field.
  List<DocumentReference>? _shippingAddresses;
  List<DocumentReference> get shippingAddresses =>
      _shippingAddresses ?? const [];
  bool hasShippingAddresses() => _shippingAddresses != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _billingAddresses = getDataList(snapshotData['billingAddresses']);
    _shippingAddresses = getDataList(snapshotData['shippingAddresses']);
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tareas');

  static Stream<TareasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TareasRecord.fromSnapshot(s));

  static Future<TareasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TareasRecord.fromSnapshot(s));

  static TareasRecord fromSnapshot(DocumentSnapshot snapshot) => TareasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TareasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TareasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TareasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TareasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTareasRecordData({
  String? name,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class TareasRecordDocumentEquality implements Equality<TareasRecord> {
  const TareasRecordDocumentEquality();

  @override
  bool equals(TareasRecord? e1, TareasRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.billingAddresses, e2?.billingAddresses) &&
        listEquality.equals(e1?.shippingAddresses, e2?.shippingAddresses) &&
        e1?.name == e2?.name &&
        e1?.email == e2?.email;
  }

  @override
  int hash(TareasRecord? e) => const ListEquality()
      .hash([e?.billingAddresses, e?.shippingAddresses, e?.name, e?.email]);

  @override
  bool isValidKey(Object? o) => o is TareasRecord;
}
