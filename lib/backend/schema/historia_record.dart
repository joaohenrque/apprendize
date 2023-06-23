import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoriaRecord extends FirestoreRecord {
  HistoriaRecord._(
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
      FirebaseFirestore.instance.collection('historia');

  static Stream<HistoriaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoriaRecord.fromSnapshot(s));

  static Future<HistoriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistoriaRecord.fromSnapshot(s));

  static HistoriaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoriaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoriaRecordData({
  String? recado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recado': recado,
    }.withoutNulls,
  );

  return firestoreData;
}
