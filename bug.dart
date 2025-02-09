```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    //if (someCondition) {
    //  throw Exception('Something went wrong!');
    //} else {
      print('Data fetched successfully!');
    //}  
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
  } on Exception catch (e) {
    print('An error occurred: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  } finally {
    print('Operation completed.');
  }
}

void main() async {
  await fetchData();
}
```