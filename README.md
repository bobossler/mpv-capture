# mpv-capture 
Small application to capture artist/track info from streaming an Internet Radio
station. Stores the data in a very simple Sqlite3 database.

## Why? 
I found an Internet Radio station that I can't get enough of. They play so much
stuff that a corporate radio station would never play. I decided I wanted to 
keep track of all the great music played so I could go back later and make my
own playlists. Very much a work-in-progress.

## Components
- mpv
- mpv script written in Lua
- Sqlite3 database with two tables
- Bash script to manipulate the files and load database
- cron job to run the Bash script and desired interval

The program flow:
1. Stream an Internet Radio feed with mpv
2. mpv script captures artist/track info on each change and writes to a file
3. cron job executes a Bash script (once a week in my case)
4. Bash script:
    1. reformats and sorts mpv captued data into new file
    2. processes new file with Sqlite3 into a staging table
    3. has Sqlite3 remove station break data and move to target table
    4. writes log of activities
    5. deletes intial file for next use
5. Some extra SQL scripts are included for viewing data in the database

## Things To Do
- Clean up code
- Improve the documentation
- Provide installation instructions
- Add DDL for database and tables
- Add license info (this is FOSS, not proprietary)

## License
____

mpv-capture is licensed under the GNU General Public License v3.0 or later

See [LICENSE](LICENSE) to see the full text.
