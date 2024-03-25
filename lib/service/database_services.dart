import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kenali_sister/model/soal_model_data.dart';

const String soalKomputerCollection = "soal_komputer";
const String soalAgnostikCollection = "soal_agnostik";

class DatabaseService {
  final _firestore = FirebaseFirestore.instance;

  late final CollectionReference soalKomputer;
  late final CollectionReference soalAgnostik;

  DatabaseService() {
    soalKomputer = _firestore
        .collection(soalKomputerCollection)
        .withConverter<ModelSoal>(
            fromFirestore: (snapshots, _) =>
                ModelSoal.fromJson(snapshots.data()!),
            toFirestore: (modelSoal, _) => modelSoal.toJson());

    soalAgnostik = _firestore
        .collection(soalAgnostikCollection)
        .withConverter<ModelSoal>(
            fromFirestore: (snapshots, _) =>
                ModelSoal.fromJson(snapshots.data()!),
            toFirestore: (modelSoal, _) => modelSoal.toJson());
  }

  Stream<QuerySnapshot> getKomputerModelData() {
    return soalKomputer.snapshots();
  }

  Stream<QuerySnapshot> getAgnostikModelData() {
    return soalAgnostik.snapshots();
  }

  void addKomputerModelData(ModelSoal modelSoal) async {
    soalKomputer.add(modelSoal);
  }

  void addAgnostikModelData(ModelSoal modelSoal) async {
    soalAgnostik.add(modelSoal);
  }
}
