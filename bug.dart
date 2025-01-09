```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final data = jsonDecode(response.body) as List<dynamic>;
      // Process the data
      for (final item in data) {
        print(item['name']); // Example: Accessing a field named 'name'
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions (e.g., network errors, invalid JSON)
    print('Error: $e');
    // Consider using a more robust error handling mechanism (e.g., showing a user-friendly message)
  }
}
```