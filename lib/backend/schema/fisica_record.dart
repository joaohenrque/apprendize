import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FisicaRecord extends FirestoreRecord {
  FisicaRecord._(
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
      FirebaseFirestore.instance.collection('fisica');

  static Stream<FisicaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FisicaRecord.fromSnapshot(s));

  static Future<FisicaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FisicaRecord.fromSnapshot(s));

  static FisicaRecord fromSnapshot(DocumentSnapshot snapshot) => FisicaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FisicaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FisicaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FisicaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FisicaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFisicaRecordData({
  String? recado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recado': recado,
    }.withoutNulls,
  );

  return firestoreData;
}
