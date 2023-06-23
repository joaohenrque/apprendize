import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeometriaRecord extends FirestoreRecord {
  GeometriaRecord._(
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
      FirebaseFirestore.instance.collection('geometria');

  static Stream<GeometriaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GeometriaRecord.fromSnapshot(s));

  static Future<GeometriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GeometriaRecord.fromSnapshot(s));

  static GeometriaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GeometriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GeometriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GeometriaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GeometriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GeometriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGeometriaRecordData({
  String? recado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recado': recado,
    }.withoutNulls,
  );

  return firestoreData;
}
