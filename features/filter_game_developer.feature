# language: en

Feature: Search games by developer

  @gamesByDeveloper
  Scenario: Filter games that contain the word 'Na' in their developer
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the developer: Na
      When the user search games by developer
      Then 2 games will match
      And the names of these games are
      | NAME                       |
      | Super Smash Bros. Ultimate |
      | The Last of Us             |
      And the following message is displayed: 2 games developed by: Na were found.