import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BiologiaRecord extends FirestoreRecord {
  BiologiaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "recado" field.
  List<String>? _recado;
  List<String> get recado => _recado ?? const [];
  bool hasRecado() => _recado != null;

  void _initializeFields() {
    _recado = getDataList(snapshotData['recado']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('biologia');

  static Stream<BiologiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BiologiaRecord.fromSnapshot(s));

  static Future<BiologiaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BiologiaRecord.fromSnapshot(s));

  static BiologiaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BiologiaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BiologiaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BiologiaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BiologiaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BiologiaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBiologiaRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}
