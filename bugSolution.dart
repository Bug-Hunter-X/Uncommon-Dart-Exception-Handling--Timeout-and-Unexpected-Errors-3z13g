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
    //Perform specific handling for TimeoutException, such as retrying the operation
  } on FormatException catch (e) {
    // Handle format exceptions, such as JSON parsing errors.
    print('Format error: $e');
  } on Exception catch (e) {
    print('An error occurred: $e');
    // Log the error for debugging purposes
  } catch (e, s) {
    print('An unexpected error occurred: $e');
    print('Stacktrace: $s');
    // Log the error and stacktrace for debugging purposes
  } finally {
    print('Operation completed.');
  }
}

void main() async {
  await fetchData();
}
```