import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:teste_blu/pages.dart';

void main() {
  setUp(() {
    // ignore: avoid_print
    print("iniciando testes da SelectedPage");
  });

  tearDown(() {
    // ignore: avoid_print
    print("encerrando testes da SelectedPage");
  });

  testWidgets(
    "Achei o Icone de Favorito",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SelectedPage(),
        ),
      );

      final Finder iconeFav = find.byKey(const Key("iconeFav"));

      expect(iconeFav, findsOneWidget);

      await tester.tapAt(const Offset(760.0, 37.5));
    },
  );

  testWidgets(
    "Achei o Botão do Mapa",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SelectedPage(),
        ),
      );

      final Finder mapa = find.byKey(const Key("mapa"));

      expect(mapa, findsOneWidget);

      await tester.tap(mapa);
    },
  );

  testWidgets("Achei a Galeria", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: SelectedPage(),
      ),
    );

    final Finder galeria = find.byKey(const Key("galeria"));

    expect(galeria, findsOneWidget);

    await tester.scrollUntilVisible(galeria, 50);
  });

  testWidgets(
    "Achei o Botão de Check",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SelectedPage(),
        ),
      );

      final Finder mapa = find.byKey(const Key("check"));

      expect(mapa, findsOneWidget);

      await tester.tap(mapa);
    },
  );
}
