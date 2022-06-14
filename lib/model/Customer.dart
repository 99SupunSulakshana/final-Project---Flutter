// ignore_for_file: file_names

class PopularModel {
  String name;
  String country;
  String image;

  PopularModel(this.name, this.country, this.image);
}

List<PopularModel> populars = popularsData
    .map(
        (item) => PopularModel(item['name']!, item['country']!, item['image']!))
    .toList();

var popularsData = [
  {
    "name": "What's App Package",
    "country":
        "You'll be using GitHub for this tutorial as it is widely used, however, Bitbucket, Gitlab, etc. are also popular, but Developers, Data Scientists, and Data Analysts mostly use the GitHub to PUSH and do PULL Request.",
    "image":
        "https://bitcoinist.com/wp-content/uploads/2020/05/shutterstock_717244969-1920x1142.jpg"
  },
  {
    "name": "What's App Package",
    "country": "Sri Lanka",
    "image":
        "https://ichef.bbci.co.uk/news/1024/branded_news/55A2/production/_112422912_tv061593010.jpg"
  },
  {
    "name": "What's App Package",
    "country": "Sri Lanka",
    "image":
        "https://ichef.bbci.co.uk/news/1024/branded_news/55A2/production/_112422912_tv061593010.jpg"
  },
  {
    "name": "What's App Package",
    "country": "Sri Lanka",
    "image":
        "https://ichef.bbci.co.uk/news/1024/branded_news/55A2/production/_112422912_tv061593010.jpg"
  },
  {
    "name": "What's App Package",
    "country": "Sri Lanka",
    "image":
        "https://ichef.bbci.co.uk/news/1024/branded_news/55A2/production/_112422912_tv061593010.jpg"
  }
];
