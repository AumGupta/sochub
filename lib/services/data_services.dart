import 'package:mongo_dart/mongo_dart.dart';

class DataService {
  static Future<List<List<Map<String, dynamic>>>> fetchData() async {
    try {
      // Connect to the MongoDB database
      var db = await Db.create('mongodb+srv://varunsangai11:varun%40123@cluster0.kbsesuf.mongodb.net/sochub?retryWrites=true&w=majority');
      await db.open();

      // Get a reference to the collection you want to query
      var collection1 = db.collection('society');
      var collection2 = db.collection('events');

      // Query the collection for documents that match your criteria
      // var query = where.eq('field', 'value');
      var cursor1 = await collection1.find().toList();
      var cursor2 = await collection2.find().toList();

      // Convert the cursor results to a List<Map<String, dynamic>> and return it
      var data1 = cursor1.map((document) => document).toList();
      var data2 = cursor2.map((document) => document).toList();

      // Close the database connection
      await db.close();

      return [data1,data2];
    } catch (e) {
      // Handle the ConnectionException error
      if (e is ConnectionException) {
        print('Unable to connect to the MongoDB database');
      } else {
        print('An error occurred: $e');
      }

      return [];
    }
  }
}
