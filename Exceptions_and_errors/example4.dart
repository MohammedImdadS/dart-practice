void main(List<String> args) async {
  final db = Database();
  try {
    await db.open();
    await db.getData();
    // if you call close() this function here 
    // in some condition if above getData function executes then exception occurs 
    // it will stop execution at geData() then db will not close any more 
    // so use finally as below to close db
    // await db.close(); 
  } on DatabaseNotOpenException {
    print('We forgot to open the database');
  } finally {
    // If any exceptions occurs then also close will executes
    await db.close();
  }
}

class Database {
  bool _isDbOpen = false;

  Future<void> open() {
    return Future.delayed(Duration(seconds: 1), () {
      _isDbOpen = true;
      print('Database opened');
    });
  }

  Future<String> getData() {
    if (!_isDbOpen) {
      // if it is true it throws exception and stop execution.
      throw DatabaseNotOpenException();
    }
    return Future.delayed(
      Duration(seconds: 1),
      () => 'Data',
    );
  }

  Future<void> close() {
    return Future.delayed(Duration(seconds: 1), () {
      _isDbOpen = false;
      print('Database is close');
    });
  }
}

class DatabaseNotOpenException implements Exception {
  @override
  String toString() => 'DatabaseNotOpenException';
}
