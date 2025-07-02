import 'package:chat_bot_app/home/presentation/view_model/cubit/all_session_message/all_session_message_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "History",
          style: theme.textTheme.titleMedium,
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<AllSessionMessageCubit>(context).getAllSessions();
          },
          child: Icon(Icons.replay_outlined),
        ),
      ],
    );
  }
}
