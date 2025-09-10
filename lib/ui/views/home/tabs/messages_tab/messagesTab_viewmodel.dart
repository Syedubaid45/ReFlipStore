import 'package:reflip_store/app/app.locator.dart';
import 'package:reflip_store/app/app.router.dart';
import 'package:reflip_store/models/message_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MessagesTabViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final List<ChatItem> _messages = [
    ChatItem(
      avatarUrl:
          "https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_1280.jpg",
      name: "DJI Mavic Mini 2 | Paul Molive",
      lastMessage: "Does it come with an additional battery?",
      time: "9:03 AM",
      isMe: true,
    ),
    ChatItem(
      avatarUrl:
          "https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_1280.jpg",
      name: "DJI Mavic Mini 2 | Petey Cruiser",
      lastMessage: "Sorry, I'm unlisting it",
      time: "Yesterday 4:12 PM",
    ),
    ChatItem(
      avatarUrl:
          "https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_1280.jpg",
      name: "DJI Mavic Air 2 | Anna Sthesia",
      lastMessage: "I think you should go with Mavic Mini",
      time: "15 Feb 21, 9:30 PM",
    ),
    ChatItem(
      avatarUrl:
          "https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_1280.jpg",
      name: "Apple AirPods Pro | Bob Frapples",
      lastMessage: "You're welcome",
      time: "25 Jan 21, 10:30 AM",
    ),
    ChatItem(
      avatarUrl:
          "https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_1280.jpg",
      name: "JBL Charge 2 Spea... | Greta Life",
      lastMessage: "Alright",
      time: "20 Dec 20, 9:23 AM",
      unread: true,
    ),
  ];

  List<ChatItem> get messages => _messages;

  void goBack() {
    _navigationService.back();
  }

  void gotoSideBar() {
    _navigationService.navigateToSidebarView();
  }
}
