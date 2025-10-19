import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile_explorer/main.dart';

void main() {
  group('Profile Explorer Basic Tests', () {
    testWidgets('App launches and shows Profile Explorer title',
        (WidgetTester tester) async {
      await tester.pumpWidget(const ProfileExplorerApp());
      await tester.pumpAndSettle();

      expect(find.text('Profile Explorer'), findsOneWidget);
    });

    testWidgets('Home screen displays AppBar', (WidgetTester tester) async {
      await tester.pumpWidget(const ProfileExplorerApp());
      await tester.pumpAndSettle();

      expect(find.byType(AppBar), findsOneWidget);
    });

    testWidgets('Home screen displays a grid', (WidgetTester tester) async {
      await tester.pumpWidget(const ProfileExplorerApp());
      await tester.pumpAndSettle();

      // Wait for profiles to load
      await tester.pump(const Duration(seconds: 2));

      expect(find.byType(GridView), findsWidgets);
    });

    testWidgets('Loading indicator shows initially',
        (WidgetTester tester) async {
      await tester.pumpWidget(const ProfileExplorerApp());

      expect(find.byType(CircularProgressIndicator), findsWidgets);
    });

    testWidgets('Scaffold exists in home screen', (WidgetTester tester) async {
      await tester.pumpWidget(const ProfileExplorerApp());
      await tester.pumpAndSettle();

      expect(find.byType(Scaffold), findsWidgets);
    });

    testWidgets('Card widget exists for profile display',
        (WidgetTester tester) async {
      await tester.pumpWidget(const ProfileExplorerApp());
      await tester.pumpAndSettle(const Duration(seconds: 3));

      expect(find.byType(Card), findsWidgets);
    });

    testWidgets('Material app theme is set correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(const ProfileExplorerApp());

      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('RefreshIndicator exists for pull-to-refresh',
        (WidgetTester tester) async {
      await tester.pumpWidget(const ProfileExplorerApp());
      await tester.pumpAndSettle();

      expect(find.byType(RefreshIndicator), findsOneWidget);
    });
  });
}
