part of 'services.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LanguageProvider>(context);
    final s = AppStrings.of(langProvider.locale.languageCode);
    return Column(
      children: [
        CustomSectionHeading(text: s.whatICanDo),
        Space.y(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSectionSubHeading(text: s.servicesSubHeading),
        ),
        Space.y(5.w)!,
        const ToolsGridSection(),
      ],
    );
  }
}
