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
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('Error decoding JSON: $e');
    // Optionally retry, show a user message, or handle the error appropriately
  } on SocketException catch (e) {
    // Handle network errors
    print('Network error: $e');
    // Optionally retry, show a user message, or handle the error appropriately
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
    // Optionally retry, show a user message, or handle the error appropriately
  }
}
```