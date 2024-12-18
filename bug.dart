```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the JSON response
      final jsonData = jsonDecode(response.body);
      // Access and use the data from jsonData
      print(jsonData['someKey']);
    } else {
      // Handle error status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions such as network errors
    print('Error fetching data: $e');
    // Rethrow the exception to be handled further up the call stack if needed
    rethrow;
  }
}
```