import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print(height);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 864,
              width: 1507,
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'I\'m a Full Stack',
                            style: GoogleFonts.montserrat(
                              fontSize: 60,
                            ),
                          ),
                          Text(
                            'Developer < / >',
                            style: GoogleFonts.montserrat(
                              fontSize: 60,
                            ),
                          ),
                          const SizedBox(
                            height: 37,
                          ),
                          const Text(
                            'I have 5 years on software development in building beatiful apps in the web, android and ios',
                            style: TextStyle(
                              fontSize: 24,
                            )
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          OutlinedButton(
                            onPressed: () {
                                      
                            }, 
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                              side: MaterialStateProperty.all(
                                const BorderSide(
                                  width: 1,
                                  color: Colors.transparent,
                                ),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 17,
                                horizontal: 15,
                              ),
                              child: Text(
                                'Contact Me',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                )
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    const FlutterLogo(
                      size: 300,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: height,
              width: width,
              color: Colors.blue,
            ),
          ]
        ),
      ),
    );
  }
}
