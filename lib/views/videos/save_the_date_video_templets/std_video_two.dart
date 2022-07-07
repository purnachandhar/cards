import 'package:card_poc/constains/controllers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class STDVideoTwo extends StatelessWidget {
  const STDVideoTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network("https://firebasestorage.googleapis.com/v0/b/cards-31f5c.appspot.com/o/asdfgh.gif?alt=media&token=d4ce58da-d690-41a2-9e3f-055945121cfd"),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextAnimatorSequence(
                    children: [
                      TextAnimator(
                        'Wedding Invitation',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.none(),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                        initialDelay: Duration(seconds: 2),
                        style: GoogleFonts.greatVibes(
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                            letterSpacing: -2,
                            color: Color(0xffeb3b78)),
                      ),
                      TextAnimator(
                        '',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.bounce(),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                      ),
                    ],
                    loop: false,
                    transitionTime: const Duration(seconds: 4),
                  ),
                  TextAnimatorSequence(
                    children: [
                      TextAnimator(
                        'Vennu Family',
                        initialDelay: Duration(seconds: 2),
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.none(),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                        style: GoogleFonts.greatVibes(
                            fontWeight: FontWeight.w400,
                            fontSize: 45,
                            letterSpacing: -2,
                            color: Color(0xffeb3b78)),
                      ),
                      TextAnimator(
                        '',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.bounce(),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                      ),
                    ],
                    loop: false,
                    transitionTime: const Duration(seconds: 4),
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextAnimatorSequence(
                    children: [
                      TextAnimator(
                        '${saveTheDateController.userdata.read('brideName')}',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.none(),
                        initialDelay: Duration(seconds: 8),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                        style: GoogleFonts.greatVibes(
                            fontWeight: FontWeight.w400,
                            fontSize: 35,
                            letterSpacing: -2,
                            color: Color(0xffeb3b78)),
                      ),
                      TextAnimator(
                        '',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.bounce(),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                      ),
                    ],
                    loop: false,
                    transitionTime: const Duration(seconds: 4),
                  ),
                  TextAnimatorSequence(
                    children: [
                      TextAnimator(
                        '&',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.none(),
                        initialDelay: Duration(seconds: 8),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                        style: GoogleFonts.greatVibes(
                            fontWeight: FontWeight.w400,
                            fontSize: 35,
                            letterSpacing: -2,
                            color: Color(0xffeb3b78)),
                      ),
                      TextAnimator(
                        '',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.bounce(),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                      ),
                    ],
                    loop: false,
                    transitionTime: const Duration(seconds: 4),
                  ),
                  TextAnimatorSequence(
                    children: [
                      TextAnimator(
                        '${saveTheDateController.userdata.read('groomName')}',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.none(),
                        initialDelay: Duration(seconds: 8),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                        style: GoogleFonts.greatVibes(
                            fontWeight: FontWeight.w400,
                            fontSize: 35,
                            letterSpacing: -2,
                            color: Color(0xffeb3b78)),
                      ),
                      TextAnimator(
                        '',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.bounce(),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                      ),
                    ],
                    loop: false,
                    transitionTime: const Duration(seconds: 4),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextAnimatorSequence(
                    children: [
                      TextAnimator(
                        'Are getting',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.none(),
                        initialDelay: Duration(seconds: 13),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                        style: GoogleFonts.greatVibes(
                            fontWeight: FontWeight.w400,
                            fontSize: 35,
                            letterSpacing: -2,
                            color: Color(0xffeb3b78)),
                      ),
                      TextAnimator(
                        '',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.bounce(),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                      ),
                    ],
                    loop: false,
                    transitionTime: const Duration(seconds: 4),
                  ),
                  TextAnimatorSequence(
                    children: [
                      TextAnimator(
                        'Married',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.none(),
                        initialDelay: Duration(seconds: 13),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                        style: GoogleFonts.greatVibes(
                            fontWeight: FontWeight.w400,
                            fontSize: 35,
                            letterSpacing: -2,
                            color: Color(0xffeb3b78)),
                      ),
                      TextAnimator(
                        '',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.bounce(),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                      ),
                    ],
                    loop: false,
                    transitionTime: const Duration(seconds: 4),
                  ),
                  TextAnimatorSequence(
                    children: [
                      TextAnimator(
                        '${saveTheDateController.userdata.read('date')}',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.none(),
                        initialDelay: Duration(seconds: 13),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                        style: GoogleFonts.greatVibes(
                            fontWeight: FontWeight.w400,
                            fontSize: 35,
                            letterSpacing: -2,
                            color: Color(0xffeb3b78)),
                      ),
                      TextAnimator(
                        '',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.bounce(),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                      ),
                    ],
                    loop: false,
                    transitionTime: const Duration(seconds: 4),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextAnimatorSequence(
                    children: [
                      TextAnimator(
                        'Wedding',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.none(),
                        initialDelay: Duration(seconds: 18),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                        style: GoogleFonts.greatVibes(
                            fontWeight: FontWeight.w400,
                            fontSize: 35,
                            letterSpacing: -2,
                            color: Color(0xffeb3b78)),
                      ),
                      TextAnimator(
                        '',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.bounce(),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                      ),
                    ],
                    loop: false,
                    transitionTime: const Duration(seconds: 4),
                  ),
                  TextAnimatorSequence(
                    children: [
                      TextAnimator(
                        'Monday May 8, 2023 08:00 PM onwards',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.none(),
                        initialDelay: Duration(seconds: 18),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                        style: GoogleFonts.greatVibes(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: -2,
                            color: Color(0xffeb3b78)),
                      ),
                      TextAnimator(
                        '',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.bounce(),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                      ),
                    ],
                    loop: false,
                    transitionTime: const Duration(seconds: 4),
                  ),
                  TextAnimatorSequence(
                    children: [
                      TextAnimator(
                        '${saveTheDateController.userdata.read('place')}',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.none(),
                        initialDelay: Duration(seconds: 18),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                        style: GoogleFonts.greatVibes(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: -2,
                            color: Color(0xffeb3b78)),
                      ),
                      TextAnimator(
                        '',
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(),
                        atRestEffect: WidgetRestingEffects.bounce(),
                        outgoingEffect:
                        WidgetTransitionEffects.outgoingScaleUp(),
                      ),
                    ],
                    loop: false,
                    transitionTime: const Duration(seconds: 4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
