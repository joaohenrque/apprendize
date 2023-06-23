import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilosofiaRecord extends FirestoreRecord {
  FilosofiaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "recado" field.
  String? _recado;
  String get recado => _recado ?? '';
  bool hasRecado() => _recado != null;

  void _initializeFields() {
    _recado = snapshotData['recado'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('filosofia');

  static Stream<FilosofiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FilosofiaRecord.fromSnapshot(s));

  static Future<FilosofiaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FilosofiaRecord.fromSnapshot(s));

  static FilosofiaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FilosofiaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FilosofiaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FilosofiaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FilosofiaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FilosofiaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFilosofiaRecordData({
  String? recado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recado': recado,
    }.withoutNulls,
  );

  return firestoreData;
}
