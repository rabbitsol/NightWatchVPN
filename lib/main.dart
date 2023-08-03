import 'package:flutter/material.dart';
import 'package:nightwatchvpn/core/model/appcolors.dart';
import 'package:nightwatchvpn/core/model/appicons.dart';
import 'package:nightwatchvpn/core/model/appstring.dart';
import 'package:nightwatchvpn/core/rowforpanel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool buttoncolor = false;
  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = const BorderRadius.all(
      Radius.circular(24.0),
    );
    return Material(
        child: SlidingUpPanel(
      backdropTapClosesPanel: true,
      maxHeight: MediaQuery.of(context).size.height * 0.7,
      backdropEnabled: true,
      panel: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: BoxDecoration(
            borderRadius: radius,
            color: AppColors.bgcolorsfromtop,
          ),
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              RowforPanel(
                country: AppString.us,
                flag: AppIcons.us,
              ),
              RowforPanel(
                country: AppString.myanmar,
                flag: AppIcons.myanmar,
              ),
              RowforPanel(
                country: AppString.uk,
                flag: AppIcons.uk,
              ),
              RowforPanel(
                country: AppString.japan,
                flag: AppIcons.japan,
              ),
              RowforPanel(
                country: AppString.brazil,
                flag: AppIcons.brazil,
              ),
              RowforPanel(
                country: AppString.singapore,
                flag: AppIcons.singapore,
              ),
              RowforPanel(
                country: AppString.india,
                flag: AppIcons.india,
              ),
              RowforPanel(
                country: AppString.kuwait,
                flag: AppIcons.kuwait,
              ),
              RowforPanel(
                country: AppString.germany,
                flag: AppIcons.germany,
              ),
            ],
          )),
      collapsed: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(24.0)),
          color: AppColors.bgcolorsfromtop,
        ),
        padding: const EdgeInsets.all(20.0),
        child: RowforPanel(
          country: AppString.us,
          flag: AppIcons.us,
        ),
      ),
      body: Scaffold(
          body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [AppColors.bgcolorsfromtop, AppColors.bgcolorsfrombottom],
              stops: const [0.0, 1.5]),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 15, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppString.appbartxt,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: AppColors.txtcolor,
                            )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 1.5,
                          backgroundColor: AppColors.appbarmenuicon,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(18),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.menu,
                          size: 18,
                          color: AppColors.txtcolor,
                        ))
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttoncolor = !buttoncolor;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 1.5,
                    backgroundColor: AppColors.appbarmenuicon,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(18),
                  ),
                  child: CircleAvatar(
                      backgroundColor: buttoncolor
                          ? AppColors.roundbuttonlight
                          : AppColors.roundbuttonlightoffcolor,
                      radius: 85,
                      child: CircleAvatar(
                        backgroundColor: buttoncolor
                            ? AppColors.roundbuttonlight
                            : AppColors.roundbuttonlightoffcolor,
                        radius: 78,
                        child: CircleAvatar(
                          backgroundColor: AppColors.roundbuttoncolors,
                          radius: 76,
                          child: Text(
                            buttoncolor ? "Connected":AppString.text1 ,
                            style: TextStyle(color: AppColors.txtcolor),
                          ),
                        ),
                      ))),
              const SizedBox(height: 200),
            ]),
      )),
      borderRadius: radius,
    ));
  }
}


