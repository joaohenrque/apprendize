import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MatematicaRecord extends FirestoreRecord {
  MatematicaRecord._(
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
      FirebaseFirestore.instance.collection('matematica');

  static Stream<MatematicaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MatematicaRecord.fromSnapshot(s));

  static Future<MatematicaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MatematicaRecord.fromSnapshot(s));

  static MatematicaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MatematicaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MatematicaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MatematicaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MatematicaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MatematicaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMatematicaRecordData({
  String? recado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recado': recado,
    }.withoutNulls,
  );

  return firestoreData;
}
