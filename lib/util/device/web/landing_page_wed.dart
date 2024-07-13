import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mubeeyportfolio/util/constants/app_color.dart';
import 'package:mubeeyportfolio/util/constants/images.dart';
import 'package:mubeeyportfolio/util/tabs/tabs_web/tabsweb.dart';
import 'package:mubeeyportfolio/util/widgets/app_text.dart';
import 'package:mubeeyportfolio/util/widgets/card_widget.dart';
import 'package:mubeeyportfolio/util/widgets/custom_form_field.dart';
import 'package:mubeeyportfolio/util/widgets/detail.dart';
import 'package:mubeeyportfolio/util/widgets/skill_widgets.dart';

class LandingPageWed extends StatelessWidget {
  const LandingPageWed({super.key});

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            const Spacer(flex: 3),
            TabsWeb(title: 'Home', tag: 'Home'),
            const Spacer(),
            TabsWeb(title: 'Works', tag: 'Works'),
            const Spacer(),
            TabsWeb(title: 'Blog', tag: 'Blog'),
            const Spacer(),
            TabsWeb(title: 'About', tag: 'About'),
            const Spacer(),
            TabsWeb(title: 'Contacts', tag: 'Contacts'),
            const Spacer(),
          ],
        ),
      ),
      body: ListView(children: [
        //first section
        Container(
          height: heightDevice - 56.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: AppColor.appPrimaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: sansBold(
                            text: "Hello i'm ",
                            textSize: 15.0,
                            bold: FontWeight.bold)),
                  ),
                  const SizedBox(height: 15.0),
                  sansBold(
                      text: 'Mubarak Adam',
                      textSize: 40.0,
                      bold: FontWeight.bold),
                  sansBold(text: "Software engineer", textSize: 25),
                  const SizedBox(height: 15.0),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Detail(
                          info: 'Talk2mubeey@gmail.com',
                          infoIcon: Icon(Icons.email)),
                      SizedBox(height: 10.0),
                      Detail(info: '09046248249', infoIcon: Icon(Icons.call)),
                      SizedBox(height: 10.0),
                      Detail(
                          info: 'Abuja Nigeria',
                          infoIcon: Icon(Icons.location_city))
                    ],
                  ),
                ],
              ),
              const CircleAvatar(
                radius: 147,
                backgroundColor: AppColor.appPrimaryColor,
                child: CircleAvatar(
                  radius: 143,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 140.0,
                    backgroundImage: AssetImage(AppImages.profileImage),
                  ),
                ),
              ),
            ],
          ),
        ),
        //second section
        SizedBox(
          height: heightDevice / 1.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.webImage, height: heightDevice / 1.7),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  sansBold(
                      text: 'About me', textSize: 40.0, bold: FontWeight.bold),
                  const SizedBox(height: 15),
                  sansBold(
                      text:
                          "Hello, my name is Mubarak Adam. I am a passionate software engineer with",
                      textSize: 15),
                  sansBold(
                      text:
                          "expertise in Java, SQL, Dart/Flutter, HTML, CSS, and JavaScript. My journey in ",
                      textSize: 15),
                  sansBold(
                      text:
                          "software development began with a curiosity for how things work and a drive to",
                      textSize: 15),
                  sansBold(text: "create innovative solutions.", textSize: 15),
                  const SizedBox(height: 20.0),
                  sansBold(
                      text:
                          "I specialize in web and mobile development and have worked on diverse projects, ",
                      textSize: 15),
                  sansBold(
                      text:
                          "showcasing my versatility and commitment to quality. My experience includes ",
                      textSize: 15),
                  sansBold(
                      text:
                          "working in collaborative environments, valuing clear communication, agile ",
                      textSize: 15),
                  sansBold(
                      text: "methodologies, and continuous learning.",
                      textSize: 15),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      SkillsWidgets(text: 'Flutter'),
                      SizedBox(width: 7),
                      SkillsWidgets(text: 'Web Application'),
                      SizedBox(width: 7),
                      SkillsWidgets(text: 'Android'),
                      SizedBox(width: 7),
                      SkillsWidgets(text: 'Window'),
                      SizedBox(width: 7),
                      SkillsWidgets(text: 'IOs'),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        //Third section
        SizedBox(
          height: heightDevice / 1.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              sansBold(text: "What i do?", textSize: 40, bold: FontWeight.bold),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardWidget(
                    imagePath: AppImages.webImage,
                    cardText: 'Web developer',
                  ),
                  CardWidget(
                    imagePath: AppImages.appImage,
                    cardText: 'App developer',
                  ),
                  CardWidget(
                    imagePath: AppImages.firebaseIcon,
                    cardText: 'Back-end developer',
                  )
                ],
              ),
            ],
          ),
        ),
        //Fourth section
        Container(
          height: heightDevice,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              sansBold(text: "Contact me", textSize: 40, bold: FontWeight.bold),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CustomFormField(
                        formFieldName: "First name",
                        formHintText: "Enter first your name",
                        width: 350,
                      ),
                      SizedBox(height: 15.0),
                      CustomFormField(
                        width: 350,
                        formFieldName: "Email",
                        formHintText: "Enter your email",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomFormField(
                          formFieldName: "Last name",
                          formHintText: "Enter your last name",
                          width: 350),
                      SizedBox(height: 15.0),
                      CustomFormField(
                          formFieldName: "Phone number",
                          formHintText: "Enter your phone numver",
                          width: 350),
                    ],
                  )
                ],
              ),
              CustomFormField(
                formFieldName: 'Message',
                formHintText: "Please type your message",
                width: widthDevice / 1.5,
                maxlines: 10,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
