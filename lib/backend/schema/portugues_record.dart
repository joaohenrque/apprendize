import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PortuguesRecord extends FirestoreRecord {
  PortuguesRecord._(
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
      FirebaseFirestore.instance.collection('portugues');

  static Stream<PortuguesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PortuguesRecord.fromSnapshot(s));

  static Future<PortuguesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PortuguesRecord.fromSnapshot(s));

  static PortuguesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PortuguesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PortuguesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PortuguesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PortuguesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PortuguesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPortuguesRecordData({
  String? recado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recado': recado,
    }.withoutNulls,
  );

  return firestoreData;
}
