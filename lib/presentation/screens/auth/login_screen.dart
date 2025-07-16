import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:owwsc_mock_responsive/bloc/auth/auth_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/auth/auth_event.dart';
import 'package:owwsc_mock_responsive/bloc/auth/auth_state.dart';
import 'package:owwsc_mock_responsive/core/constants/app_constants.dart';
import 'package:owwsc_mock_responsive/core/constants/route_constants.dart';
import 'package:owwsc_mock_responsive/core/responsive/responsive_utils.dart';
import 'package:owwsc_mock_responsive/core/theme/app_theme.dart';
import 'package:owwsc_mock_responsive/core/utils/encrypt_decrypt.dart';
import 'package:owwsc_mock_responsive/core/widgets/app_textfield.dart';
import 'package:owwsc_mock_responsive/core/widgets/responsive_container.dart';
import 'package:owwsc_mock_responsive/core/widgets/responsive_text.dart';
import 'package:owwsc_mock_responsive/data/datasources/remote/dio_client.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
        AuthLoginRequested(
          email: encryptAndEncode(_emailController.text.trim()),
          password: encryptAndEncode(_passwordController.text),
          languageCode: 'en'
        ),
      );
    }
  }

  void _handleSocialLogin(String provider) {
    context.read<AuthBloc>().add(AuthSocialLoginRequested(provider: provider));
  }

  // void _updateControllerText() {
  //   if (selectedPriority != null) {
  //     final selectedItem = priorities.firstWhere(
  //       (item) => item.value == selectedPriority,
  //       orElse: () => DropdownItem<int>(value: selectedPriority as int, label: ''),
  //     );
  //     _priorityController.text = selectedItem.label;
  //   }
  // }

  // void _showModal(dynamic priorities) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return _DropdownDialog(
  //         items: priorities,
  //         title: 'Select Priority',
  //         onChanged: (int? value) {
  //           setState(() {
  //             selectedPriority = value;
  //           });
  //           _updateControllerText();
  //           Navigator.of(context).pop();
  //         },
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Image.asset('assets/images/bottom-bgrd.png'),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthAuthenticated) {
            context.goNamed(RouteConstants.homeName);
          } else if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: SafeArea(
          child: ResponsiveContainer(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo
                    Image.asset(
                      'assets/images/nama_logo.png',
                      height: ResponsiveUtils.getResponsiveFontSize(
                        context,
                        64,
                      ),
                    ),

                    SizedBox(
                      height: ResponsiveUtils.getResponsiveSpacing(
                        context,
                        AppConstants.spacingL,
                      ),
                    ),

                    // ResponsiveText(
                    //   'Welcome Back',
                    //   baseFontSize: AppConstants.fontSizeHeading,
                    //   fontWeight: FontWeight.bold,
                    // ),
                    // SizedBox(
                    //   height: ResponsiveUtils.getResponsiveSpacing(
                    //     context,
                    //     AppConstants.spacingM,
                    //   ),
                    // ),
                    // ResponsiveText(
                    //   'Sign in to continue your journey',
                    //   baseFontSize: AppConstants.fontSizeL,
                    //   color: Colors.grey[600],
                    //   textAlign: TextAlign.center,
                    // ),
                    SizedBox(
                      height: ResponsiveUtils.getResponsiveSpacing(
                        context,
                        AppConstants.spacingXL,
                      ),
                    ),

                    // Login form
                    Container(
                      constraints: BoxConstraints(
                        maxWidth:
                            ResponsiveUtils.isDesktop(context)
                                ? 400
                                : double.infinity,
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'GSM/E-Mail ID',
                              prefixIcon: Container(
                                padding: EdgeInsets.all(
                                  ResponsiveUtils.getResponsiveFontSize(
                                    context,
                                    12,
                                  ),
                                ),
                                height: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  20,
                                ),
                                child: Image.asset('assets/images/person.png'),
                              ),
                              border: const OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              if (!value.contains('@')) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: ResponsiveUtils.getResponsiveSpacing(
                              context,
                              AppConstants.spacingL,
                            ),
                          ),

                          // TextFormField(
                          //   controller: _passwordController,
                          //   obscureText: _obscurePassword,
                          //   decoration: InputDecoration(
                          //     labelText: 'Password',
                          //     prefixIcon: Container(
                          //       padding: EdgeInsets.all(
                          //         ResponsiveUtils.getResponsiveFontSize(
                          //           context,
                          //           12,
                          //         ),
                          //       ),
                          //       height: ResponsiveUtils.getResponsiveFontSize(
                          //         context,
                          //         20,
                          //       ),
                          //       child: Image.asset('assets/images/lock.png'),
                          //     ),
                          //     border: const OutlineInputBorder(),
                          //     suffixIcon: IconButton(
                          //       icon: Icon(
                          //         _obscurePassword
                          //             ? Icons.visibility_off_outlined
                          //             : Icons.visibility_outlined,
                          //       ),
                          //       onPressed: () {
                          //         setState(() {
                          //           _obscurePassword = !_obscurePassword;
                          //         });
                          //       },
                          //     ),
                          //   ),
                          //   validator: (value) {
                          //     if (value == null || value.isEmpty) {
                          //       return 'Please enter your password';
                          //     }
                          //     if (value.length < 6) {
                          //       return 'Password must be at least 6 characters';
                          //     }
                          //     return null;
                          //   },
                          // ),
                          AppTextFormField.password(
                            controller: _passwordController,
                            obscureText: _obscurePassword,
                            prefixIcon: Container(
                              padding: EdgeInsets.all(
                                ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  12,
                                ),
                              ),
                              height: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                20,
                              ),
                              child: Image.asset('assets/images/lock.png'),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (value.length < 6) {
                                return 'Password must be at least 6 characters';
                              }
                              return null;
                            },
                          ),

                          SizedBox(
                            height: ResponsiveUtils.getResponsiveSpacing(
                              context,
                              AppConstants.spacingM,
                            ),
                          ),

                          // AppTextFormField.dropdown(
                          //   controller: _priorityController,
                          //   labelText: 'Select Type of Violation',
                          //   onTap: () {
                          //     _showModal(priorities);
                          //   },
                          // ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Remember me
                              Row(
                                children: [
                                  Checkbox(value: true, onChanged: (value) {}),
                                  ResponsiveText(
                                    'Remember Me',
                                    baseFontSize: AppConstants.fontSizeM,
                                    color:
                                        context.customColors.primaryTextColor,
                                  ),
                                ],
                              ),

                              // Forgot password
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  overlayColor: Colors.transparent,
                                ),
                                child: ResponsiveText(
                                  'Forgot Password?',
                                  baseFontSize: AppConstants.fontSizeM,
                                  color: context.customColors.primaryTextColor,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: ResponsiveUtils.getResponsiveSpacing(
                              context,
                              AppConstants.spacingL,
                            ),
                          ),

                          // Login button
                          SizedBox(
                            width: double.infinity,
                            child: BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                final isLoading = state is AuthLoading;
                                return ElevatedButton(
                                  onPressed: isLoading ? null : _handleLogin,
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(
                                      ResponsiveUtils.getResponsiveSpacing(
                                        context,
                                        AppConstants.spacingM,
                                      ),
                                    ),
                                  ),
                                  child:
                                      isLoading
                                          ? const SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2,
                                            ),
                                          )
                                          : ResponsiveText(
                                            'LOGIN',
                                            baseFontSize:
                                                AppConstants.fontSizeL,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                );
                              },
                            ),
                          ),

                          SizedBox(
                            height: ResponsiveUtils.getResponsiveSpacing(
                              context,
                              AppConstants.spacingL,
                            ),
                          ),

                          SizedBox(
                            width: double.infinity,
                            child: BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                final isLoading = state is AuthLoading;
                                return OutlinedButton(
                                  onPressed: isLoading ? null : _handleLogin,
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(
                                      ResponsiveUtils.getResponsiveSpacing(
                                        context,
                                        AppConstants.spacingM,
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        AppConstants.radiusXXL,
                                      ),
                                    ),
                                  ),
                                  child: ResponsiveText(
                                    'CONTINUE AS GUEST',
                                    baseFontSize: AppConstants.fontSizeL,
                                    fontWeight: FontWeight.w600,
                                  ),
                                );
                              },
                            ),
                          ),

                          SizedBox(
                            height: ResponsiveUtils.getResponsiveSpacing(
                              context,
                              AppConstants.spacingL,
                            ),
                          ),

                          // Register link
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ResponsiveText(
                                'Don\'t have an account? ',
                                baseFontSize: AppConstants.fontSizeM,
                                color: context.customColors.primaryTextColor,
                              ),
                              TextButton(
                                onPressed:
                                    () => context.goNamed(
                                      RouteConstants.registerName,
                                    ),
                                style: TextButton.styleFrom(
                                  overlayColor: Colors.transparent,
                                ),
                                child: ResponsiveText(
                                  'Sign Up',
                                  baseFontSize: AppConstants.fontSizeL,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
