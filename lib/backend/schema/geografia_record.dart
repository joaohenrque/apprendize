import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeografiaRecord extends FirestoreRecord {
  GeografiaRecord._(
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
      FirebaseFirestore.instance.collection('geografia');

  static Stream<GeografiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GeografiaRecord.fromSnapshot(s));

  static Future<GeografiaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GeografiaRecord.fromSnapshot(s));

  static GeografiaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GeografiaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GeografiaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GeografiaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GeografiaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GeografiaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGeografiaRecordData({
  String? recado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recado': recado,
    }.withoutNulls,
  );

  return firestoreData;
}
