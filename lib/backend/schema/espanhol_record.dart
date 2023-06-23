import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EspanholRecord extends FirestoreRecord {
  EspanholRecord._(
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
      FirebaseFirestore.instance.collection('espanhol');

  static Stream<EspanholRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EspanholRecord.fromSnapshot(s));

  static Future<EspanholRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EspanholRecord.fromSnapshot(s));

  static EspanholRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EspanholRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EspanholRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EspanholRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EspanholRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EspanholRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEspanholRecordData({
  String? recado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recado': recado,
    }.withoutNulls,
  );

  return firestoreData;
}
