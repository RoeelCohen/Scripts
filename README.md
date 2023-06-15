# Scripts

## Here's a few scripts to make your life easier:
* can-i-commit - Checking changed files using git-grep for "console." and "//" strings to make sure your commits aren't dirty. (this will not prevent you from committing, rather then just notify which files might need another look).


## Installing and usage (macOS):

1. Clone this repo into a designated scripts folder inside your home folder: `/Users/<YOUR_USER>/Scripts`.
2. Make all the scripts an executable and available linked without .`sh` file extension by running the init script using the command line: `/bin/bash ./init-all-scripts.sh`
3. restart your terminal


## Troubleshooting:

* use `ls -l` to check if file is executable: `-rwxr-xr-x` (x stands for executable).
* You can make a single file executable using this command line`chmod +x script_name.sh`
* If you tried running the scripts without linking it you have to specify the directory you're trying to run it from even if you're already in that current directory. i.e. `./can-i-commit.sh` will work but `canicommit.sh` will not.
* If you prefer to not make your scripts global make sure to uncomment the `init-all-scripts` script by changing the output dir (in comment) and then add the scripts folder to your current path: `export PATH="$HOME/<SCRIPTS_DIR>:$PATH"` by editing `.zshrc` or your bash config.

