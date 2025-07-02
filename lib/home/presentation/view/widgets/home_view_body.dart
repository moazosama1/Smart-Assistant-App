import 'package:chat_bot_app/home/presentation/view/widgets/list_custom_model_card.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_header.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/list_of_all_sessions_message.dart';
import 'package:chat_bot_app/home/presentation/view_model/cubit/all_session_message/all_session_message_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Start a new chat?",
            textAlign: TextAlign.start,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 2,
            child: ListCustomModelCard(),
          ),
          SizedBox(
            height: 10,
          ),
          CustomHeader(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: BlocBuilder<AllSessionMessageCubit, AllSessionMessageState>(
              builder: (context, state) {
                return ListOfAllSessionsMessage(
                  listSessions: BlocProvider.of<AllSessionMessageCubit>(
                    context,
                  ).listMessage,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
