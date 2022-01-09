import 'package:flutter/material.dart';
import 'package:teste_blu/app/custom/bottom_bar.dart';
import 'package:teste_blu/pages.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {
    // ignore: avoid_print
    print("iniciando testes da HomePage");
  });

  tearDown(() {
    // ignore: avoid_print
    print("encerrando testes da HomePage");
  });

  group("Widgets na parte superior da Home Page |", () {
    testWidgets(
      "Achei a Barra de Busca + click",
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: HomePage(),
          ),
        );

        final Finder barraBusca = find.byKey(const ValueKey("barraBusca"));
        final Finder iconeBusca = find.byKey(const ValueKey("iconeBusca"));

        expect(barraBusca, findsOneWidget);
        expect(iconeBusca, findsOneWidget);

        await tester.tap(barraBusca);
      },
    );
    testWidgets(
      "Achei o Botão de Configurações + click",
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: HomePage(),
          ),
        );

        final Finder botaoConfig = find.byKey(const ValueKey("botaoConfig"));

        expect(botaoConfig, findsOneWidget);

        await tester.tap(botaoConfig);
      },
    );
  });
  group("Achei a Lista |", () {
    testWidgets("Achei ela na Home", (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: HomePage(),
        ),
      );

      final Finder lista = find.byKey(const ValueKey("lista"));

      expect(lista, findsOneWidget);
    });

    testWidgets("Achei a ListView", (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Material(
            child: Lista(),
          ),
        ),
      );

      final Finder listView = find.byKey(const Key('listView'));

      expect(listView, findsOneWidget);

      await tester.scrollUntilVisible(listView, 200);
    });

    testWidgets("Achei o GestureDetector", (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          routes: {
            "/selected": (_) => const SelectedPage(),
          },
          home: const Material(
            child: Lista(),
          ),
        ),
      );

      final Finder click = find.byKey(const Key('gestureDetector'));

      expect(click, findsWidgets);

      await tester.tapAt(const Offset(10, 10));
    });

    testWidgets("Achei o Botão do Mapa", (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: HomePage(),
        ),
      );

      final Finder mapa = find.byKey(const ValueKey("botãoMapa"));

      expect(mapa, findsWidgets);

      await tester.tapAt(const Offset(64, 48));
    });

    testWidgets("Achei o Botão de Favoritos", (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: HomePage(),
        ),
      );

      final Finder fav = find.byKey(const Key('botãoFav'));

      expect(fav, findsWidgets);

      await tester.tapAt(const Offset(25, 25));
    });
  });

  group("Achei a Barra Transparente |", () {
    testWidgets("Achei ela na Home", (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: HomePage()),
      );

      final Finder barraTransparente =
          find.byKey(const ValueKey("barraTransparente"));

      expect(barraTransparente, findsOneWidget);
    });

    testWidgets("Achei a Linha com os Icones", (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Material(
            child: bottomBar(),
          ),
        ),
      );

      final Finder linhaIcone = find.byKey(const Key('linhaIcone'));

      expect(linhaIcone, findsOneWidget);
    });
    group("Achei os Icones |", () {
      testWidgets("Achei o Icone Home", (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Material(
              child: bottomBar(),
            ),
          ),
        );

        final Finder iconeHome = find.byKey(const Key('iconeHome'));

        expect(iconeHome, findsOneWidget);

        await tester.tap(iconeHome);
      });
      testWidgets("Achei o Icone Bookmark", (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Material(
              child: bottomBar(),
            ),
          ),
        );

        final Finder iconeBookmark = find.byKey(const Key('iconeBookmark'));

        expect(iconeBookmark, findsOneWidget);

        await tester.tap(iconeBookmark);
      });
      testWidgets("Achei o Icone Msg", (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Material(
              child: bottomBar(),
            ),
          ),
        );

        final Finder iconeMsg = find.byKey(const Key('iconeMsg'));

        expect(iconeMsg, findsOneWidget);

        await tester.tap(iconeMsg);
      });
      testWidgets("Achei o Icone More", (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Material(
              child: bottomBar(),
            ),
          ),
        );

        final Finder iconeMore = find.byKey(const Key('iconeMore'));

        expect(iconeMore, findsOneWidget);

        await tester.tap(iconeMore);
      });
    });
  });
}
