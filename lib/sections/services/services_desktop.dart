part of 'services.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  ServiceDesktopState createState() => ServiceDesktopState();
}

class ServiceDesktopState extends State<ServiceDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final langProvider = Provider.of<LanguageProvider>(context);
    final s = AppStrings.of(langProvider.locale.languageCode);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 8)
          .copyWith(bottom: height * 0.05),
      child: Column(
        children: [
          CustomSectionHeading(text: s.whatICanDo),
          Space.y(1.w)!,
          CustomSectionSubHeading(text: s.servicesSubHeading),
          Space.y(2.w)!,
          const ToolsGridSection()
        ],
      ),
    );
  }
}
