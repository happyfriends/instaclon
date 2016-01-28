Feature: View user profile
  As a User
  In order to view an user profile information
  I want to be able to view the following user information
    | Email | Avatar | Amount of followers | Amount of Followees | Photos | Bio |

  Scenario: View user information successfully
    Given A user with email "bob@mail.com" exist
    When I view the user with email "bob@mail.com"
    Then I should view the following information:
      | email        | avatar | followers | followees | photos | bio |
      | bob@mail.com |        | 0         | 0         |        |     |

