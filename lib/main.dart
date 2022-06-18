import 'package:custom_theme/themes/app_theme.dart';
import 'package:custom_theme/themes/utils.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      saveThemesOnChange: true,
      loadThemeOnInit: true,
      themes: AppThemeUtils.getThemes(),
      child: ThemeConsumer(
        child: Builder(builder: (themeContext) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeProvider.themeOf(themeContext).data,
            home: const HomePage(),
          );
        }),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = ThemeUtils.themeData(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ThemeProvider.controllerOf(context).nextTheme();
                },
                child: const Text('Next Theme'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      themeData.dimensions.xxs,
                    ),
                  ),
                ),
              ),
              Text(
                'current theme: ${ThemeProvider.themeOf(context).description}',
                style: themeData.typography.paragraph01SemiBold?.copyWith(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
