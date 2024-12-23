import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:events_test/data/models/remote/simple_event_model.dart';

class FirebaseRemoteDatasourceImpl {
  FirebaseRemoteDatasourceImpl({required FirebaseFirestore firestore}) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  /// Fetch all events
  Future<List<SimpleEventModel>> getAllEvents() async {
    try {
      final snapshot = await _firestore.collection('events').get();
      return snapshot.docs.map((doc) {
        return SimpleEventModel.fromJson(doc.data());
      }).toList();
    } catch (e) {
      log('Error fetching all events: $e');
      rethrow;
    }
  }

  /// Fetch events by a specific date
  Future<List<SimpleEventModel>> getEventsByDate(String startOfDay, String endOfDay) async {
    try {
      final snapshot = await _firestore
          .collection('events')
          .where('date', isGreaterThanOrEqualTo: startOfDay)
          .where('date', isLessThan: endOfDay)
          .get();
      return snapshot.docs.map((doc) {
        return SimpleEventModel.fromJson(doc.data());
      }).toList();
    } catch (e) {
      log('Error fetching events by date: $e');
      rethrow;
    }
  }
}
