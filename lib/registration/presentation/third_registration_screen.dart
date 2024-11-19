import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/secondary_button.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';

class ThirdRegistrScreen extends StatefulWidget {
  const ThirdRegistrScreen({super.key});

  @override
  State<ThirdRegistrScreen> createState() => _ThirdRegistrScreenState();
}

class _ThirdRegistrScreenState extends State<ThirdRegistrScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (kDebugMode) {
            print('@#@#@#@ #@#@#@#@# @# @#@ #@# @# @# @# @ # #@ #@ @# pop invoked');
          }
          MainNavigation.pop(context);
          //return;
        },
        child:Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color.fromARGB(255, 227, 231, 233),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 119, 119, 119),
                size: 30,
              ),
              color: Colors.grey,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 25.0, bottom: 18, top: 5),
                child: GestureDetector(
                  child: Align(
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 161, 29, 51),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: SvgPicture.asset(
                          "assets/Headset.svg",
                        ),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              )
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 227, 231, 233),
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.05),
                      child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 161, 29, 51),
                        radius: 55,
                        child: Image.asset(
                          "assets/torri.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      "Registrazione terminata!",
                      style: TCTypography.of(context).text_22_bold,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.025),
                      child: Text(
                        "Hai ricevuto un link di conferma alla tua e-mail.",
                        style: TCTypography.of(context).text_14_bold.copyWith(
                          color: const Color.fromARGB(255, 114, 114, 114),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: 20.0,
                          left: 20,
                          bottom: MediaQuery.of(context).size.height * 0.1),
                      child: Text(
                        "Se non lo hai ricevuto controlla anche la cartella spam, oppure te ne invieremo uno nuovo. ",
                        textAlign: TextAlign.center,
                        style: TCTypography.of(context).text_14_bold.copyWith(
                          color: const Color.fromARGB(255, 114, 114, 114),
                        ),
                      ),
                    ),
                    SecondaryButton(
                      text: "INVIA NUOVO LINK",
                      ontap: () {},
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.01),
                      child: Text(
                        "oppure",
                        style: TCTypography.of(context).text_14_bold.copyWith(
                          color: const Color.fromARGB(255, 114, 114, 114),
                        ),
                      ),
                    ),
                    PrimaryButton(
                        text: "ACCEDI",
                        ontap: () {
                          MainNavigation.push(
                              context, const MainNavigation.login());
                        }),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.18,
                          bottom: MediaQuery.of(context).size.height * 0.04),
                      child: const Divider(
                        color: Color.fromARGB(255, 191, 190, 190),
                        height: 15,
                        thickness: 1,
                        indent: 25,
                        endIndent: 25,
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        child: Text(
                          "Vai alla home",
                          style: TCTypography.of(context).text_14_bold.copyWith(
                            color: const Color.fromARGB(255, 161, 29, 51),
                          ),
                        ),
                        onTap: () {
                          MainNavigation.replace(
                            context,
                            [
                              const MainNavigation.home(),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )

    );


  }
}
