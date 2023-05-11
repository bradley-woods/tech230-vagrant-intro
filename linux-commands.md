# Glossary of Linux Commands

The following list is a glossary of useful Linux commands and information on file permissions that can be used when operating your Linux VM.

## General

- To print the working directory:

    ```console
    $ pwd
    ```

- To list all visible files in the current working directory (use the `-l` flag to show more detail such as permissions and the `-a` flag to show hidden files e.g. `ls -al` will show detail of all visible and hidden files):

    ```console
    $ ls
    ```

  > **Note:** you can use a wildcard (`*`) to filter files e.g. `ls order*` will show files containing the word 'order'.

- To make a new file (add a full-stop/period at the start of the filename to make it hidden e.g. `.hidden-file`):

    ```console
    $ touch <file-name>
    ```

- To open a file:

    ```console
    $ file <file-name>
    ```

- To move a file:

    ```console
    $ mv <file-name> <destination-name>
    ```

- To display the contents of a file:

    ```console
    $ cat <file-name>
    ```

- To write simple text to a file:

    ```console
    $ echo "text" >> <file-name>
    ```

- To write more complex text to a file using the Nano text editor (it will also create a file and open it if you have not previously created a file):

    ```console
    $ sudo nano <file-name>
    ```

- To make a new directory (add a full-stop/period at the start of the directory name to make it hidden e.g. `.hidden-folder`):

    ```console
    $ mkdir <directory-name>
    ```

- To remove a file (use the `-f` flag to force remove a file regardless of file protection e.g. `rm -f protected-file`):

    ```console
    $ rm <file-name>
    ```

- To remove an empty directory:

    ```console
    $ rm -d <file-name>
    ```

- To remove a non-empty directory:

    ```console
    $ rm -r <file-name>
    ```
## Filters

- To print out the first *n* number of lines of a file:

    ```console
    $ head -n <file-name>
    ```

- To print out the last *n* number of lines of a file:

    ```console
    $ tail -n <file-name>
    ```

- To sort lines in a file in ascending alpha-numeric order (e.g. 123abc):

    ```console
    $ sort <file-name>
    ```

- To display the contents of a file with line numbers:

    ```console
    $ nl <file-name>
    ```

- To display word count information in the following order: no. of lines, word count, no. of bytes and filename:

    ```console
    $ wc <file-name>
    ```

- To combine commands using the pipe (`|`) symbol (e.g. `ls | head -3` lists first 3 files):

    ```console
    $ <command1> | <command2>
    ```

## Processes

- To show all running processes of the current user:

    ```console
    $ ps
    ```

- To show all processes (running or sleeping) for all users including root:

    ```console
    $ ps aux
    ```

- To show all running processes (sorted by CPU usage by default):

    ```console
    $ top
    ```

- To terminate a process with Process ID (PID) (use `-9` flag to immediately terminate it):

    ```console
    $ kill -9 <PID>
    ```

- To delay by a specific amount of time (for *n* seconds by default or add suffix m, h or d for minutes, hours or days, to execute in the background using `&`):

    ```console
    $ sleep <n>
    ```

## Permissions

When performing an `ls -l` command, the permissions are shown on the left. The first character represents if the item is a file (`-`) or a directory (`d`) and the next 9 characters represent the permissions, where the first 3 characters are for the owner, the following 3 are for the group and the final 3 are for everyone else, as shown in the image below:

![File permissions](images/file_permissions.png)

- Where:

  - r = Read only permissions

  - w = Write permissions

  - x = Execute/run permissions

- Example:

```console
-rw-r--r--  # file, read only for everyone and write for permission for owner
drwxrwxr-x  # directory, read and execute permissions for everyone and write for group and owner
```

### Change Permissions - Longhand

- To change the permissions of a file, use the following longhand command:

    ```console
    $ chmod <access-group>+<permissions> <file-name>
    ```

    > **Note:** access-group is a character representing the type of user (owner, group or everyone else) and permissions are the standard permissions written out e.g. `rwx` for read, write and execute

    **Longhand Permissions Character Codes:**

  - u = User/owner

  - g = Group

  - o = Others

  - a = All (or leave it blank)

- Example to give everyone full permissions to a file:

    ```console
    $ chmod a+rwx <file-name>
    ```

### Change Permissions - Shorthand

- You can also use a shorthand command to change permissions:

    ```console
    $ chmod <xyz> <file-name>
    ```

    > **Note:** x, y and z have digits between 0 and 7 to control the owner, group and everyone else's permissions respectively

    **Shorthand Permissions Number Codes:**

  - 0 - No permission

  - 1 - Execute permission

  - 2 - Write permission

  - 3 - Write and execute permissions

  - 4 - Read permission

  - 5 - Read and execute permissions

  - 6 - Read and write permissions

  - 7 - Read, write, and execute permissions

- Example to give everyone full permissions to a file:

    ```console
    $ chmod 777 <file-name>
    ```
