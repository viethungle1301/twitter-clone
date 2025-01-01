class Twitter {
  String name;
  String username;
  String content;
  int comments;
  int shares;
  int likes;
  int views;
  String time;

  Twitter({
    required this.name,
    required this.username,
    required this.content,
    required this.comments,
    required this.likes,
    required this.shares,
    required this.views,
    required this.time,
  });
}

final List<Twitter> twitters = [
  Twitter(
    name: 'CeyJey',
    username: 'cd_Jey',
    content:
        'I believe there should be a better way to start each day… instead of waking up every morning.',
    comments: 1000,
    likes: 5000,
    shares: 230,
    views: 1000,
    time: '30m',
  ),
  Twitter(
    name: 'CeyJey',
    username: 'cd_Jey',
    content:
        'I always dream of being a millionaire like my friend!… He’s dreaming too',
    comments: 1000,
    likes: 8000,
    shares: 300,
    views: 1000,
    time: '1h',
  ),
  Twitter(
    name: 'CeyJey',
    username: 'cd_Jey',
    content:
        'If you want to make your dreams come true, the first thing you have to do is wake up.',
    comments: 3000,
    likes: 5000,
    shares: 3000,
    views: 2000,
    time: '2h',
  ),
  Twitter(
    name: 'CeyJey',
    username: 'cd_Jey',
    content:
        'Life is short. Time is fast. No reply. No rewind. So enjoy every moment as it comes…',
    comments: 1000,
    likes: 5000,
    shares: 2000,
    views: 3000,
    time: '3h',
  ),
  Twitter(
    name: 'CeyJey',
    username: 'cd_Jey',
    content:
        'Better to remain silent and be thought a fool, than to speak and remove all doubt.',
    comments: 3000,
    likes: 2000,
    shares: 2000,
    views: 3000,
    time: '4h',
  ),
  Twitter(
    name: 'CeyJey',
    username: 'cd_Jey',
    content:
        'Sometimes what you want isn’t what you get, but what you get in the end is so much better than what you wanted.',
    comments: 1000,
    likes: 5000,
    shares: 8000,
    views: 1000,
    time: '5h',
  ),
  Twitter(
    name: 'CeyJey',
    username: 'cd_Jey',
    content:
        'Life is very short, so break your silly egos, forgive quickly, believe slowly, love truly, laugh loudly and never avoid anything that makes you smile.',
    comments: 600,
    likes: 5000,
    shares: 2000,
    views: 1400,
    time: '6h',
  ),
  Twitter(
    name: 'CeyJey',
    username: 'cd_Jey',
    content:
        'When life puts you in tough situations, don’t say, why me? Just say, try me!',
    comments: 5000,
    likes: 5000,
    shares: 6000,
    views: 1000,
    time: '7h',
  ),
  Twitter(
    name: 'CeyJey',
    username: 'cd_Jey',
    content:
        'When life changes to be more difficult, you must change to be even stronger.',
    comments: 1000,
    likes: 5000,
    shares: 2000,
    views: 1000,
    time: '8h',
  ),
];
