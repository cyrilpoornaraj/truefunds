import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreateWalletRecord extends FirestoreRecord {
  CreateWalletRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "wallet_title" field.
  String? _walletTitle;
  String get walletTitle => _walletTitle ?? '';
  bool hasWalletTitle() => _walletTitle != null;

  // "static_amount" field.
  int? _staticAmount;
  int get staticAmount => _staticAmount ?? 0;
  bool hasStaticAmount() => _staticAmount != null;

  // "upi_d" field.
  String? _upiD;
  String get upiD => _upiD ?? '';
  bool hasUpiD() => _upiD != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _walletTitle = snapshotData['wallet_title'] as String?;
    _staticAmount = castToType<int>(snapshotData['static_amount']);
    _upiD = snapshotData['upi_d'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('create_wallet')
          : FirebaseFirestore.instance.collectionGroup('create_wallet');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('create_wallet').doc(id);

  static Stream<CreateWalletRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CreateWalletRecord.fromSnapshot(s));

  static Future<CreateWalletRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CreateWalletRecord.fromSnapshot(s));

  static CreateWalletRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CreateWalletRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CreateWalletRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CreateWalletRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CreateWalletRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CreateWalletRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCreateWalletRecordData({
  String? walletTitle,
  int? staticAmount,
  String? upiD,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'wallet_title': walletTitle,
      'static_amount': staticAmount,
      'upi_d': upiD,
    }.withoutNulls,
  );

  return firestoreData;
}

class CreateWalletRecordDocumentEquality
    implements Equality<CreateWalletRecord> {
  const CreateWalletRecordDocumentEquality();

  @override
  bool equals(CreateWalletRecord? e1, CreateWalletRecord? e2) {
    return e1?.walletTitle == e2?.walletTitle &&
        e1?.staticAmount == e2?.staticAmount &&
        e1?.upiD == e2?.upiD;
  }

  @override
  int hash(CreateWalletRecord? e) =>
      const ListEquality().hash([e?.walletTitle, e?.staticAmount, e?.upiD]);

  @override
  bool isValidKey(Object? o) => o is CreateWalletRecord;
}
