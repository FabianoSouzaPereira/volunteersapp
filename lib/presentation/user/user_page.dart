import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:volunteersapp/core/router/paths.dart' as paths;
import 'package:volunteersapp/presentation/user/user_cubit.dart';
import 'package:volunteersapp/presentation/user/user_page_state.dart';
import 'package:volunteersapp/presentation/widgets/formtextfields.dart';
import 'package:volunteersapp/presentation/widgets/formtextfield.dart';

class UserPage extends StatelessWidget {
  const UserPage({
    super.key,
    required String title,
    isOption1Selected,
    isOption2Selected,
  });

  @override
  Widget build(BuildContext context) {
    String _backgroundImage = 'assets/images/background_image_black1.jpg';

    return BlocProvider(
      create: (context) => UserCubit(),
      child: BlocBuilder<UserCubit, UserPageState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.black26,
              appBar: AppBar(
                title: const Text(
                  "User",
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    GoRouter.of(context).go(paths.HomePagePath);
                  },
                ),
                backgroundColor: Colors.black,
              ),
              body: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.transparent,
                child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(_backgroundImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(height: 8),
                          FormTextFields(
                            listFormTextFields: [
                              FormTextField(null,
                                  formKey: GlobalKey<FormState>(), enable: true, textFormFieldInputDecorationlabel: 'Name', keyboardType: TextInputType.name, textInputAction: TextInputAction.next),
                              FormTextField(null,
                                  formKey: GlobalKey<FormState>(),
                                  enable: true,
                                  textFormFieldInputDecorationlabel: 'Address',
                                  keyboardType: TextInputType.streetAddress,
                                  textInputAction: TextInputAction.next),
                              FormTextField(null,
                                  formKey: GlobalKey<FormState>(),
                                  enable: true,
                                  textFormFieldInputDecorationlabel: 'Neyborhood',
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next),
                              FormTextField(null,
                                  formKey: GlobalKey<FormState>(), enable: true, textFormFieldInputDecorationlabel: 'city', keyboardType: TextInputType.text, textInputAction: TextInputAction.next),
                              FormTextField(null,
                                  formKey: GlobalKey<FormState>(),
                                  enable: true,
                                  textFormFieldInputDecorationlabel: 'zipcode',
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next),
                              FormTextField(null,
                                  formKey: GlobalKey<FormState>(), enable: true, textFormFieldInputDecorationlabel: 'Country', keyboardType: TextInputType.text, textInputAction: TextInputAction.done),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          );
        },
      ),
    );
  }
}
