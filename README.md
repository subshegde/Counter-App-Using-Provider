# Flutter Counter App with Provider

A simple Flutter counter app that uses Provider for state management.

This project demonstrates how to implement state management in Flutter using the Provider package. The app has a basic counter that increments and decrements by 1 each time you press the buttons.

## Features

- Increment and Decrement the counter.
- Use of `Provider` for state management to manage the counter's value.

# Usage

    Open the app and tap the "Increment" or "Decrement" buttons to see the counter change.
    The counter's state is managed using the Provider package, ensuring that changes to the counter value are reflected across the app.

# Example

Here is the code snippet for managing the state with Provider:

class Counter with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}

In main.dart, the ChangeNotifierProvider is used to provide the state across the widget tree:

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MyApp(),
    ),
  );
}

Happy Coding 
