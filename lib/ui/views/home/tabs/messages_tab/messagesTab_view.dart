import 'package:flutter/material.dart';
import 'package:reflip_store/ui/views/home/tabs/messages_tab/messagesTab_viewmodel.dart';
import 'package:reflip_store/ui/widgets/app_header.dart';
import 'package:reflip_store/ui/widgets/searchbar_widget.dart';
import 'package:stacked/stacked.dart';

class MessagesTabView extends StackedView<MessagesTabViewModel> {
  const MessagesTabView({super.key});

  @override
  Widget builder(
    BuildContext context,
    MessagesTabViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              AppHeader(
                title: "Messages",
                onBack: () {
                  viewModel.goBack();
                },
                onMenuTap: () {
                  viewModel.gotoSideBar();
                },
              ),
              const SizedBox(height: 20),
              SearchbarWidget(),
              const SizedBox(height: 40),
              Expanded(
                child: ListView.builder(
                  itemCount: viewModel.messages.length,
                  itemBuilder: (context, index) {
                    final chat = viewModel.messages[index];
                    return SizedBox(
                      height: 100,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(chat.avatarUrl),
                          ),
                          const SizedBox(width: 10, height: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  chat.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  chat.lastMessage,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Column(
                                    children: [
                                      if (chat.unread)
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 2,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                          child: Text(
                                            'New',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      Text(
                                        chat.time,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  MessagesTabViewModel viewModelBuilder(BuildContext context) =>
      MessagesTabViewModel();
}
