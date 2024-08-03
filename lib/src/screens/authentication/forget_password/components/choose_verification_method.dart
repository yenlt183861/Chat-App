import 'package:chat_app/src/datas/enums/verification_method.dart';
import 'package:chat_app/src/screens/authentication/forget_password/bloc/forget_password_bloc.dart';
import 'package:chat_app/src/screens/authentication/forget_password/bloc/forget_password_state.dart';
import 'package:chat_app/src/screens/authentication/forget_password/components/barrel_components.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseVerificationMethod extends StatelessWidget {
  const ChooseVerificationMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
        buildWhen: (p, c) => p.verificationMethod != c.verificationMethod,
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContactCard(
                name: 'Email',
                description: 'Send code to your email',
                icon: const Icon(Icons.email_outlined),
                selected: state.verificationMethod == VerificationMethod.email,
                onTap: () {
                  context.forgetPasswordBloc.add(
                    SelectContactEvent(method: VerificationMethod.email),
                  );
                },
              ),
              const GapH(25),
              ContactCard(
                name: 'Phone',
                description: 'Send code to your phone',
                icon: const Icon(Icons.phone),
                selected: state.verificationMethod == VerificationMethod.phone,
                onTap: () {
                  context.forgetPasswordBloc.add(
                    SelectContactEvent(method: VerificationMethod.phone),
                  );
                },
              ),
            ],
          );
        });
  }
}
