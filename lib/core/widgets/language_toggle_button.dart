import 'package:flutter/material.dart';
import 'package:mysite/core/app_theme.dart';
import 'package:mysite/core/providers/language_provider.dart';
import 'package:provider/provider.dart';

/// A compact EN / FR toggle button that can be placed in navbars or drawers.
class LanguageToggleButton extends StatelessWidget {
  /// If [compact] is true a full-width drawer tile is shown (for mobile).
  final bool compact;

  const LanguageToggleButton({Key? key, this.compact = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LanguageProvider>(context);
    final isFr = langProvider.isFrench;
    final theme = Theme.of(context);

    if (compact) {
      // Mobile drawer version — full-width tile
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: MaterialButton(
          hoverColor: theme.primaryColor.withAlpha(70),
          onPressed: langProvider.toggleLanguage,
          child: ListTile(
            leading: const Icon(Icons.language),
            title: Text(
              isFr ? 'English' : 'Français',
              style: TextStyle(color: theme.textColor),
            ),
            trailing: Text(
              isFr ? '🇬🇧' : '🇫🇷',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
      );
    }

    // Desktop navbar version — pill toggle
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: theme.primaryColor.withOpacity(0.5),
          width: 1.5,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: langProvider.toggleLanguage,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                isFr ? '🇬🇧' : '🇫🇷',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(width: 6),
              Text(
                isFr ? 'EN' : 'FR',
                style: TextStyle(
                  color: theme.textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
