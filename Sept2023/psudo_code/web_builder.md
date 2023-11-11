# Web Builder 

+----------------------+
|   Start              |
+----------------------+
          |
          V
+----------------------+
| Check Argument Count |
+----------------------+
          |
          V
+----------------------+
| No Arguments         |
| Print Usage Message  |
| Exit                 |
+----------------------+
          |
          V
+----------------------+
| Get File Path        |
+----------------------+
          |
          V
+----------------------+
| Loop Over URLs in File|
+----------------------+
          |
          V
+----------------------+
| Extract Name from URL|
+----------------------+
          |
          V
+----------------------+
| Check if Name Exists  |
+----------------------+
          |
          V
+----------------------+
| Download and Extract |
| if Name Not Found    |
+----------------------+
          |
          V
+----------------------+
| Create Directory     |
+----------------------+
          |
          V
+----------------------+
| Move Files to        |
| Target Directory     |
+----------------------+
          |
          V
+----------------------+
| Check Next URL       |
+----------------------+
          |
          V
+----------------------+
|   End                |
+----------------------+


```
1. Start
2. Check Argument Count
    a. If argument count is less than or equal to 0
        i. Print "Usage: $0 <file_path>"
        ii. Exit with status 1
3. Get File Path from command line argument
4. Loop Over URLs in File
    a. For each web in file
        i. Extract name from web URL
        ii. Get list of existing directories in /var/www/html
        iii. While name is not in the list of directories
            1. Download web to /tmp/
            2. Unzip /tmp/$name.zip to /tmp/
            3. Remove all zip files in /tmp/
            4. Create directory /var/www/html/$name
            5. Move contents of /tmp/*$name*/* to /var/www/html/$name/
            6. Get updated list of directories in /var/www/html
        iv. End While
5. End Loop
6. End
```