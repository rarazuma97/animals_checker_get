import 'package:animals_checker_get/features/auth/presentation/view_model/auth_screen_view_model.dart';
import 'package:animals_checker_get/features/main_screen/presentation/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:animals_checker_get/core/contracts/presentation/screen.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';



class AuthScreen extends Screen<AuthScreenViewModel> {
  AuthScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx((state) =>
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(preferredSize: const Size.fromHeight(80),child: CustomAppBar(showHamburgerIcon: false, iconMenuPressed: () {  }, ),),
            body:  SignInScreen(
              actions: [
                AuthStateChangeAction<SignedIn>(
                      (context, state) async {
                    await viewModel.login(state);
                  },
                ),
                AuthStateChangeAction<UserCreated>(
                      (context, state) async {
                    state.credential.user!.sendEmailVerification();
                  },
                ),
              ],
            ),
          ),
        )
    );
  }
}
