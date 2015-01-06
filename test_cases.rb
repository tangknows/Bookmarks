<html>

TEST CASES

As a user, I want to be able to sign in and out of the Blocmarks application.
  User will sign in and out of application

As a user, I want to be able to email a URL to Blocmarks and have it saved in the Blocmarks database.
  User will e-mail w/ subject and have URL saved to database
    RSPEC send e-mail
  User will e-mail w/o subject and have URL saved to database under unclassified

As a user, I want to be able to add a hashtag to an email subject so that my bookmark is categorized.
user will e-mail with subject and URL will be saved with category = subject

As a user, I want to be able to view an index of all the bookmarks I've saved, organized by topic.
  Count of bookmarks belonging to user and compare to count of bookmarks belonging to user in database

As a user, I want to be able to view an index of all bookmarks submitted by all users, organized by topic.
???

As a user, I want to be able "like" another user's bookmark, so that it will appear on my personal bookmark index.
  User will be able to like a comment and have that comment incremented and matched to the backend

As a user, I want to be able to "unlike" another user's bookmark, so that it will not appear on my personal bookmark index.
  User will unlike a bookmark, bookmark will no longer appear on user’s index

As a user, I want to be able to delete a bookmark that I submitted from my personal index.
  User will create and delete a bookmark

All bookmarks should be ordered by the date they were submitted, in descending order.

As a user, I want to be able to click on a hashtag topic and then display a view with the entire collection of only related bookmarks.

As a user, I want to see a list of bookmarks on my personal index that I've added to Blocmarks, in addition to bookmarks that I've liked from other users.

</html>