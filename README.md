# Unhandled Exceptions in Asynchronous Network Requests

This repository demonstrates a common error in Dart: neglecting to properly handle exceptions that can occur during asynchronous network operations.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a robust solution.

The issue arises when the network request fails for reasons such as network connectivity problems or server errors. The original code lacks comprehensive error handling, leading to potential app crashes.

The solution incorporates a `try-catch` block to gracefully handle these exceptions, improving the app's resilience and user experience.  It also includes specific error messages based on the nature of the error.