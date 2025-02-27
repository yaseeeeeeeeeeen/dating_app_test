class ChatUser {
  final String id;
  final String name;
  final String avatar;
  final bool isVerified;
  final bool isPinned;
  final bool isNewMatch;
  final bool hasUnreadMessage;
  final String lastMessage;

  ChatUser({
    required this.id,
    required this.name,
    required this.avatar,
    required this.isVerified,
    required this.isPinned,
    required this.isNewMatch,
    required this.hasUnreadMessage,
    required this.lastMessage,
  });
}
