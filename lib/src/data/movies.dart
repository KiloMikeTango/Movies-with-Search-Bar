import '../models/movie_model.dart';

const imageDir = 'lib/src/assets/movies';

List<Movie> _movies = [
  Movie(
    name: 'Titanic',
    movieImage: '$imageDir/mov1.jpg',
    description:
        """James Cameron's epic, action-packed romance is set against the backdrop of the R.M.S. Titanic's tragic maiden voyage in 1912. A young, upper-class woman named Rose, stifled by the rigid expectations of Edwardian society, meets and falls for Jack Dawson, a free-spirited artist from steerage. Their forbidden love story, a compelling mystery recounted by an elderly Rose decades later, unfolds amidst the grandeur and the eventual, devastating sinking of the ship, testing their love and courage in the face of disaster.""",
  ),
  Movie(
    name: 'Catch Me If You Can',
    movieImage: '$imageDir/mov2.jpg',
    description:
        """Based on an incredible true story, teenage con artist Frank Abagnale Jr. (Leonardo DiCaprio) successfully impersonates a Pan Am pilot, a doctor, and a lawyer, cashing millions in forged checks. All the while, he is pursued in a high-stakes, globe-trotting cat-and-mouse game by determined FBI agent Carl Hanratty (Tom Hanks). A witty, stylish, and entertaining thriller directed by Steven Spielberg.""",
  ),
  Movie(
    name: 'Tom & Jerry',
    movieImage: '$imageDir/mov3.jpg',
    description:
        "The famous cat and mouse duo must put their differences aside when they find themselves abandoned by their owners and living on the street. They soon meet a lonely little girl named Robyn Starling, who has run away from her wicked, greedy guardian, Aunt Figg. Tom and Jerry join Robyn on a grand adventure to find her long-lost father, leading them on a river raft escapade and confronting numerous comical villains along the way. Note: This animated film is the one where the characters speak extensively.",
  ),
  Movie(
    name: 'My Love',
    movieImage: '$imageDir/mov4.jpg',
    description:
        """A powerful and bittersweet story of first love that spans 15 years. In high school, the mischievous swimmer Zhou Xiaoqi falls in love at first sight with the quiet transfer student, You Yongci. Their paths continually cross and diverge from their innocent high school days to college life and the challenges of early adulthood. No matter the distance or the obstacles, Xiaoqi relentlessly pursues Yongci. But over a decade and a half, they must face the difficult truth: is there ever a "right time" for eternal love?""",
  ),
  Movie(
    name: 'Our Beloved Summer',
    movieImage: '$imageDir/mov5.jpg',
    description:
        """Opposites attract, then dramatically collide. High school rivals Choi Ung, the carefree slacker, and Kook Yeon-soo, the driven top student, are forced to film a viral documentary together. Ten years later, a sequel to that documentary goes viral, forcing the two ex-lovers to reluctantly stand in front of the camera once again. With unresolved feelings and an abrupt five-year break-up hanging over them, this charming and often bittersweet series follows their tumultuous journey of personal growth, painful secrets, and the rekindled love that binds them across a decade of life's seasons.""",
  ),
  Movie(
    name: 'Squid Game',
    movieImage: '$imageDir/mov6.jpg',
    description:
        """Hundreds of deeply indebted people are invited to compete in a series of children's games for a massive cash prize. The catch? The penalty for losing is death. This gripping survival drama is a brutal, suspenseful critique of wealth inequality that pits human brutal, suspenseful critique of wealth inequality that pits human""",
  ),
];

List<Movie> get moviesList => _movies;
