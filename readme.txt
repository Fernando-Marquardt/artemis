How to install the game on your server: first, make sure you have a http server [like Apache] with php activated, and a mysql server.
Connection data [user&pass] can be edited in the antet.php file.
Create a database. Import devana.sql into the database.

Now, open your browser and go to localhost/index.php; you should see the homepage of the game.
Go to install.php and follow the instructions. In the end you should get the "Map data added." message.
Delete the install.php and install_.php files after the installation to prevent other users from creating admin accounts.
Now others can register accounts and play the game.
[hint]The default map data is gathered from a bmp image in the old/sources folder using the devana_maps.exe application. The source code for it is lost since I reinstalled my OS a while back. :P To use it follow the steps in the file menu, skipping step 2 which is a data consistency check that I didn't code properly. The correct check should have made sure that no 2 bodies of water of different ids are in contact. Since it is bugged, it does exactly the oposite. :D[/hint]

Have fun playing/modifying the game [if you do modify it, I'd appreaciate it if you credit the author and contributors :) ], and make sure to check the forum at http://devana.eu/forum for news and updates.