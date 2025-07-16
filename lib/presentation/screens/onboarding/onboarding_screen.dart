import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:owwsc_mock_responsive/bloc/onboarding/onboarding_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/onboarding/onboarding_event.dart';
import 'package:owwsc_mock_responsive/bloc/onboarding/onboarding_state.dart';
import 'package:owwsc_mock_responsive/core/constants/app_constants.dart';
import 'package:owwsc_mock_responsive/core/constants/route_constants.dart';
import 'package:owwsc_mock_responsive/core/responsive/responsive_utils.dart';
import 'package:owwsc_mock_responsive/core/theme/app_theme.dart';
import 'package:owwsc_mock_responsive/core/widgets/responsive_text.dart';
import 'package:owwsc_mock_responsive/data/onboarding/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  final PageController _pageController = PageController();
  late AnimationController _progressAnimationController;
  late Animation<double> _progressAnimation;

  final List<OnboardingData> _onboardingData = [
    OnboardingData(
      image: 'assets/images/top-your-bill.png',
      titleEn: 'TOP UP / PAY YOUR BILL',
      titleAr: 'تعبئة رصيد / دفع الفاتورة',
      descriptionEn:
          'You can now easily top up your prepaid meter balance and pay your water bill with ease.',
      descriptionAr:
          'يمكنك الآن بسهولة تعبئة رصيد العداد مسبق الدفع ودفع فاتورة المياه بكل سهولة.',
    ),
    OnboardingData(
      image: 'assets/images/wetland-adv.png',
      titleEn: 'WETLAND BOOKING',
      titleAr: 'حجز موعد زيارة بحيرات الأنصب',
      descriptionEn:
          'Don\'t miss the chance to visit Ansab Lakes and experience the stunning natural beauty. Reserve your spot today.',
      descriptionAr:
          'لا تفوت فرصة زيارة بحيرات الأنصب والاستمتاع بجمال الطبيعة الخلابة. احجز موعدك الآن!',
    ),
    OnboardingData(
      image: 'assets/images/appoitment-booking.png',
      titleEn: 'APPOINTMENT BOOKING',
      titleAr: 'حجز موعد',
      descriptionEn:
          'Book your appointment now to visit our Customer Service Branch and enjoy exceptional services.',
      descriptionAr:
          'احجز موعدك الآن لزيارة صالة خدمات المشتركين واستمتع بخدماتنا المميزة.',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _progressAnimationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _progressAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _progressAnimationController,
        curve: Curves.easeInOut,
      ),
    );

    context.read<OnboardingBloc>().add(OnboardingStarted());
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    context.read<OnboardingBloc>().add(OnboardingNextPressed());
  }

  void _skipOnboarding() {
    context.read<OnboardingBloc>().add(OnboardingSkipped());
  }

  void _updateProgressAnimation(double progress) {
    _progressAnimationController.animateTo(progress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<OnboardingBloc, OnboardingState>(
        listener: (context, state) {
          if (state is OnboardingInProgress) {
            if (_pageController.hasClients) {
              _pageController.animateToPage(
                state.currentPage,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
            // Update progress animation
            double progress = (state.currentPage + 1) / state.totalPages;
            _updateProgressAnimation(progress);
          } else if (state is OnboardingFinished) {
            context.goNamed(RouteConstants.loginName);
          }
        },
        child: SafeArea(
          child: Padding(
            padding: ResponsiveUtils.getResponsivePadding(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Page view
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      context.read<OnboardingBloc>().add(
                        OnboardingPageChanged(pageIndex: index),
                      );
                    },
                    itemCount: _onboardingData.length,
                    itemBuilder: (context, index) {
                      return _buildOnboardingPage(_onboardingData[index]);
                    },
                  ),
                ),

                BlocBuilder<OnboardingBloc, OnboardingState>(
                  builder: (context, state) {
                    if (state is OnboardingInProgress) {
                      return Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  // Page indicators
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      state.totalPages,
                                      (index) => _buildPageIndicator(
                                        index,
                                        state.currentPage,
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height:
                                        ResponsiveUtils.getResponsiveSpacing(
                                          context,
                                          AppConstants.spacingL,
                                        ),
                                  ),

                                  ResponsiveText(
                                    _onboardingData[state.currentPage].titleEn,
                                    baseFontSize: AppConstants.fontSizeXL,
                                    color:
                                        context.customColors.primaryTextColor,
                                    fontWeight: FontWeight.bold,
                                    textAlign: TextAlign.center,
                                  ),

                                  SizedBox(
                                    height:
                                        ResponsiveUtils.getResponsiveSpacing(
                                          context,
                                          AppConstants.spacingS,
                                        ),
                                  ),

                                  ResponsiveText(
                                    _onboardingData[state.currentPage]
                                        .descriptionEn,
                                    baseFontSize: AppConstants.fontSizeS,
                                    color:
                                        context.customColors.primaryTextColor,
                                    textAlign: TextAlign.center,
                                    maxLines: 3,
                                  ),

                                  SizedBox(
                                    height:
                                        ResponsiveUtils.getResponsiveSpacing(
                                          context,
                                          ResponsiveUtils.isTablet(context)
                                              ? AppConstants.spacingXL
                                              : AppConstants.spacingXM,
                                        ),
                                  ),

                                  ResponsiveText(
                                    _onboardingData[state.currentPage].titleAr,
                                    baseFontSize: AppConstants.fontSizeXL,
                                    color:
                                        context.customColors.primaryTextColor,
                                    fontWeight: FontWeight.bold,
                                    textAlign: TextAlign.center,
                                  ),

                                  SizedBox(
                                    height:
                                        ResponsiveUtils.getResponsiveSpacing(
                                          context,
                                          AppConstants.spacingS,
                                        ),
                                  ),

                                  ResponsiveText(
                                    _onboardingData[state.currentPage]
                                        .descriptionAr,
                                    baseFontSize: AppConstants.fontSizeS,
                                    color:
                                        context.customColors.primaryTextColor,
                                    textAlign: TextAlign.center,
                                    maxLines: 3,
                                  ),

                                  // SizedBox(
                                  //   height: ResponsiveUtils.getResponsiveSpacing(
                                  //     context,
                                  //     ResponsiveUtils.isTablet(context)
                                  //         ? ResponsiveUtils.getResponsiveSpacing(
                                  //           context,
                                  //           100,
                                  //         )
                                  //         : ResponsiveUtils.getResponsiveSpacing(
                                  //           context,
                                  //           60,
                                  //         ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Spacer(),
                                  // Circular progress indicator
                                  Expanded(
                                    child: _buildCircularProgressButton(state),
                                  ),
                                  // Skip button
                                  Expanded(
                                    child: TextButton(
                                      onPressed: _skipOnboarding,
                                      child: ResponsiveText(
                                        'Skip',
                                        baseFontSize: AppConstants.fontSizeXXL,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            context
                                                .customColors
                                                .primaryTextColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Next/Get Started button
                            // SizedBox(
                            //   width: double.infinity,
                            //   child: ElevatedButton(
                            //     onPressed: _nextPage,
                            //     style: ElevatedButton.styleFrom(
                            //       padding: EdgeInsets.all(
                            //         ResponsiveUtils.getResponsiveSpacing(
                            //           context,
                            //           AppConstants.spacingM,
                            //         ),
                            //       ),
                            //       shape: RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(
                            //           AppConstants.radiusM,
                            //         ),
                            //       ),
                            //     ),
                            //     child: ResponsiveText(
                            //       state.isLastPage ? 'Get Started' : 'Next',
                            //       baseFontSize: AppConstants.fontSizeL,
                            //       fontWeight: FontWeight.w600,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOnboardingPage(OnboardingData data) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          data.image,
          height: ResponsiveUtils.getResponsiveFontSize(context, 200),
        ),

        // SizedBox(
        //   height: ResponsiveUtils.getResponsiveSpacing(
        //     context,
        //     AppConstants.spacingXL,
        //   ),
        // ),
      ],
    );
  }

  Widget _buildPageIndicator(int index, int currentPage) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(
        horizontal: ResponsiveUtils.getResponsiveSpacing(
          context,
          AppConstants.spacingXS,
        ),
      ),
      height: 8,
      width: currentPage == index ? 24 : 8,
      decoration: BoxDecoration(
        color:
            currentPage == index
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primary.withOpacity(0.3),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _buildCircularProgressButton(OnboardingInProgress state) {
    double progress = (state.currentPage + 1) / state.totalPages;
    double buttonSize = ResponsiveUtils.getResponsiveFontSize(context, 60);

    return GestureDetector(
      onTap: _nextPage,
      child: SizedBox(
        width: buttonSize,
        height: buttonSize,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background circle
            Container(
              width: buttonSize,
              height: buttonSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
            ),

            // Progress indicator
            AnimatedBuilder(
              animation: _progressAnimation,
              builder: (context, child) {
                return CustomPaint(
                  size: Size(buttonSize, buttonSize),
                  painter: CircularProgressPainter(
                    progress: _progressAnimation.value,
                    strokeWidth: 4.0,
                    progressColor: Theme.of(context).colorScheme.primary,
                    backgroundColor: Colors.white,
                    context: context,
                  ),
                );
              },
            ),

            // Arrow icon
            Icon(
              Icons.arrow_forward,
              color: Theme.of(context).colorScheme.primary,
              size: ResponsiveUtils.getResponsiveSpacing(context, 48),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom painter for circular progress indicator
class CircularProgressPainter extends CustomPainter {
  final double progress;
  final double strokeWidth;
  final Color progressColor;
  final Color backgroundColor;
  final BuildContext context;

  CircularProgressPainter({
    required this.progress,
    required this.strokeWidth,
    required this.progressColor,
    required this.backgroundColor,
    required this.context,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;

    final outerCircle =
        Paint()
          ..color = context.customColors.textFieldBorderColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1
          ..strokeCap = StrokeCap.round;

    canvas.drawCircle(
      center,
      radius * ResponsiveUtils.getResponsiveFontSize(context, 1.3),
      outerCircle,
    );

    // Draw background circle
    final backgroundPaint =
        Paint()
          ..color = backgroundColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth
          ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, backgroundPaint);

    // Draw progress arc
    if (progress > 0) {
      final progressPaint =
          Paint()
            ..color = progressColor
            ..style = PaintingStyle.stroke
            ..strokeWidth = strokeWidth
            ..strokeCap = StrokeCap.round;

      final startAngle = -math.pi / 2; // Start from top
      final sweepAngle = 2 * math.pi * progress;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        false,
        progressPaint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate is CircularProgressPainter &&
        (oldDelegate.progress != progress ||
            oldDelegate.progressColor != progressColor ||
            oldDelegate.backgroundColor != backgroundColor ||
            oldDelegate.strokeWidth != strokeWidth);
  }
}
