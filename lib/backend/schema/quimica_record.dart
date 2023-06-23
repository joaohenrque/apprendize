import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuimicaRecord extends FirestoreRecord {
  QuimicaRecord._(
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
      FirebaseFirestore.instance.collection('quimica');

  static Stream<QuimicaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuimicaRecord.fromSnapshot(s));

  static Future<QuimicaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuimicaRecord.fromSnapshot(s));

  static QuimicaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuimicaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuimicaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuimicaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuimicaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuimicaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuimicaRecordData({
  String? recado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recado': recado,
    }.withoutNulls,
  );

  return firestoreData;
}
