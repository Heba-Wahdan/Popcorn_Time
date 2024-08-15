import 'package:popcorn_time/models/movie_model.dart';

List<Movie> movieList = [
  // Action Movies
  Movie(
    title: 'Mad Max: Fury Road',
    genre: 'Action',
    director: 'George Miller',
    releaseDate: '2015-05-15',
    synopsis:
        'In a post-apocalyptic wasteland, Max teams up with Furiosa to flee from a cult leader and his army in a high-octane chase.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/6/6e/Mad_Max_Fury_Road.jpg',
    isTrending: true,
  ),
  Movie(
    title: 'John Wick',
    genre: 'Action',
    director: 'Chad Stahelski',
    releaseDate: '2014-10-24',
    synopsis:
        'An ex-hitman comes out of retirement to track down the gangsters that killed his dog and stole his car.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/9/98/John_Wick_TeaserPoster.jpg',
    isTrending: true,
  ),

  // Comedy Movies
  Movie(
    title: 'The Big Lebowski',
    genre: 'Comedy',
    director: 'Joel Coen and Ethan Coen',
    releaseDate: '1998-03-06',
    synopsis:
        'Jeff "The Dude" Lebowski, mistaken for a millionaire of the same name, seeks restitution for his ruined rug and enlists his bowling buddies for help.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/3/35/Biglebowskiposter.jpg',
  ),

  // Drama Movies
  Movie(
    title: 'The Shawshank Redemption',
    genre: 'Drama',
    director: 'Frank Darabont',
    releaseDate: '1994-09-23',
    synopsis:
        'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/8/81/ShawshankRedemptionMoviePoster.jpg',
    isTrending: true,
  ),
  Movie(
    title: 'Forrest Gump',
    genre: 'Drama',
    director: 'Robert Zemeckis',
    releaseDate: '1994-07-06',
    synopsis:
        'The presidencies of Kennedy and Johnson, the Vietnam War, and other historical events unfold from the perspective of an Alabama man with an IQ of 75.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/6/67/Forrest_Gump_poster.jpg',
  ),
  Movie(
    title: 'Fight Club',
    genre: 'Drama',
    director: 'David Fincher',
    releaseDate: '1999-10-15',
    synopsis:
        'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into much more.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/f/fc/Fight_Club_poster.jpg',
  ),

  // Horror Movies

  Movie(
    title: 'Get Out',
    genre: 'Horror',
    director: 'Jordan Peele',
    releaseDate: '2017-02-24',
    synopsis:
        'A young African-American visits his white girlfriend\'s parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/a/a3/Get_Out_poster.png',
  ),

  // Science Fiction Movies
  Movie(
    title: 'Blade Runner 2049',
    genre: 'Science Fiction',
    director: 'Denis Villeneuve',
    releaseDate: '2017-10-06',
    synopsis:
        'A young blade runner\'s discovery of a long-buried secret leads him to track down former blade runner Rick Deckard, who\'s been missing for thirty years.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/9/9b/Blade_Runner_2049_poster.png',
  ),
  Movie(
    title: 'Star Wars: Episode IV - A New Hope',
    genre: 'Science Fiction',
    director: 'George Lucas',
    releaseDate: '1977-05-25',
    synopsis:
        'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee, and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/8/87/StarWarsMoviePoster1977.jpg',
  ),
  Movie(
    title: 'The Terminator',
    genre: 'Science Fiction',
    director: 'James Cameron',
    releaseDate: '1984-10-26',
    synopsis:
        'A cyborg assassin is sent back in time from 2029 to 1984 to kill Sarah Connor, whose unborn son is destined to lead humanity in a war against machines.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/7/70/Terminator1984movieposter.jpg',
  ),

  // Romance Movies
  Movie(
    title: 'The Notebook',
    genre: 'Romance',
    director: 'Nick Cassavetes',
    releaseDate: '2004-06-25',
    synopsis:
        'A young couple falls in love during the early 1940s, but their differing social backgrounds and World War II complicate their relationship.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/8/86/Posternotebook.jpg',
  ),

  Movie(
    title: 'Pride and Prejudice',
    genre: 'Romance',
    director: 'Joe Wright',
    releaseDate: '2005-11-23',
    synopsis:
        'Sparks fly when spirited Elizabeth Bennet meets single, rich, and proud Mr. Darcy. But Mr. Darcy reluctantly finds himself falling in love with a woman beneath his class.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/0/03/Prideandprejudiceposter.jpg',
  ),

  // Fantasy Movies

  Movie(
    title: 'Pan\'s Labyrinth',
    genre: 'Fantasy',
    director: 'Guillermo del Toro',
    releaseDate: '2006-12-29',
    synopsis:
        'In the Falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/6/67/Pan%27s_Labyrinth.jpg',
    isTrending: true,
  ),

  // Animation Movies
  Movie(
    title: 'Spirited Away',
    genre: 'Animation',
    director: 'Hayao Miyazaki',
    releaseDate: '2001-07-20',
    synopsis:
        'During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, where humans are changed into beasts.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/d/db/Spirited_Away_Japanese_poster.png',
  ),
  Movie(
    title: 'Toy Story',
    genre: 'Animation',
    director: 'John Lasseter',
    releaseDate: '1995-11-22',
    synopsis:
        'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/1/13/Toy_Story.jpg',
  ),
  Movie(
    title: 'The Lion King',
    genre: 'Animation',
    director: 'Roger Allers and Rob Minkoff',
    releaseDate: '1994-06-24',
    synopsis:
        'Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/3/3d/The_Lion_King_poster.jpg',
  ),

  // Thriller Movies
  Movie(
    title: 'Se7en',
    genre: 'Thriller',
    director: 'David Fincher',
    releaseDate: '1995-09-22',
    synopsis:
        'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/6/68/Seven_%28movie%29_poster.jpg',
  ),
  Movie(
    title: 'Gone Girl',
    genre: 'Thriller',
    director: 'David Fincher',
    releaseDate: '2014-10-03',
    synopsis:
        'With his wife\'s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it\'s suspected that he may not be innocent.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/0/05/Gone_Girl_Poster.jpg',
  ),
  Movie(
    title: 'The Silence of the Lambs',
    genre: 'Thriller',
    director: 'Jonathan Demme',
    releaseDate: '1991-02-14',
    synopsis:
        'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/8/86/The_Silence_of_the_Lambs_poster.jpg',
  ),

  // Documentary Movies
];
