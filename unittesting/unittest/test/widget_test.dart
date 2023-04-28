
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unittest/main.dart';

void main() {
  group('Form Validation Tests', () {
    testWidgets('Test that the name field cannot be empty',
            (WidgetTester tester) async {
          await tester.pumpWidget(MyApp());
          final nameTextField = find.widgetWithText(TextFormField, 'Name');
          expect(nameTextField, findsOneWidget);
          await tester.tap(nameTextField);
          await tester.enterText(nameTextField, '');
          await tester.tap(find.byType(ElevatedButton));
          await tester.pump();
          expect(find.text('Please enter your name.'), findsOneWidget);
        });
    testWidgets('Test that the email field cannot be empty',
            (WidgetTester tester) async {
          await tester.pumpWidget(MyApp());
          final emailTextField = find.widgetWithText(TextFormField, 'Email');
          expect(emailTextField, findsOneWidget);
          await tester.tap(emailTextField);
          await tester.enterText(emailTextField, '');
          await tester.tap(find.byType(ElevatedButton));
          await tester.pump();
          expect(find.text('Please enter your email.'), findsOneWidget);
        });
    testWidgets('Test that the email field must contain "@"',
            (WidgetTester tester) async {
          await tester.pumpWidget(MyApp());
          final emailTextField = find.widgetWithText(TextFormField, 'Email');
          expect(emailTextField, findsOneWidget);
          await tester.tap(emailTextField);
          await tester.enterText(emailTextField, 'testemail');
          await tester.tap(find.byType(ElevatedButton));
          await tester.pump();
          expect(find.text('Please enter a valid email address.'), findsOneWidget);
        });
    testWidgets('Test that submitting a valid form displays a snackbar message',
            (WidgetTester tester) async {
          await tester.pumpWidget(MyApp());
          final nameTextField = find.widgetWithText(TextFormField, 'Name');
          expect(nameTextField, findsOneWidget);
          await tester.tap(nameTextField);
          await tester.enterText(nameTextField, 'Jod');
          final emailTextField = find.widgetWithText(TextFormField, 'Email');
          expect(emailTextField, findsOneWidget);
          await tester.tap(emailTextField);
          await tester.enterText(emailTextField, 'OffendMathoyaar@example.com');
          final submitButton = find.widgetWithText(ElevatedButton, 'Submit');
          expect(submitButton, findsOneWidget);
          await tester.tap(submitButton);
          await tester.pump();
          expect(find.text('Processing Data'), findsOneWidget);
        });
  });
}

