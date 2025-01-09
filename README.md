# Unhandled Exceptions in Asynchronous Dart Network Request

This repository demonstrates a common error in asynchronous Dart code: insufficient error handling in network requests and JSON processing.  The `bug.dart` file contains the flawed code, while `bugSolution.dart` provides a more robust solution.

**Problem:** The original code lacks comprehensive exception handling, leading to potential crashes or unclear error messages if the network request fails or the JSON response is malformed.

**Solution:** The improved code in `bugSolution.dart` incorporates more detailed exception handling to catch specific error types (like `FormatException` for invalid JSON) and provides more informative error messages to the user.