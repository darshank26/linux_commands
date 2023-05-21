import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:linux_commands/AdHelper/adshelper.dart';
import 'package:linux_commands/utils/constants.dart';
import 'package:page_transition/page_transition.dart';

class DetailScreen extends StatefulWidget {

  final int listIndex;
  final int value;

  const DetailScreen({Key? key,required this.listIndex,required this.value}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState(listIndex,value);


}

class _DetailScreenState extends State<DetailScreen> {

  final int listIndex;
  final int value;

  _DetailScreenState(this.listIndex,this.value);


  final List<List<dynamic>> data_1_1 = [['git',
      'the stupid content tracker',
      """git [--version] [--help] [-C <path>] [-c <name>=<value>]
    [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
  [-p|--paginate|-P|--no-pager] [--no-replace-objects] [--bare]
  [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
  [--super-prefix=<path>]
  <command> [<args>]""",
  """
  git: The command used to invoke Git.

--version: Displays the version of Git that is installed on your system.

--help: Provides a general overview of Git's command-line interface and lists the most commonly used commands. It also gives information on how to get help on a specific Git command.

-C <path>: Changes to the specified directory before executing the Git command.

-c <name>=<value>: Sets a configuration variable to a specific value. This can be used to override or set Git configurations.

--exec-path[=<path>]: Displays or sets the path to the Git executable.

--html-path: Displays the path to the Git HTML documentation.

--man-path: Displays the path to the Git man pages.

--info-path: Displays the path to the Git info pages.

-p, --paginate, -P, --no-pager: Controls the output paging behavior of Git commands.

--no-replace-objects: Disables object replacement in Git.

--bare: Creates a bare repository without a working directory.

--git-dir=<path>: Sets the path to the Git repository.

--work-tree=<path>: Sets the path to the working tree of the Git repository.

--namespace=<name>: Sets the namespace of the Git repository.

--super-prefix=<path>: Sets the path prefix for superprojects using git-submodule.

<command>: The specific Git command you want to execute.

<args>: Additional parameters or arguments that are required or optional for the specific Git command.
  """

  ],
  ];


  final List<List<dynamic>> data_1_2 = [
    ['git config', 'Get and set repository or global options',
    """
git config [<file-option>] [--type=<type>] [--show-origin] [--show-scope] [-z|--null] name [value [value_regex]]
git config [<file-option>] [--type=<type>] --add name value
git config [<file-option>] [--type=<type>] --replace-all name value [value_regex]
git config [<file-option>] [--type=<type>] [--show-origin] [--show-scope] [-z|--null] --get name [value_regex]
git config [<file-option>] [--type=<type>] [--show-origin] [--show-scope] [-z|--null] --get-all name [value_regex]
git config [<file-option>] [--type=<type>] [--show-origin] [--show-scope] [-z|--null] [--name-only] --get-regexp name_regex [value_regex]
git config [<file-option>] [--type=<type>] [-z|--null] --get-urlmatch name URL
git config [<file-option>] --unset name [value_regex]
git config [<file-option>] --unset-all name [value_regex]
git config [<file-option>] --rename-section old_name new_name
git config [<file-option>] --remove-section name
git config [<file-option>] [--show-origin] [--show-scope] [-z|--null] [--name-only] -l | --list
git config [<file-option>] --get-color name [default]
git config [<file-option>] --get-colorbool name [stdout-is-tty]
git config [<file-option>] -e | --edit
    """,
    """
git config [<file-option>] [--type=<type>] [--show-origin] [--show-scope] [-z|--null] name [value [value_regex]]: Sets or queries Git configuration variables.

git config [<file-option>] [--type=<type>] --add name value: Adds a new value to a multi-valued Git configuration variable.

git config [<file-option>] [--type=<type>] --replace-all name value [value_regex]: Replaces all values of a Git configuration variable with a new value.

git config [<file-option>] [--type=<type>] [--show-origin] [--show-scope] [-z|--null] --get name [value_regex]: Retrieves the value of a Git configuration variable.

git config [<file-option>] [--type=<type>] [--show-origin] [--show-scope] [-z|--null] --get-all name [value_regex]: Retrieves all values of a multi-valued Git configuration variable.

git config [<file-option>] [--type=<type>] [--show-origin] [--show-scope] [-z|--null] [--name-only] --get-regexp name_regex [value_regex]: Retrieves configuration variables matching the specified name regex.

git config [<file-option>] [--type=<type>] [-z|--null] --get-urlmatch name URL: Retrieves the value of a Git configuration variable for a specific URL.

git config [<file-option>] --unset name [value_regex]: Removes the value of a Git configuration variable.

git config [<file-option>] --unset-all name [value_regex]: Removes all values of a Git configuration variable.

git config [<file-option>] --rename-section old_name new_name: Renames a configuration section.

git config [<file-option>] --remove-section name: Removes a configuration section.

git config [<file-option>] [--show-origin] [--show-scope] [-z|--null] [--name-only] -l | --list: Lists all Git configuration variables and their values.

git config [<file-option>] --get-color name [default]: Retrieves the color configured for a specific item.

git config [<file-option>] --get-colorbool name [stdout-is-tty]: Checks if a specific color item is enabled.

git config [<file-option>] -e | --edit: Opens the Git configuration file in an editor.


    """
    ],
  ];

  final List<List<dynamic>> data_1_3 = [
    ['git help', 'Display help information about git',
   """
   git help [-a|--all [--[no-]verbose]] [-g|--guide]
   """, """
git help [-a|--all [--[no-]verbose]]: Displays a list of available Git commands with a brief description for each command. The -a or --all option shows all available Git commands, while the --verbose option provides a more detailed description for each command.

git help -g|--guide: Displays a list of available Git guides, which provide in-depth documentation on specific topics or workflows within Git.
  """
  ,]
  ];

  final List<List<dynamic>> data_1_4 = [
    ['git blugero', 'Collect information for user to file a bug report',
    """
 git bugreport [(-o | --output-directory) <path>] [(-s | --suffix) <format>]
    """,
   """
git bugreport [(-o | --output-directory) <path>]: Specifies the output directory where the bug report will be saved. You can provide a custom <path> to specify the directory. If this option is not used, the bug report will be saved in the current working directory.

[(-s | --suffix) <format>]: Specifies the suffix format for the bug report filename. You can provide a custom <format> to define the suffix. By default, the bug report filename includes the current date and time.
   """
    ],
  ];

  final List<List<dynamic>> data_1_5 = [
    ['git init', 'Create an empty git repository or reinitialize an existing one',
      """git init [-q | --quiet] [--bare] [--template=<template_directory>]
	  [--separate-git-dir <git dir>] [--object-format=<format>]
	  [-b <branch-name> | --initial-branch=<branch-name>]
	  [--shared[=<permissions>]] [directory]""",
    """
git init [-q | --quiet]: Runs the command quietly, without displaying any output.

--bare: Initializes a bare repository, which does not have a working directory. Bare repositories are typically used for remote repositories or as a central repository for collaboration.

--template=<template_directory>: Specifies a directory to use as a template for initializing the repository. The template directory contains files and directories that will be copied into the newly created repository.

--separate-git-dir <git dir>: Specifies a separate directory to store the Git metadata instead of placing it in the repository's root directory.

--object-format=<format>: Sets the object format for the repository. This option is primarily used for compatibility with older versions of Git.

-b <branch-name>, --initial-branch=<branch-name>: Specifies the initial branch name to create in the repository. This option is useful if you want to start with a branch other than the default "master" branch.

--shared[=<permissions>]: Sets the shared permissions for the repository. This option allows multiple users to collaborate on the repository, controlling the access permissions.

[directory]: Specifies the directory path where the new repository will be created. If no directory is provided, the repository will be initialized in the current working directory.    """
    ],
  ];

  final List<List<dynamic>> data_1_6 = [
    ['git clone', 'Clone a git repository to a new one',
      """
    git clone [--template=<template_directory>]
	  [-l] [-s] [--no-hardlinks] [-q] [-n] [--bare] [--mirror]
	  [-o <name>] [-b <name>] [-u <upload-pack>] [--reference <repository>]
	  [--dissociate] [--separate-git-dir <git dir>]
	  [--depth <depth>] [--[no-]single-branch] [--no-tags]
	  [--recurse-submodules[=<pathspec>]] [--[no-]shallow-submodules]
	  [--[no-]remote-submodules] [--jobs <n>] [--sparse]
	  [--filter=<filter>] [--] <repository>
	  [<directory>]
      """,
    """
 git clone [--template=<template_directory>]: Clones a remote repository into a new directory on your local machine.

-l: Clones the repository using hard links, if possible, to save disk space and speed up the cloning process.

-s: Clones the repository as a symbolic link instead of copying the files, if supported by the file system.

--no-hardlinks: Disables the use of hard links when cloning the repository.

-q: Runs the command quietly, without displaying any progress or status messages.

-n: Performs a "shallow clone" by omitting the history of all but the latest commit.

--bare: Clones the repository without creating a working directory, resulting in a bare repository.

--mirror: Clones the repository as a mirror, including all branches, tags, and remote-tracking branches.

-o <name>: Sets the name of the remote to use when cloning the repository.

-b <name>: Checks out a specific branch instead of the default branch when cloning.

-u <upload-pack>: Specifies the path to the upload-pack on the remote side.

--reference <repository>: Clones the repository using another repository as a reference for cloning objects.

--dissociate: Clones the repository without copying any objects that already exist in the alternate object database.

--separate-git-dir <git dir>: Sets a separate directory to store the Git metadata.

--depth <depth>: Limits the depth of the history to clone, retrieving only the specified number of commits.

--[no-]single-branch: Clones only a single branch, instead of all branches.

--no-tags: Excludes tags when cloning the repository.

--recurse-submodules[=<pathspec>]: Clones and initializes submodules recursively.

--[no-]shallow-submodules: Clones submodules as shallow clones.

--[no-]remote-submodules: Clones submodules from the remote repository.

--jobs <n>: Limits the number of concurrent submodule cloning jobs.

--sparse: Performs a sparse checkout, allowing you to selectively clone only specific files or directories.

--filter=<filter>: Applies a filter to limit the clone size and speed up the cloning process.

<repository>: Specifies the URL or path to the remote repository to clone.

<directory>: Specifies the directory path where the cloned repository will be created. If not provided, a directory with the same name as the repository will be created.
    
    """

    ],
  ];

  final List<List<dynamic>> data_1_7 = [
  ['git add', 'Add a file contents to the index',
  """ 
  git add [--verbose | -v] [--dry-run | -n] [--force | -f] [--interactive | -i] [--patch | -p]
	[--edit | -e] [--[no-]all | --[no-]ignore-removal | [--update | -u]]
	[--intent-to-add | -N] [--refresh] [--ignore-errors] [--ignore-missing] [--renormalize]
	[--chmod=(+|-)x] [--pathspec-from-file=<file> [--pathspec-file-nul]]
	[--] [<pathspec>…​]
  """,
  """
  git add [--verbose | -v]: Displays detailed information about the files being added.

--dry-run | -n: Performs a dry run, showing which files would be added without actually adding them.

--force | -f: Forces Git to add files even if they have been ignored or have already been added before.

--interactive | -i: Interactively selects the changes to add from the working directory.

--patch | -p: Interactively selects hunks of changes within files to add.

--edit | -e: Opens the changes to be added in the editor for further modification.

--[no-]all: Adds all modified and new files to the staging area. By default, untracked files are not added.

--[no-]ignore-removal: Controls whether the removal of files from the working directory should be considered for adding.

[--update | -u]: Only adds modified and deleted files, but not untracked files.

--intent-to-add | -N: Marks specified files as intent-to-add, scheduling them to be added in the next commit.

--refresh: Refreshes the index by adding any changes made to files that are already tracked.

--ignore-errors: Ignores errors encountered when adding files, and continues with the rest of the operation.

--ignore-missing: Ignores missing files when adding files using pathspec.

--renormalize: Applies Git's text file normalization process to staged files.

--chmod=(+|-)x: Changes the execute permissions of the added files.

--pathspec-from-file=<file> [--pathspec-file-nul]: Reads pathspecs from the specified file, with one pathspec per line.

[<pathspec>…​]: Specifies the files or directories to add. If no pathspec is provided, all changes in the current directory are added.
  """ ]];

  final List<List<dynamic>> data_1_8 = [
    ['git status', 'Show the working tree status',
      """ 
 git status [<options>…​] [--] [<pathspec>…​]
      """,

      """ 
git status [<options>…]: Displays the status of the repository and working directory.

[<pathspec>…]: Specifies the files or directories to limit the status output to. Only the specified files or directories and their relevant changes will be displayed.

--: Separates pathspecs from options, allowing you to specify files or directories with names that may be interpreted as options.
      """ ]];

  final List<List<dynamic>> data_1_9 = [
    ['git diff', 'Show the changes between commits, commit and working tree',
      """
git diff [<options>] [<commit>] [--] [<path>…​]
git diff [<options>] --cached [<commit>] [--] [<path>…​]
git diff [<options>] <commit> [<commit>…​] <commit> [--] [<path>…​]
git diff [<options>] <commit>…​<commit> [--] [<path>…​]
git diff [<options>] <blob> <blob>
git diff [<options>] --no-index [--] <path> <path>
       """,
      """ 
git diff [<options>] [<commit>] [--] [<path>…​]: Shows differences between the working directory and the latest commit or specified commit. You can optionally provide a specific commit and limit the diff to specific paths.

git diff [<options>] --cached [<commit>] [--] [<path>…​]: Shows differences between the staging area (index) and the latest commit or specified commit. You can optionally provide a specific commit and limit the diff to specific paths.

git diff [<options>] <commit> [<commit>…​] <commit> [--] [<path>…​]: Shows differences between multiple commits. You can specify multiple commits and limit the diff to specific paths.

git diff [<options>] <blob> <blob>: Shows differences between two blob objects (usually file contents) identified by their object IDs or names.

git diff [<options>] --no-index [--] <path> <path>: Shows differences between two files outside of a Git repository. This is useful when comparing arbitrary files.
      """ ]];

  final List<List<dynamic>> data_1_10 = [
    ['git commit', 'Record changes to the repository',
      """
     git commit [-a | --interactive | --patch] [-s] [-v] [-u<mode>] [--amend]
	   [--dry-run] [(-c | -C | --fixup | --squash) <commit>]
	   [-F <file> | -m <msg>] [--reset-author] [--allow-empty]
	   [--allow-empty-message] [--no-verify] [-e] [--author=<author>]
	   [--date=<date>] [--cleanup=<mode>] [--[no-]status]
	   [-i | -o] [--pathspec-from-file=<file> [--pathspec-file-nul]]
	   [-S[<keyid>]] [--] [<pathspec>…​]
       """,
      """ 
git commit [-a | --interactive | --patch]: Commits all changes in the working directory. The -a option automatically stages modified and deleted files, while --interactive and --patch allow you to selectively stage changes.

-s: Adds a "Signed-off-by" line at the end of the commit message, indicating that you agree to the Developer's Certificate of Origin (DCO).

-v: Includes the diff of the commit in the commit message template.

-u<mode>: Updates the index (staging area) before the commit. <mode> can be all, untracked, or no (default).

--amend: Modifies the last commit by incorporating changes from the staging area or modifying the commit message.

--dry-run: Simulates the commit without actually creating it, showing what would be committed.

(-c | -C | --fixup | --squash) <commit>: Uses an existing commit as the basis for the new commit, either by editing, reusing, or merging it.

-F <file>: Reads the commit message from the specified file.

-m <msg>: Uses the given <msg> as the commit message directly on the command line.

--reset-author: Resets the authorship information to the committer's identity.

--allow-empty: Allows an empty commit, i.e., a commit without any changes.

--allow-empty-message: Allows a commit with an empty message.

--no-verify: Bypasses the pre-commit and commit-msg hooks.

-e: Opens an editor to edit the commit message.

--author=<author>: Sets the author name and email address for the commit.

--date=<date>: Sets the commit date.

--cleanup=<mode>: Specifies the commit message cleanup mode. <mode> can be strip, whitespace, verbatim, scissors, or default (default).

--[no-]status: Shows the commit message and diffstat of the changes.

-i | -o: Controls the character encoding of the commit message. -i uses the terminal's input encoding, and -o uses the output encoding.

--pathspec-from-file=<file> [--pathspec-file-nul]: Reads pathspecs from the specified file, with one pathspec per line.

[-S[<keyid>]]: GPG-signs the commit with the specified GPG key ID or with the default key if no ID is provided.

[<pathspec>…​]: Specifies the files or directories to include in the commit. If no pathspec is provided, all changes in the staging area will be committed.


      """ ]];


  final List<List<dynamic>> data_1_11 = [
    ['git notes', 'Add or import object notes',
      """
git notes [list [<object>]]
git notes add [-f] [--allow-empty] [-F <file> | -m <msg> | (-c | -C) <object>] [<object>]
git notes copy [-f] ( --stdin | <from-object> [<to-object>] )
git notes append [--allow-empty] [-F <file> | -m <msg> | (-c | -C) <object>] [<object>]
git notes edit [--allow-empty] [<object>]
git notes show [<object>]
git notes merge [-v | -q] [-s <strategy> ] <notes-ref>
git notes merge --commit [-v | -q]
git notes merge --abort [-v | -q]
git notes remove [--ignore-missing] [--stdin] [<object>…​]
git notes prune [-n] [-v]
git notes get-ref
       """,
      """
git notes list [<object>]: Lists the notes attached to the specified object or lists all notes in the repository if no object is provided.

git notes add [-f] [--allow-empty] [-F <file> | -m <msg> | (-c | -C) <object>] [<object>]: Adds a note to the specified object. The note content can be provided through a file, a message, or by copying an existing note.

git notes copy [-f] (--stdin | <from-object> [<to-object>]): Copies notes from one object to another. The notes can be read from the standard input or from the specified from-object and copied to the to-object.

git notes append [--allow-empty] [-F <file> | -m <msg> | (-c | -C) <object>] [<object>]: Appends a note to the existing notes of the specified object.

git notes edit [--allow-empty] [<object>]: Edits the note attached to the specified object. The note content can be modified through an editor.

git notes show [<object>]: Shows the content of the note attached to the specified object.

git notes merge [-v | -q] [-s <strategy>] <notes-ref>: Merges the notes from the specified notes-ref into the current branch's notes. The -s option allows specifying a merge strategy.

git notes merge --commit [-v | -q]: Commits the current notes merge result.

git notes merge --abort [-v | -q]: Aborts the current notes merge.

git notes remove [--ignore-missing] [--stdin] [<object>…​]: Removes the notes attached to the specified objects. The --ignore-missing option ignores missing notes, and the --stdin option reads object names from the standard input.

git notes prune [-n] [-v]: Removes orphaned notes, pruning notes that are no longer attached to any object. The -n option performs a dry run, and the -v option displays verbose output.

git notes get-ref: Prints the name of the default notes reference.


       """ ]];


  final List<List<dynamic>> data_1_12 = [
    ['git restore', 'Restore the working tree fields',
      """ 
 git restore [<options>] [--source=<tree>] [--staged] [--worktree] [--] <pathspec>…​
git restore [<options>] [--source=<tree>] [--staged] [--worktree] --pathspec-from-file=<file> [--pathspec-file-nul]
git restore (-p|--patch) [<options>] [--source=<tree>] [--staged] [--worktree] [--] [<pathspec>…​]
      """,
      """
git restore [<options>] [--source=<tree>] [--staged] [--worktree] [--] <pathspec>…​: Restores the specified files or directories in the working tree, staging area, or both. The <pathspec> represents the files or directories to be restored.

git restore [<options>] [--source=<tree>] [--staged] [--worktree] --pathspec-from-file=<file> [--pathspec-file-nul]: Reads the pathspecs from the specified file, with one pathspec per line, and restores the corresponding files or directories.

git restore (-p|--patch) [<options>] [--source=<tree>] [--staged] [--worktree] [--] [<pathspec>…​]: Allows interactive selection of changes to restore. The -p or --patch option opens an interactive prompt to choose specific changes.
      """ ]];



  final List<List<dynamic>> data_1_13 = [
    ['git reset', 'Reset current HEAD to the specified state',
      """
 git reset [-q] [<tree-ish>] [--] <pathspec>…​
git reset [-q] [--pathspec-from-file=<file> [--pathspec-file-nul]] [<tree-ish>]
git reset (--patch | -p) [<tree-ish>] [--] [<pathspec>…​]
git reset [--soft | --mixed [-N] | --hard | --merge | --keep] [-q] [<commit>]
       """,
      """ 
git reset [-q] [<tree-ish>] [--] <pathspec>…​: Resets the specified files or directories in the working tree to their state in the <tree-ish> (commit, branch, or another reference). The <pathspec> represents the files or directories to be reset.

git reset [-q] [--pathspec-from-file=<file> [--pathspec-file-nul]] [<tree-ish>]: Reads the pathspecs from the specified file, with one pathspec per line, and resets the corresponding files or directories.

git reset (--patch | -p) [<tree-ish>] [--] [<pathspec>…​]: Allows interactive selection of changes to reset. The --patch or -p option opens an interactive prompt to choose specific changes.

git reset [--soft | --mixed [-N] | --hard | --merge | --keep] [-q] [<commit>]: Resets the current branch to <commit> or modifies the staging area and working tree based on the reset mode specified.

--soft: Moves the branch pointer to <commit> without modifying the staging area or working tree. Changes in the previous commits remain staged.

--mixed: Resets the branch pointer to <commit> and updates the staging area to match the specified commit. This is the default reset mode. Changes in the previous commits are unstaged.

--mixed -N: Resets the branch pointer to <commit> but does not modify the staging area or working tree. Changes in the previous commits are kept as uncommitted changes.

--hard: Resets the branch pointer to <commit> and discards all changes in the staging area and working tree. Changes in the previous commits are permanently removed.

--merge: Resets the branch pointer to <commit> but keeps the changes in the staging area. This mode is used to undo a failed merge or resolve conflicts manually.

--keep: Resets the branch pointer to <commit> but preserves local changes in the working tree. It resets the index and updates the files that are different between the <commit> and the current branch.

Additional options such as --quiet can be used to suppress output messages.
      
      """ ]];


  final List<List<dynamic>> data_1_14 = [
    ['git rm', 'Remove files from the working tree and from the index',
      """ 
    git rm [-f | --force] [-n] [-r] [--cached] [--ignore-unmatch]
	  [--quiet] [--pathspec-from-file=<file> [--pathspec-file-nul]]
	  [--] [<pathspec>…​]
      """, """ 
git rm [-f | --force] [-n] [-r] [--cached] [--ignore-unmatch] [--quiet] [--pathspec-from-file=<file> [--pathspec-file-nul]] [--] [<pathspec>…​]: Removes the specified files or directories from the working tree and the Git repository.

-f or --force: Forces the removal of files even if they are modified or have local changes that have not been committed.

-n: Performs a dry run, where the files are not actually removed, but a list of files that would be affected is displayed.

-r: Recursively removes directories and their contents.

--cached: Removes files only from the index (staging area) without modifying the working tree or deleting the actual files from the file system.

--ignore-unmatch: Does not display an error message if no matching files are found.

--quiet: Suppresses output messages, making the command less verbose.

--pathspec-from-file=<file> [--pathspec-file-nul]: Reads the pathspecs from the specified file, with one pathspec per line, and removes the corresponding files or directories.

<pathspec>…​: Specifies the files or directories to be removed. You can provide multiple pathspecs to remove multiple files or directories at once.


      """ ]];

  final List<List<dynamic>> data_1_15 = [
  ['git mv', 'Move or rename the file, a directory ora synlink',
  """git mv <options>…​ <args>…​ """,
      """
 <options>: Represents the various options available for the git mv command. Some commonly used options include:

-f or --force: Forces the move or rename operation even if it overwrites existing files.

-n or --dry-run: Performs a dry run, where the command only simulates the move or rename operation without actually changing any files.

-v or --verbose: Displays verbose output, providing more information about the move or rename operation.

<args>…​: Represents the files or directories to be moved or renamed. You can provide one or more arguments to git mv. The last argument is the destination where the files or directories should be moved or renamed.
       """ ]];

  final List<List<dynamic>> data_1_16 = [
    ['git branch', 'List, create or delete a branches',
      """ 
git branch [--color[=<when>] | --no-color] [--show-current]
[-v [--abbrev=<length> | --no-abbrev]]
[--column[=<options>] | --no-column] [--sort=<key>]
[(--merged | --no-merged) [<commit>]]
[--contains [<commit>]] [--no-contains [<commit>]]
[--points-at <object>] [--format=<format>]
[(-r | --remotes) | (-a | --all)]
[--list] [<pattern>…​]
git branch [--track | --no-track] [-f] <branchname> [<start-point>]
git branch (--set-upstream-to=<upstream> | -u <upstream>) [<branchname>]
git branch --unset-upstream [<branchname>]
git branch (-m | -M) [<oldbranch>] <newbranch>
git branch (-c | -C) [<oldbranch>] <newbranch>
git branch (-d | -D) [-r] <branchname>…​
git branch --edit-description [<branchname>]
      """,
      """
--color[=<when>] | --no-color: Enables or disables colored output for branch listings.

--show-current: Displays the current branch.

-v [--abbrev=<length> | --no-abbrev]: Shows more verbose information about each branch, including the commit hash and commit subject.

--column[=<options>] | --no-column: Enables or disables columnized output for branch listings.

--sort=<key>: Specifies the key used for sorting the branch listings.

--merged [<commit>] or --no-merged [<commit>]: Lists only branches that are merged or not merged into the specified commit.

--contains [<commit>] or --no-contains [<commit>]: Lists branches that contain or do not contain the specified commit.

--points-at <object>: Lists branches that point at the specified object.

--format=<format>: Specifies the format for branch listings.

(-r | --remotes) | (-a | --all): Lists remote branches or both remote and local branches.

--list: Lists branches matching the specified pattern(s).

git branch [--track | --no-track] [-f] <branchname> [<start-point>]: Creates a new branch with the specified name at the given start point. The --track option sets up the new branch to track the start point.

git branch (--set-upstream-to=<upstream> | -u <upstream>) [<branchname>]: Sets the upstream branch for the current branch or the specified branch.

git branch --unset-upstream [<branchname>]: Unsets the upstream branch for the current branch or the specified branch.

git branch (-m | -M) [<oldbranch>] <newbranch>: Renames an existing branch from <oldbranch> to <newbranch>. The -M option forces the rename, even if <newbranch> already exists.

git branch (-c | -C) [<oldbranch>] <newbranch>: Creates a new branch <newbranch> based on an existing branch <oldbranch>. The -C option forces the creation, even if <newbranch> already exists.

git branch (-d | -D) [-r] <branchname>…​: Deletes the specified branch(es). The -d option performs a safe deletion and refuses to delete branches that have unmerged changes. The -D option forces the deletion of branches, even if they have unmerged changes. The -r option deletes remote branches.

git branch --edit-description [<branchname>]: Opens an editor to edit the description of the current branch or the specified branch.
       """ ]];


  final List<List<dynamic>> data_1_17 = [
    ['git checkout', 'Switch branches or restore working tree files',
      """
git checkout [-q] [-f] [-m] [<branch>]
git checkout [-q] [-f] [-m] --detach [<branch>]
git checkout [-q] [-f] [-m] [--detach] <commit>
git checkout [-q] [-f] [-m] [[-b|-B|--orphan] <new_branch>] [<start_point>]
git checkout [-f|--ours|--theirs|-m|--conflict=<style>] [<tree-ish>] [--] <pathspec>…​
git checkout [-f|--ours|--theirs|-m|--conflict=<style>] [<tree-ish>] --pathspec-from-file=<file> [--pathspec-file-nul]
git checkout (-p|--patch) [<tree-ish>] [--] [<pathspec>…​]
      """,
      """ 
git checkout [-q] [-f] [-m] [<branch>]: Switches to the specified branch. If the branch already exists, it updates the working directory to match the branch. If a branch name is not provided, it switches to the branch that was previously checked out.

-q: Performs the checkout operation quietly, suppressing unnecessary output.

-f: Forces the checkout, overwriting local changes in the working directory.

-m: Performs a three-way merge when switching branches with local modifications. It attempts to merge the changes automatically.

git checkout [-q] [-f] [-m] --detach [<branch>]: Detaches the HEAD from any branch, making it point directly to a specific commit. If a branch name is provided, it checks out the commit associated with that branch.

git checkout [-q] [-f] [-m] [--detach] <commit>: Detaches the HEAD and checks out the specified commit.

git checkout [-q] [-f] [-m] [[-b|-B|--orphan] <new_branch>] [<start_point>]: Creates a new branch with the specified name and checks it out. If -b or -B is used, it creates a new branch even if a branch with the same name already exists. The --orphan option creates a new branch without any commit history.

git checkout [-f|--ours|--theirs|-m|--conflict=<style>] [<tree-ish>] [--] <pathspec>…​: Restores the specified files or directories to the state in the given <tree-ish> (commit, branch, or tag). It allows different conflict resolution styles using the --ours, --theirs, -m, or --conflict=<style> options.

git checkout [-f|--ours|--theirs|-m|--conflict=<style>] [<tree-ish>] --pathspec-from-file=<file> [--pathspec-file-nul]: Restores files or directories specified in the <file> using the paths listed in the file.

git checkout (-p|--patch) [<tree-ish>] [--] [<pathspec>…​]: Interactively selects changes in the specified files or directories and applies the selected changes.
      """ ]];

  final List<List<dynamic>> data_1_18 = [
    ['git switch', 'Switch branches',
      """ 
git switch [<options>] [--no-guess] <branch>
git switch [<options>] --detach [<start-point>]
git switch [<options>] (-c|-C) <new-branch> [<start-point>]
git switch [<options>] --orphan <new-branch>
      """,
      """ 
git switch [<options>] [--no-guess] <branch>: Switches to the specified branch.

<branch>: The branch to switch to.

--no-guess: Disables branch name guessing. By default, Git attempts to guess the branch name if there is only one matching branch for the given pattern.

git switch [<options>] --detach [<start-point>]: Detaches the HEAD from any branch and sets it to the specified <start-point>. <start-point> can be a commit, branch, or tag.

git switch [<options>] (-c|-C) <new-branch> [<start-point>]: Creates a new branch <new-branch> and checks it out. If <start-point> is provided, it sets the branch to start from the specified commit, branch, or tag.

-c: Creates a new branch <new-branch> and checks it out, equivalent to git checkout -b.

-C: Creates or overwrites an existing branch <new-branch> and checks it out, equivalent to git checkout -B.

git switch [<options>] --orphan <new-branch>: Creates a new orphan branch <new-branch> with no commit history and checks it out.
      
      """ ]];

  final List<List<dynamic>> data_1_19 = [
    ['git merge', 'Join two or more development histories together',
      """ 
git merge [-n] [--stat] [--no-commit] [--squash] [--[no-]edit]
[--no-verify] [-s <strategy>] [-X <strategy-option>] [-S[<keyid>]]
[--[no-]allow-unrelated-histories]
[--[no-]rerere-autoupdate] [-m <msg>] [-F <file>] [<commit>…​]
git merge (--continue | --abort | --quit)
      """,
      """
-n: Performs a "dry run" to see the changes that would be made without actually committing them.

--stat: Displays a summary of the changes made during the merge.

--no-commit: Performs the merge but does not create a new commit automatically. Allows you to make additional changes before committing.

--squash: Performs a squash merge, combining the changes from the specified commits into a single commit without preserving their individual commit history.

--[no-]edit: Controls whether to automatically open an editor to modify the merge commit message.

--no-verify: Skips pre-commit and commit-msg hooks.

-s <strategy>: Specifies the merge strategy to use. Common strategies include recursive (default), resolve, octopus, etc.

-X <strategy-option>: Specifies additional options for the chosen merge strategy.

-S[<keyid>]: Signs the resulting merge commit with a GPG key.

--[no-]allow-unrelated-histories: Allows or disallows merging branches with unrelated histories.

--[no-]rerere-autoupdate: Controls whether Git automatically updates the recorded resolution of conflicted merges using the rerere mechanism.

-m <msg>: Uses the given <msg> as the merge commit message.

-F <file>: Takes the merge commit message from the specified <file>.

git merge (--continue | --abort | --quit): These options are used after a merge conflict occurs.

--continue: Continues the merge process after resolving conflicts.

--abort: Aborts the current merge operation, resetting the branch to its previous state.

--quit: Quits the current merge operation, but keeps any changes made by the merge in the working directory.
      
       """ ]];


  final List<List<dynamic>> data_1_20 = [
    ['git mergetool', 'Run merge conflict resolution tools to resolve merge conflicts',
      """
git mergetool [--tool=<tool>] [-y | --[no-]prompt] [<file>…​]
       """,
      """ 
--tool=<tool>: Specifies the merge resolution tool to use. Git supports various merge tools such as vimdiff, kdiff3, meld, diffmerge, etc. If not specified, Git attempts to use a default merge tool based on the system configuration.

-y or --prompt: Automatically resolves conflicts by choosing the default option for each conflict encountered.

--no-prompt: Forces the merge tool to prompt for resolution for each conflict.

<file>…​: Specifies the file or files to be resolved using the merge tool. If no files are specified, Git will attempt to open the merge tool for all unresolved files.
      """ ]];

  final List<List<dynamic>> data_1_21 = [
    ['git log', 'Show commit logs',
      """
git log [<options>] [<revision range>] [[--] <path>…​]
       """,
      """
<options>: Various options can be used to customize the log output. Some commonly used options include:

--oneline: Shows each commit on a single line.
--graph: Displays the commit graph with ASCII art.
--abbrev-commit: Shows abbreviated commit hashes.
--author=<pattern>: Filters commits by the author's name or email address.
--since=<date>: Shows commits after the specified date.
--until=<date>: Shows commits before the specified date.
--grep=<pattern>: Filters commits by a specified pattern.
--follow: Continues listing the history of a file beyond renames.
Many more options are available. Please refer to the Git documentation for a comprehensive list.
<revision range>: Specifies a range of commits to display. For example, master..develop shows the commits in the develop branch that are not in the master branch.

[--] <path>…​: Limits the log output to only the specified file(s) or directory(ies).
       """ ]];


  final List<List<dynamic>> data_1_22 = [
    ['git stash', 'Stash the changes in a dirty working directory away',
      """ 
git stash show [<options>] [<stash>]
git stash drop [-q|--quiet] [<stash>]
git stash ( pop | apply ) [--index] [-q|--quiet] [<stash>]
git stash branch <branchname> [<stash>]
git stash [push [-p|--patch] [-k|--[no-]keep-index] [-q|--quiet]
	     [-u|--include-untracked] [-a|--all] [-m|--message <message>]
	     [--pathspec-from-file=<file> [--pathspec-file-nul]]
	     [--] [<pathspec>…​]]
git stash clear
git stash create [<message>]
git stash store [-m|--message <message>] [-q|--quiet] <commit>
      """,
      """
git stash show [<options>] [<stash>]: Shows the changes recorded in a stash. By default, it displays the most recent stash. Options such as --stat, --patch, --summary, and others can be used to customize the display.

git stash drop [-q|--quiet] [<stash>]: Deletes a stash. By default, it deletes the most recent stash. The -q or --quiet option suppresses the confirmation message.

git stash pop [--index] [-q|--quiet] [<stash>]: Applies the changes from a stash and removes it from the stash list. By default, it applies the most recent stash. The --index option also restores the changes to the index.

git stash apply [--index] [-q|--quiet] [<stash>]: Applies the changes from a stash without removing it from the stash list. By default, it applies the most recent stash. The --index option also restores the changes to the index.

git stash branch <branchname> [<stash>]: Creates a new branch <branchname> based on the commit where a stash was originally created. The branch will have the stash's changes applied to it. By default, it uses the most recent stash.

git stash push [-p|--patch] [-k|--[no-]keep-index] [-q|--quiet] [-u|--include-untracked] [-a|--all] [-m|--message <message>] [--pathspec-from-file=<file> [--pathspec-file-nul]] [--] [<pathspec>…​]: Creates a new stash with the changes in the working directory. Various options can be used to control which changes are stashed and how the stash is created.

git stash clear: Removes all stashes from the stash list.

git stash create [<message>]: Creates a new stash with the changes in the working directory but does not apply or remove it from the stash list. Returns the stash's object name.

git stash store [-m|--message <message>] [-q|--quiet] <commit>: Creates a new stash-like commit using the provided <commit> as the parent. This command is used for advanced stash manipulation. 
       """ ]];


  final List<List<dynamic>> data_1_23 = [
    ['git tag', 'Create, list, delete or verify a tag object signed with GPG',
      """ 
git tag [-a | -s | -u <keyid>] [-f] [-m <msg> | -F <file>] [-e]
	<tagname> [<commit> | <object>]
git tag -d <tagname>…​
git tag [-n[<num>]] -l [--contains <commit>] [--no-contains <commit>]
	[--points-at <object>] [--column[=<options>] | --no-column]
	[--create-reflog] [--sort=<key>] [--format=<format>]
	[--[no-]merged [<commit>]] [<pattern>…​]
git tag -v [--format=<format>] <tagname>…​
      
      """, """
git tag [-a | -s | -u <keyid>] [-f] [-m <msg> | -F <file>] [-e] <tagname> [<commit> | <object>]: Creates a new tag with the specified <tagname>. The tag can be associated with a specific <commit> or <object>. Options such as -a (annotated tag), -s (signed tag), -u <keyid> (tag signed with a specific GPG key), -f (force overwrite), -m <msg> (annotation message), -F <file> (read message from file), and -e (edit annotation message) can be used to customize the tag.

git tag -d <tagname>…​: Deletes the specified tags. Multiple tags can be deleted at once by providing their names.

git tag [-n[<num>]] -l [--contains <commit>] [--no-contains <commit>] [--points-at <object>] [--column[=<options>] | --no-column] [--create-reflog] [--sort=<key>] [--format=<format>] [--[no-]merged [<commit>]] [<pattern>…​]: Lists existing tags. Options such as -n[<num>] (show <num> lines of annotation), --contains <commit> (show tags that contain the specified commit), --no-contains <commit> (show tags that do not contain the specified commit), --points-at <object> (show tags that point to the specified object), --column[=<options>] (show tags in columns), --create-reflog (create a reflog for each tag), --sort=<key> (sort tags by specified key), --format=<format> (customize the output format), and --[no-]merged [<commit>] (show tags that are merged or not merged into the specified commit) can be used to filter and format the tag listing.

git tag -v [--format=<format>] <tagname>…​: Verifies the signatures of the specified tags and displays the tagger information. The --format=<format> option can be used to customize the output format.
      
       """ ]];


  final List<List<dynamic>> data_1_24 = [
    ['git worktree', 'Manage multiple working trees',
      """ 
git worktree add [-f] [--detach] [--checkout] [--lock] [-b <new-branch>] <path> [<commit-ish>]
git worktree list [--porcelain]
git worktree lock [--reason <string>] <worktree>
git worktree move <worktree> <new-path>
git worktree prune [-n] [-v] [--expire <expire>]
git worktree remove [-f] <worktree>
git worktree unlock <worktree> 
      
      """, """
git worktree add [-f] [--detach] [--checkout] [--lock] [-b <new-branch>] <path> [<commit-ish>]: Creates a new working tree at the specified <path>, allowing you to work on multiple branches simultaneously. By default, it checks out the HEAD commit, but you can provide a specific <commit-ish> to check out a different commit. The --detach option creates a detached HEAD state, while --checkout checks out a branch. The -b <new-branch> option creates a new branch at the specified commit. Use --lock to lock the worktree, preventing accidental deletion.

git worktree list [--porcelain]: Lists the available linked working trees. The --porcelain option formats the output for parsing by scripts.

git worktree lock [--reason <string>] <worktree>: Locks the specified <worktree> to prevent deletion or modification. You can provide an optional <string> as the reason for the lock.

git worktree move <worktree> <new-path>: Moves the specified <worktree> to a new location at <new-path>. The worktree must not be locked.

git worktree prune [-n] [-v] [--expire <expire>]: Removes stale or unused working trees. By default, it only shows what would be pruned, but with -n, it performs a dry run. The -v option provides verbose output, and --expire <expire> removes worktrees older than the specified time.

git worktree remove [-f] <worktree>: Removes the specified <worktree>. The -f option forcefully removes the worktree, discarding any changes.

git worktree unlock <worktree>: Unlocks the specified <worktree>, allowing it to be deleted or modified.
      
       """ ]];


  final List<List<dynamic>> data_1_25 = [
    ['git fetch', 'Download objects and refs another repository',
      """git fetch [<options>] [<repository> [<refspec>…​]]
git fetch [<options>] <group>
git fetch --multiple [<options>] [(<repository> | <group>)…​]
git fetch --all [<options>] """,
      """git fetch [<options>] [<repository> [<refspec>…​]]: Fetches updates from a remote <repository>. If no <repository> is specified, it fetches updates from the default remote repository. You can also provide optional <refspec> arguments to specify specific branches or tags to fetch.

git fetch [<options>] <group>: Fetches updates from a remote group. The <group> is defined in the configuration file and represents a collection of repositories.

git fetch --multiple [<options>] [(<repository> | <group>)…​]: Fetches updates from multiple remote repositories or groups specified as <repository> or <group> arguments. You can provide multiple repositories or groups separated by spaces.

git fetch --all [<options>]: Fetches updates from all remote repositories. It fetches updates from all remotes configured in the repository.""" ]];


  final List<List<dynamic>> data_1_26 = [
    ['git pull', 'Fetch from and integrate with another repository or a local branch',
      """git pull [<options>] [<repository> [<refspec>…​]] """,
      """git pull [<options>] [<repository> [<refspec>…​]]: Performs a git fetch to retrieve updates from the specified remote <repository>. If no <repository> is specified, it fetches updates from the default remote repository. You can also provide optional <refspec> arguments to specify specific branches or tags to fetch. After the fetch, it merges the retrieved changes into the current branch.""" ]];

  final List<List<dynamic>> data_1_27 = [
    ['git push', 'Remove files from the working tree and from the index',
      """git push [--all | --mirror | --tags] [--follow-tags] [--atomic] [-n | --dry-run] [--receive-pack=<git-receive-pack>]
	   [--repo=<repository>] [-f | --force] [-d | --delete] [--prune] [-v | --verbose]
	   [-u | --set-upstream] [-o <string> | --push-option=<string>]
	   [--[no-]signed|--signed=(true|false|if-asked)]
	   [--force-with-lease[=<refname>[:<expect>]]]
	   [--no-verify] [<repository> [<refspec>…]] """,
      """--all: Pushes all branches to the remote repository.
--mirror: Pushes all references to the remote repository, including tags and branches. It effectively mirrors the local repository to the remote.
--tags: Pushes all tags to the remote repository.
--follow-tags: Pushes both tags and their associated commits to the remote repository.
-f or --force: Forces the push even if it results in a non-fast-forward update. Use with caution.
-u or --set-upstream: Sets the upstream configuration for the current branch, enabling you to use git pull without specifying the remote and branch.
--no-verify: Skips the pre-push and commit-msg hooks, bypassing the verification process. """ ]];

  final List<List<dynamic>> data_1_28 = [
    ['git remote', 'Manage set of tracked repositories',
      """git remote [-v | --verbose]
git remote add [-t <branch>] [-m <master>] [-f] [--[no-]tags] [--mirror=<fetch|push>] <name> <url>
git remote rename <old> <new>
git remote remove <name>
git remote set-head <name> (-a | --auto | -d | --delete | <branch>)
git remote set-branches [--add] <name> <branch>…
git remote get-url [--push] [--all] <name>
git remote set-url [--push] <name> <newurl> [<oldurl>]
git remote set-url --add [--push] <name> <newurl>
git remote set-url --delete [--push] <name> <url>
git remote [-v | --verbose] show [-n] <name>…
git remote prune [-n | --dry-run] <name>…
git remote [-v | --verbose] update [-p | --prune] [(<group> | <remote>)…] """,
      """
git remote [-v | --verbose]: Lists the existing remote repositories in the local repository. The -v or --verbose option provides additional information, such as the URLs of the remote repositories.

git remote add [-t <branch>] [-m <master>] [-f] [--[no-]tags] [--mirror=<fetch|push>] <name> <url>: Adds a new remote repository with the specified <name> and <url>. Optional flags like -t and -m can be used to specify the branch and master branch respectively. The -f option fetches the remote branches immediately. The --tags option includes tags in the fetch. The --mirror option specifies whether to fetch or push in a mirrored mode.

git remote rename <old> <new>: Renames an existing remote repository from <old> to <new>.

git remote remove <name>: Removes the specified remote repository from the local repository.

git remote set-head <name> (-a | --auto | -d | --delete | <branch>): Sets the default branch of the specified remote repository. The (-a|--auto) option automatically sets the remote's head to the current branch. The (-d|--delete) option removes the remote's head reference.

git remote set-branches [--add] <name> <branch>…: Sets the branches tracked by the specified remote repository. The --add option adds the specified branches to the remote repository.

git remote get-url [--push] [--all] <name>: Retrieves the URL of the specified remote repository. The --push option returns the push URL, and the --all option displays all URLs (fetch and push) associated with the remote repository.

git remote set-url [--push] <name> <newurl> [<oldurl>]: Changes the URL of the specified remote repository. The --push option specifies that the new URL is for pushing. Optionally, you can provide an <oldurl> to replace a specific URL.

git remote set-url --add [--push] <name> <newurl>: Adds a new URL to the specified remote repository. The --push option specifies that the new URL is for pushing.

git remote set-url --delete [--push] <name> <url>: Deletes a specific URL from the specified remote repository. The --push option specifies that the URL is for pushing.

git remote [-v | --verbose] show [-n] <name>…: Displays detailed information about the specified remote repositories. The -n option limits the number of branches shown.

git remote prune [-n | --dry-run] <name>…: Deletes remote-tracking branches that no longer exist on the specified remote repositories. The -n or --dry-run option shows which branches would be pruned without actually deleting them.

git remote [-v | --verbose] update [-p | --prune] [(<group> | <remote>)…]: Fetches updates from the specified remote repositories. The -p or --prune option prunes remote-tracking branches that no longer exist on the remote repositories.      
       """ ]];


  final List<List<dynamic>> data_1_29 = [
    ['git submodule', 'Initialize, update or inspect submodules',
      """git submodule [--quiet] [--cached]
git submodule [--quiet] add [<options>] [--] <repository> [<path>]
git submodule [--quiet] status [--cached] [--recursive] [--] [<path>…]
git submodule [--quiet] init [--] [<path>…]
git submodule [--quiet] deinit [-f|--force] (--all|[--] <path>…)
git submodule [--quiet] update [<options>] [--] [<path>…]
git submodule [--quiet] set-branch [<options>] [--] <path>
git submodule [--quiet] set-url [--] <path> <newurl>
git submodule [--quiet] summary [<options>] [--] [<path>…]
git submodule [--quiet] foreach [--recursive] <command>
git submodule [--quiet] sync [--recursive] [--] [<path>…]
git submodule [--quiet] absorbgitdirs [--] [<path>…]""",
      """
git submodule [--quiet] [--cached]: Displays the registered submodules within the repository. The --cached option shows cached submodule information.

git submodule [--quiet] add [<options>] [--] <repository> [<path>]: Adds a new submodule to the repository. The <repository> argument specifies the URL or path to the submodule repository, and <path> specifies the path where the submodule will be located within the repository. Additional options can be provided to customize the submodule behavior.

git submodule [--quiet] status [--cached] [--recursive] [--] [<path>…]: Displays the status of submodules. The --cached option shows cached submodule information, and --recursive option recursively shows the status of submodules within submodules.

git submodule [--quiet] init [--] [<path>…]: Initializes the submodules. The -- delimiter separates the <path> argument from the options.

git submodule [--quiet] deinit [-f|--force] (--all|[--] <path>…): Deinitializes the submodules. The --all option deinitializes all submodules, and -- delimiter separates the <path> argument from the options.

git submodule [--quiet] update [<options>] [--] [<path>…]: Updates the registered submodules to the latest commit. The <path> argument specifies the path to the submodule(s) to be updated, and additional options can be provided to customize the update behavior.

git submodule [--quiet] set-branch [<options>] [--] <path>: Changes the branch tracked by a submodule. The <path> argument specifies the path to the submodule, and additional options can be provided to customize the branch change.

git submodule [--quiet] set-url [--] <path> <newurl>: Changes the URL of a submodule. The <path> argument specifies the path to the submodule, and <newurl> specifies the new URL.

git submodule [--quiet] summary [<options>] [--] [<path>…]: Shows a summary of the submodule commits. The <path> argument specifies the path to the submodule(s) for which the summary is shown, and additional options can be provided to customize the summary output.

git submodule [--quiet] foreach [--recursive] <command>: Runs a shell command in each submodule. The --recursive option runs the command recursively in submodules within submodules.

git submodule [--quiet] sync [--recursive] [--] [<path>…]: Synchronizes submodule URLs and paths. The --recursive option synchronizes submodules within submodules.

git submodule [--quiet] absorbgitdirs [--] [<path>…]: Moves the content of the .git directory from the submodules to the main repository. The <path> argument specifies the path to the submodule(s) to be absorbed.
      
       """ ]];



  final List<List<dynamic>> data_1_30 = [
    ['git show', 'Show various types of object',
      """git show [<options>] [<object>…​]""",
      """
--abbrev-commit: Displays abbreviated commit hash instead of the full commit hash.
--stat: Shows the summary of changes, including the number of files changed and the number of insertions/deletions.
--patch or -p: Shows the actual changes made in each file.
--raw: Displays the raw content of the commit, including author, committer, and commit message.
--name-only: Shows only the names of the changed files.
--name-status: Shows the names and status (added, modified, deleted) of the changed files.
--oneline: Displays the commit information on a single line.
--graph: Displays the commit history as a text-based graph.
--decorate: Shows any tags or branch names that point to the displayed commits.
--show-signature: Displays the GPG signature, if the commit is signed.
--ignore-space-change: Ignores changes in whitespace when showing the differences.
--ignore-all-space: Ignores all whitespace changes when showing the differences.
--ignore-blank-lines: Ignores changes in blank lines when showing the differences.
--ignore-submodules[=<when>]: Ignores changes in submodules.
--color[=<when>]: Enables colored output.
--no-patch: Suppresses the patch output, showing only the commit information.
      """ ]];

  final List<List<dynamic>> data_1_31 = [
    ['git log', 'Show commits log',
      """git log [<options>] [<revision range>] [[--] <path>…]
      """,
      """
--oneline: Shows each commit on a single line, displaying only the abbreviated commit hash and the commit message.
--graph: Displays a text-based graph representing the commit history.
--decorate: Shows any tags or branch names that point to the displayed commits.
--stat: Shows the summary of changes for each commit, including the number of files changed and the number of insertions/deletions.
--patch or -p: Shows the actual changes made in each commit.
--author=<pattern>: Shows only the commits authored by the specified pattern.
--since=<date>: Shows only the commits since the specified date.
--until=<date>: Shows only the commits until the specified date.
--grep=<pattern>: Shows only the commits that contain the specified pattern in the commit message.
--follow: Continues listing the history for a file beyond renames.
-- <path>…: Limits the log output to the specified file(s) or directory path(s).
--no-merges: Excludes merge commits from the log.
--all: Shows all commits in the repository, including commits from all branches and tags.
--since=<date> --until=<date>: Shows only the commits between the specified date range.

      """ ]];


  final List<List<dynamic>> data_1_32 = [
    ['git difftool', 'Show changes using common diff tools',
      """git difftool [<options>] [<commit> [<commit>]] [--] [<path>…]
      """,
      """
--tool=<tool>: Specifies the diff tool to be used. The available tools depend on the configuration and installed tools on your system.
-y or --no-prompt: Automatically launches the diff tool without prompting for confirmation.
--dir-diff: Performs a directory diff instead of a file-based diff.
--tool-help: Displays the help message for the specified diff tool.
--ext-diff: Runs an external diff command specified in the diff.external configuration option.
--cached: Compares the changes in the staged area (index) instead of the working tree.
<commit> [<commit>]: Specifies the commits to compare. If one commit is provided, it compares that commit with the current working tree. If two commits are provided, it compares the changes between those two commits.
-- [<path>…]: Limits the diff to the specified file(s) or directory path(s).
      
      """ ]];


  final List<List<dynamic>> data_1_33 = [
    ['git range diff', 'Compare two commit ranges (e.g two versions of a branch)',
      """
git range-diff [--color=[<when>]] [--no-color] [<diff-options>]
	[--no-dual-color] [--creation-factor=<factor>]
	( <range1> <range2> | <rev1>…<rev2> | <base> <rev1> <rev2> )
       """,
      """--color=[<when>] or --no-color: Specifies whether to use colors in the output. The when value can be always, auto, or never.
<diff-options>: Additional options to be passed to the underlying diff command.
--no-dual-color: Disables dual-color mode, where the colors of added and removed lines are distinguished.
--creation-factor=<factor>: Specifies the factor by which the creation cost is multiplied. Higher values prioritize showing new code over deleted code.
<range1> <range2>: Specifies two commit ranges to compare. The commits in the second range are compared to the commits in the first range.
<rev1>…<rev2>: Specifies a set of revisions to compare. The commits from rev1 up to and including rev2 are compared.
<base> <rev1> <rev2>: Specifies a base commit and two revisions to compare. The differences between base and rev1 are compared to the differences between base and rev2. """ ]];

  final List<List<dynamic>> data_1_34 = [
    ['git shortlog', 'Summarize git log output',
      """git shortlog [<options>] [<revision range>] [[--] <path>…]
git log --pretty=short | git shortlog [<options>] """,
      """
git shortlog [<options>] [<revision range>] [[--] <path>…]:

<options>: Additional options to customize the output. Some common options include:
-n or --numbered: Prepend a count of the number of commits to each author's entry.
-s or --summary: Show only the number of commits and the author's name.
-e or --email: Include the authors' email addresses in the output.
<revision range>: Specifies the range of commits to include in the shortlog. For example, master..feature will show the shortlog of commits in the "feature" branch that are not in the "master" branch.
-- <path>…: Limits the shortlog to the specified file paths.
git log --pretty=short | git shortlog [<options>]:
This command combines the git log and git shortlog commands to show a shortlog of the commit history. It first generates a log using git log with a short format, and then pipes the output to git shortlog to summarize the commits. You can still use the same <options> described above to customize the output.
       """ ]];

  final List<List<dynamic>> data_1_35 = [
    ['git describe', 'Give an object human readable name based on an available reference',
      """
git describe [--all] [--tags] [--contains] [--abbrev=<n>] [<commit-ish>…]
git describe [--all] [--tags] [--contains] [--abbrev=<n>] --dirty[=<mark>]
git describe <blob>
      """,
      """git describe [--all] [--tags] [--contains] [--abbrev=<n>] [<commit-ish>…]:

--all: Shows all tags in the repository, not just the most recent one.
--tags: Only considers annotated tags when searching for the nearest tag.
--contains: Restricts the search to tags that contain the specified commit(s).
--abbrev=<n>: Specifies the minimum number of alphanumeric characters to include in the abbreviated commit name.
<commit-ish>…: Specifies the commit(s) to describe. It can be a commit hash, branch name, or any other valid commit identifier.
git describe [--all] [--tags] [--contains] [--abbrev=<n>] --dirty[=<mark>]:
This variation of the git describe command includes the --dirty option to handle the case when the current working directory has uncommitted changes.

--dirty[=<mark>]: Adds the specified <mark> (or "dirty" if not provided) to the description if the working directory has modifications.
git describe <blob>:
This form of the command is used to describe a specific blob (file) instead of a commit. It can be useful for identifying and describing individual file versions in a repository.
      
      """ ]];

  final List<List<dynamic>> data_1_36 = [
    ['git apply', 'Apply a patch to files and or to the index',
      """git apply [--stat] [--numstat] [--summary] [--check] [--index | --intent-to-add] [--3way]
	  [--apply] [--no-add] [--build-fake-ancestor=<file>] [-R | --reverse]
	  [--allow-binary-replacement | --binary] [--reject] [-z]
	  [-p<n>] [-C<n>] [--inaccurate-eof] [--recount] [--cached]
	  [--ignore-space-change | --ignore-whitespace]
	  [--whitespace=(nowarn|warn|fix|error|error-all)]
	  [--exclude=<path>] [--include=<path>] [--directory=<root>]
	  [--verbose] [--unsafe-paths] [<patch>…] """, """--stat: Shows a summary of the changes made by the patch.
--numstat: Shows the number of added and deleted lines in the patch.
--summary: Shows a summary of the changes made by the patch, similar to --stat.
--check: Checks if the patch can be applied cleanly without actually applying it.
--index: Applies the patch to the index (staging area).
--intent-to-add: Applies the patch as if the files are added to the index (for new files).
--3way: Uses a three-way merge strategy when applying the patch, resolving conflicts if necessary.
--apply: Applies the patch to both the working directory and the index.
--no-add: Applies the patch to the working directory without adding the changes to the index.
--build-fake-ancestor=<file>: Specifies a fake common ancestor file for use in a three-way merge.
-R or --reverse: Reverses the patch, effectively undoing the changes.
--allow-binary-replacement or --binary: Allows binary files to be modified by the patch.
--reject: Creates .rej files for conflicts that cannot be automatically resolved.
-z: Treats the input patches as a single patch in zero-terminated format.
-p<n>: Removes <n> leading components from file names in the patch.
-C<n>: Adjusts the pathname in the patch by <n> directories.
--inaccurate-eof: Applies the patch even if it looks like it is at the end of the file.
--recount: Forces Git to recount the number of lines in the patch.
--cached: Applies the patch only to the index, without modifying the working directory.
--ignore-space-change or --ignore-whitespace: Ignores changes in whitespace when applying the patch.
--whitespace=(nowarn|warn|fix|error|error-all): Configures how Git handles whitespace errors.
--exclude=<path>: Excludes files matching the specified path pattern from being patched.
--include=<path>: Includes files matching the specified path pattern for patching.
--directory=<root>: Changes to the specified root directory before applying the patch.
--verbose: Prints detailed information about the patch application process.
--unsafe-paths: Allows unsafe paths to be used when applying the patch. """ ]];

  final List<List<dynamic>> data_1_37 = [
    ['git cherry pick', 'Apply the changes introduced by some existing commands',
      """git cherry-pick [--edit] [-n] [-m parent-number] [-s] [-x] [--ff]
		  [-S[<keyid>]] <commit>…
git cherry-pick (--continue | --skip | --abort | --quit) """, """--edit: Opens the commit message editor before finalizing the cherry-pick, allowing you to modify the commit message.
-n: Performs the cherry-pick without automatically creating a new commit. This allows you to make further changes before committing.
-m parent-number: Specifies the parent number when cherry-picking a merge commit. The parent number indicates which side of the merge you want to pick.
-s: Adds a "Signed-off-by" line to the commit message, certifying that you have the right to submit the changes.
-x: Adds a "Signed-off-by" line to the commit message, similar to -s, and also adds a line containing the commit's original author and commit date.
--ff: Only performs the cherry-pick if it can be applied as a fast-forward. If not, the cherry-pick operation will be aborted.
The git cherry-pick command takes one or more commit identifiers as arguments. These can be commit hashes, branch names, or other references to commits.

After running git cherry-pick, you may encounter conflicts if the changes in the selected commits conflict with the changes in your current branch. You will need to resolve these conflicts manually before completing the cherry-pick.

The git cherry-pick command also supports a set of actions to continue, skip, abort, or quit the cherry-pick process:

--continue: Continues the cherry-pick process after resolving conflicts or making changes.
--skip: Skips the current commit and moves on to the next one.
--abort: Aborts the cherry-pick operation, reverting any changes made.
--quit: Quits the cherry-pick operation without reverting any changes, allowing you to manually resolve conflicts or make further modifications.
 """ ]];

  final List<List<dynamic>> data_1_38 = [
    ['git rebase', 'Show changes using common diff tools',
      """git rebase [-i | --interactive] [<options>] [--exec <cmd>]
	[--onto <newbase> | --keep-base] [<upstream> [<branch>]]
git rebase [-i | --interactive] [<options>] [--exec <cmd>] [--onto <newbase>]
	--root [<branch>]
git rebase (--continue | --skip | --abort | --quit | --edit-todo | --show-current-patch) """, """-i or --interactive: Performs an interactive rebase, allowing you to specify how commits should be modified or combined interactively.
<options>: Additional options for the rebase operation, such as --preserve-merges to preserve merge commits during the rebase process.
--exec <cmd>: Executes a shell command after each commit is applied during the rebase.
--onto <newbase>: Specifies the new base branch or commit where the rebased commits should be placed.
--keep-base: Keeps the original base branch intact while rebasing, creating a new branch with the rebased commits.
<upstream>: The branch or commit to rebase onto. The commits from the current branch will be applied on top of the <upstream>.
<branch>: The branch to be rebased. If not specified, the current branch is assumed.
--root: Rebase all commits starting from the root commit of the repository.
--continue: Continues the rebase operation after resolving conflicts or making changes.
--skip: Skips the current commit and moves on to the next one.
--abort: Aborts the rebase operation, reverting any changes made during the process.
--quit: Quits the rebase operation without reverting any changes, allowing you to manually resolve conflicts or make further modifications.
--edit-todo: Edits the rebase todo list, allowing you to modify the rebase actions before continuing.
--show-current-patch: Displays the current patch being applied during an interactive rebase.
 """ ]];

  final List<List<dynamic>> data_1_39 = [
    ['git revert', 'Revert some existing commits',
      """git revert [--[no-]edit] [-n] [-m parent-number] [-s] [-S[<keyid>]] <commit>…
git revert (--continue | --skip | --abort | --quit) """, """--[no-]edit: Specifies whether to open the commit message editor to modify the revert commit message. By default, the editor is opened unless --no-edit is provided.
-n: Performs a "non-commit" revert, which applies the changes to the working directory and index but does not create a new commit.
-m parent-number: Specifies the mainline parent when reverting a merge commit. The parent-number indicates which parent's changes should be reverted.
-s: Adds a "Signed-off-by" line to the commit message of the revert commit.
-S[<keyid>]: Performs a GPG-signed revert, using the specified GPG key. If <keyid> is not provided, the default key is used.
<commit>…: Specifies the commit(s) to revert. Multiple commits can be specified using a range, such as <commit1>..<commit2>, or individually separated by spaces.
The actions used with the git revert command are:

--continue: Continues the revert operation after resolving conflicts or making changes.
--skip: Skips the current commit and moves on to the next one.
--abort: Aborts the revert operation, reverting any changes made during the process.
--quit: Quits the revert operation without reverting any changes, allowing you to manually resolve conflicts or make further modifications.
 """ ]];

  final List<List<dynamic>> data_1_40 = [
    ['git bisect', 'Use binary search to find the commit that introduced a bug',
      """git bisect <subcommand> <options> """,
      """start: Starts the binary search process by specifying the range of commits to be tested.
bad: Marks the current commit as "bad" (i.e., the commit that exhibits the bug).
good: Marks the current commit as "good" (i.e., the commit that does not exhibit the bug).
skip: Skips the current commit in the binary search process.
reset: Ends the binary search and returns the repository to its original state.
visualize: Shows a visualization of the binary search process.
log: Shows the commit history and the results of the binary search.
--no-checkout: Skips automatically checking out commits, allowing you to test them manually.
--start-branch <branch>: Creates a new branch to isolate the bisect process.
--term-old <command>: Specifies a custom command to determine if an old commit is bad.
--term-new <command>: Specifies a custom command to determine if a new commit is good.
 """ ]];

  final List<List<dynamic>> data_1_41 = [
    ['git blame', 'Show what revision and author last modified each line of a file',
      """git blame [-c] [-b] [-l] [--root] [-t] [-f] [-n] [-s] [-e] [-p] [-w] [--incremental]
	    [-L <range>] [-S <revs-file>] [-M] [-C] [-C] [-C] [--since=<date>]
	    [--ignore-rev <rev>] [--ignore-revs-file <file>]
	    [--progress] [--abbrev=<n>] [<rev> | --contents <file> | --reverse <rev>..<rev>]
	    [--] <file> """, """-c: Shows the commit information in short format.
-b: Blames only the latest copy of a line that has been modified multiple times.
-l: Shows long commit SHA-1 hashes instead of abbreviations.
--root: Starts the blame from the root commit.
-t: Shows the raw timestamp instead of the relative date.
-f: Shows the filename instead of the path.
-n: Shows the line number at the beginning of each line.
-s: Suppresses author name and timestamp information.
-e: Shows email addresses instead of author names.
-p: Shows the patch for each line, including the surrounding context.
-w: Ignores whitespace changes when attributing lines. """ ]];

  final List<List<dynamic>> data_1_42 = [
    ['git grep', 'RPrint line matching a pattern',
      """git grep [-a | --text] [-I] [--textconv] [-i | --ignore-case] [-w | --word-regexp]
	   [-v | --invert-match] [-h|-H] [--full-name]
	   [-E | --extended-regexp] [-G | --basic-regexp]
	   [-P | --perl-regexp]
	   [-F | --fixed-strings] [-n | --line-number] [--column]
	   [-l | --files-with-matches] [-L | --files-without-match]
	   [(-O | --open-files-in-pager) [<pager>]]
	   [-z | --null]
	   [ -o | --only-matching ] [-c | --count] [--all-match] [-q | --quiet]
	   [--max-depth <depth>] [--[no-]recursive]
	   [--color[=<when>] | --no-color]
	   [--break] [--heading] [-p | --show-function]
	   [-A <post-context>] [-B <pre-context>] [-C <context>]
	   [-W | --function-context]
	   [--threads <num>]
	   [-f <file>] [-e] <pattern>
	   [--and|--or|--not|(|)|-e <pattern>…]
	   [--recurse-submodules] [--parent-basename <basename>]
	   [ [--[no-]exclude-standard] [--cached | --no-index | --untracked] | <tree>…]
	   [--] [<pathspec>…] """,
      """
-a or --text: Treat binary files as text.
-I: Exclude binary files from the search.
--textconv: Apply text conversion filters.
-i or --ignore-case: Perform a case-insensitive search.
-w or --word-regexp: Match whole words only.
-v or --invert-match: Invert the match, showing lines that do not match the pattern.
-h or -H: Display file names (default) or omit file names in the output.
--full-name: Show the full path name of matched files.
-E or --extended-regexp: Use extended regular expressions.
-G or --basic-regexp: Use basic regular expressions.
-P or --perl-regexp: Use Perl-compatible regular expressions.
-F or --fixed-strings: Treat the pattern as a fixed string rather than a regular expression.
-n or --line-number: Show line numbers.
--column: Show column numbers.
-l or --files-with-matches: Only display the names of files with matches.
-L or --files-without-match: Only display the names of files without matches.
--break: Print an empty line between matches.
--heading: Print a file name heading before each file's matches.
-p or --show-function: Show the surrounding function context of each match.
-A <post-context>: Show <post-context> lines of trailing context after each match.
-B <pre-context>: Show <pre-context> lines of leading context before each match.
-C <context>: Show <context> lines of leading and trailing context around each match.
-W or --function-context: Show the enclosing function context of each match.
--threads <num>: Use multiple threads to speed up the search.
-f <file>: Read patterns from a file.
-e: Use multiple patterns.
--and, --or, --not: Combine patterns using logical operators.
--recurse-submodules: Recurse into submodules.
	    """ ]];

  final List<List<dynamic>> data_1_43 = [
    ['gitattributes', 'Defining attributes per patch',
      """\$GIT_DIR/info/attributes, .gitattributes """,
      """.gitattributes: This file is typically placed in the root directory of a Git repository, and it applies attributes to the entire repository or specific paths. It allows you to configure how Git should handle specific files or paths based on patterns. You can define attributes such as text/binary attributes, line-ending conversion, merge strategies, and more. The .gitattributes file is usually committed and shared with the repository.

\$GIT_DIR/info/attributes: This file is an alternative to the .gitattributes file. It resides in the Git repository's metadata directory (\$GIT_DIR). The attributes defined in this file are specific to the local repository and are not shared when the repository is cloned or pushed. It can be used to override or supplement the attributes defined in the .gitattributes file for a specific repository without affecting other users. """ ]];

  final List<List<dynamic>> data_1_44 = [
    ['git am', 'Apply a series of patches from a mailbox',
      """git am [--signoff] [--keep] [--[no-]keep-cr] [--[no-]utf8]
	 [--[no-]3way] [--interactive] [--committer-date-is-author-date]
	 [--ignore-date] [--ignore-space-change | --ignore-whitespace]
	 [--whitespace=<option>] [-C<n>] [-p<n>] [--directory=<dir>]
	 [--exclude=<path>] [--include=<path>] [--reject] [-q | --quiet]
	 [--[no-]scissors] [-S[<keyid>]] [--patch-format=<format>]
	 [(<mbox> | <Maildir>)…]
git am (--continue | --skip | --abort | --quit | --show-current-patch[=(diff|raw)]) """, """--signoff: Adds a "Signed-off-by" line at the end of the commit message, indicating that the author has approved the patch.
--keep: Keeps the original email message files after applying the patches.
--[no-]keep-cr: Keeps or discards carriage return characters from the patches.
--[no-]utf8: Enables or disables the assumption that patches are in UTF-8 encoding.
--[no-]3way: Enables or disables three-way merge when applying patches.
--interactive: Allows interactive editing of patches during the applying process.
--ignore-space-change or --ignore-whitespace: Ignores changes in whitespace when applying patches.
--whitespace=<option>: Configures whitespace handling options for patch application.
-C<n>: Adjusts the number of lines of context to search for matching changes.
-p<n>: Removes the specified number of leading path components from filenames in the patch.
--directory=<dir>: Changes the working directory to <dir> before applying patches.
--exclude=<path>: Specifies a path to be excluded from patch application.
--include=<path>: Specifies a path to be included for patch application.
--reject: Saves rejected hunks of patch application to .rej files.
-q or --quiet: Suppresses output during the patch application process.
--[no-]scissors: Enables or disables cutting email headers before applying patches.
-S[<keyid>]: Adds a Signed-off-by line using the specified GPG key.
--patch-format=<format>: Specifies the format of patches (e.g., mbox, stgit). """ ]];

  final List<List<dynamic>> data_1_45 = [
    ['git format patch', 'Prepare patches for e-mail submission',
      """git format-patch [-k] [(-o|--output-directory) <dir> | --stdout]
		   [--no-thread | --thread[=<style>]]
		   [(--attach|--inline)[=<boundary>] | --no-attach]
		   [-s | --signoff]
		   [--signature=<signature> | --no-signature]
		   [--signature-file=<file>]
		   [-n | --numbered | -N | --no-numbered]
		   [--start-number <n>] [--numbered-files]
		   [--in-reply-to=<message id>] [--suffix=.<sfx>]
		   [--ignore-if-in-upstream]
		   [--cover-from-description=<mode>]
		   [--rfc] [--subject-prefix=<subject prefix>]
		   [(--reroll-count|-v) <n>]
		   [--to=<email>] [--cc=<email>]
		   [--[no-]cover-letter] [--quiet]
		   [--[no-]encode-email-headers]
		   [--no-notes | --notes[=<ref>]]
		   [--interdiff=<previous>]
		   [--range-diff=<previous> [--creation-factor=<percent>]]
		   [--progress]
		   [<common diff options>]
		   [ <since> | <revision range> ] """, """-k: Keeps empty patches instead of skipping them.
(-o|--output-directory) <dir> or --stdout: Specifies the output directory for generated patch files or prints the patches to the standard output.
--no-thread or --thread[=<style>]: Disables or enables threading of patches.
(--attach|--inline)[=<boundary>] or --no-attach: Specifies whether to attach or inline patches in the email.
-s or --signoff: Adds a "Signed-off-by" line at the end of each patch.
--signature=<signature> or --no-signature: Adds a signature line or disables signature lines in patches.
--signature-file=<file>: Adds a signature from the specified file to each patch.
-n or --numbered or -N or --no-numbered: Adds or removes patch numbers from the file names.
--start-number <n>: Sets the starting patch number.
--numbered-files: Uses numbered file names for patches.
--in-reply-to=<message id>: Adds the specified message ID as the "In-Reply-To" header.
--suffix=.<sfx>: Appends the specified suffix to the patch file names.
--ignore-if-in-upstream: Skips commits that are already in the upstream branch.
--cover-from-description=<mode>: Generates a cover letter based on the commit descriptions.
--rfc: Formats the email according to RFC standards.
--subject-prefix=<subject prefix>: Adds the specified prefix to the subject line of each email.
(--reroll-count|-v) <n>: Sets the reroll count for patches.
--to=<email> or --cc=<email>: Specifies the email recipients in the "To" or "Cc" fields.
--[no-]cover-letter: Includes or excludes a cover letter in the email.
--quiet: Suppresses output during patch generation.
--[no-]encode-email-headers: Encodes or does not encode email headers in patches.
--no-notes or --notes[=<ref>]: Excludes """ ]];

  final List<List<dynamic>> data_1_46 = [
    ['git send email', 'Send a collection of patches as emails',
      """git send-email [<options>] <file|directory|rev-list options>…
git send-email --dump-aliases """, """--cc=<email>: Specifies additional recipients to include in the "Cc" field of the email.
--to=<email>: Specifies the primary recipient to include in the "To" field of the email.
--subject=<subject>: Specifies the subject line of the email.
--from=<name>: Specifies the sender's name to include in the "From" field of the email.
--smtp-server=<server>: Specifies the SMTP server to use for sending the email.
--smtp-server-port=<port>: Specifies the port number for the SMTP server.
--smtp-encryption: Specifies the encryption method to use for the SMTP server.
--smtp-auth-user=<username>: Specifies the username for SMTP server authentication.
--smtp-auth-password=<password>: Specifies the password for SMTP server authentication.
--in-reply-to=<message id>: Specifies the message ID to use as the "In-Reply-To" header.
--cc-cmd=<command>: Specifies a command to generate the "Cc" recipients dynamically.
--dry-run: Performs a dry run without actually sending the email.
--annotate: Includes annotation lines with extra information in the email body.
--thread: Enables threading of patches based on the "Message-ID" and "In-Reply-To" headers.
--no-thread: Disables threading of patches.
--confirm: Asks for confirmation before actually sending the email.
--quiet: Suppresses output during email sending. """ ]];

  final List<List<dynamic>> data_1_47 = [
    ['git request pull', 'Generates a summary of pending changes',
      """git request-pull [-p] <start> <url> [<end>] """, """-p (or --preamble): Includes a brief description of the branch and its purpose in the pull request message.
<start>: Specifies the starting commit or branch for the range of changes you want to submit.
<url>: Specifies the URL of the repository where the changes should be pulled from.
<end> (optional): Specifies the ending commit or branch for the range of changes. If omitted, the current branch is assumed. """ ]];

  final List<List<dynamic>> data_1_48 = [
    ['git svn', 'Bidirectional operation between a subversion repository and git',
      """git svn <command> [<options>] [<arguments>] """, """clone: Clone an SVN repository and initialize a Git repository that tracks the SVN history.
fetch: Fetch new changes from the SVN repository and update the Git repository.
rebase: Rebase the Git branch on top of the latest changes from the SVN repository.
dcommit: Commit Git changes to the SVN repository.
branch: List, create, or delete Git branches that correspond to SVN branches.
tag: List or create Git tags that correspond to SVN tags.
info: Show information about the SVN repository.
log: Show the SVN commit history.
blame: Show SVN blame annotations.
 """ ]];

  final List<List<dynamic>> data_1_49 = [
    ['git fast import', 'Backend for fast git data importers',
      """frontend | git fast-import [<options>] """, """--quiet: Suppresses progress information and only displays errors.
--force: Forces the import to overwrite existing branches and tags if necessary.
--signed-tags=mode: Specifies how signed tags are handled during import. The mode can be strip (remove signatures), verbatim (keep signatures), or warn (keep signatures but emit a warning).
--dry-run: Performs a dry run without actually applying the changes to the repository. Useful for testing and inspecting the import process. """ ]];

  final List<List<dynamic>> data_1_50 = [
    ['git clean', 'Remove untracked files from the working tree',
      """git clean [-d] [-f] [-i] [-n] [-q] [-e <pattern>] [-x | -X] [--] <path>… """, """-d: Remove untracked directories in addition to files.
-f: Force the clean operation without prompting for confirmation.
-i: Interactive mode. Show a prompt for each untracked file or directory and ask for confirmation before cleaning.
-n: Dry run. Show what would be cleaned without actually deleting any files.
-q: Quiet mode. Suppress output, except for errors.
-e <pattern>: Exclude files or directories matching the specified pattern from cleaning.
-x: Remove ignored files as well.
-X: Remove only ignored files, not untracked files.
 """ ]];

  final List<List<dynamic>> data_1_51 = [
    ['git gc', 'Cleanup unnecessary files and optimize the local repository',
      """git gc [--aggressive] [--auto] [--quiet] [--prune=<date> | --no-prune] [--force] [--keep-largest-pack] """, """--aggressive: Perform aggressive garbage collection, which may take longer but can result in better compression of the repository.
--auto: Enable automatic garbage collection. Git will determine when to run garbage collection based on certain criteria.
--quiet: Run in quiet mode. Suppress unnecessary output.
--prune=<date>: Prune objects older than the specified date. Only objects that are not reachable from any references will be pruned.
--no-prune: Disable automatic pruning. By default, Git automatically prunes unreachable objects during garbage collection.
--force: Force garbage collection even if it appears unnecessary.
--keep-largest-pack: Keep the largest pack file instead of the most recently modified one. """ ]];

  final List<List<dynamic>> data_1_52 = [
    ['git fsck', 'Verifies the connectivity and validity of the objects in the database',
      """git fsck [--tags] [--root] [--unreachable] [--cache] [--no-reflogs]
	 [--[no-]full] [--strict] [--verbose] [--lost-found]
	 [--[no-]dangling] [--[no-]progress] [--connectivity-only]
	 [--[no-]name-objects] [<object>*] """, """--tags: Include tags in the check. By default, only non-tag objects are checked.
--root: Verify the connectivity of the root commit.
--unreachable: Show unreachable objects in the output.
--cache: Check the integrity of the Git object cache.
--no-reflogs: Exclude reflog references from the check.
--[no-]full: Perform a full check of all objects in the repository. By default, only reachable objects are checked.
--strict: Enable strict checking. This includes additional checks for potential issues.
--verbose: Provide detailed output during the check.
--lost-found: Recover objects that are unreachable but still stored in the repository.
--[no-]dangling: Show dangling objects in the output.
--[no-]progress: Show progress information during the check.
--connectivity-only: Check only the connectivity of objects, without verifying their contents.
--[no-]name-objects: Show the names of objects in the output. """ ]];

  final List<List<dynamic>> data_1_53 = [
    ['git reflog', 'Manage reflog information',
      """git reflog <subcommand> <options> """, """git reflog show [<ref>]: Displays the reflog entries for the specified reference. If no reference is provided, it shows the reflog for the current branch.

--date=<format>: Specifies the date format for displaying reflog entries.
git reflog expire [<options>] [<ref>]: Removes old reflog entries that are no longer necessary.

--expire-unreachable=<time>: Specifies the time duration after which unreachable reflog entries should be removed.
--expire=<time>: Specifies the time duration after which reflog entries should be removed.
git reflog delete [<options>] <ref>: Deletes reflog entries for the specified reference.

--rewrite: Rewrites the reflog after deleting the entries.
git reflog exists <ref>: Checks if the reflog exists for the specified reference.

git reflog expire --all: Removes all reflog entries.

git reflog inspect <ref>: Displays detailed information about the reflog for the specified reference. """ ]];


  final List<List<dynamic>> data_1_54 = [
    ['git instaweb', 'Instantly browse your working repository in gitweb',
      """git instaweb [--local] [--httpd=<httpd>] [--port=<port>]
               [--browser=<browser>]
git instaweb [--start] [--stop] [--restart] """, """git instaweb --local: Configures the web interface to be accessible only on the local machine. By default, it listens on all available network interfaces.

git instaweb --httpd=<httpd>: Specifies the HTTP server to use. The default is determined based on the system configuration.

git instaweb --port=<port>: Specifies the port number to use for the web server. The default is 8888.

git instaweb --browser=<browser>: Specifies the browser command to use for opening the web interface. The default is determined based on the system configuration.

git instaweb --start: Starts the web server and opens the browser to view the repository.

git instaweb --stop: Stops the running web server.

git instaweb --restart: Restarts the web server. """ ]];


  final List<List<dynamic>> data_1_55 = [
    ['git filter branch', 'Rewrite branches',
      """git filter-branch [--setup <command>] [--subdirectory-filter <directory>]
	[--env-filter <command>] [--tree-filter <command>]
	[--index-filter <command>] [--parent-filter <command>]
	[--msg-filter <command>] [--commit-filter <command>]
	[--tag-name-filter <command>] [--prune-empty]
	[--original <namespace>] [-d <directory>] [-f | --force]
	[--state-branch <branch>] [--] [<rev-list options>…] """, """--setup <command>: Specifies a command to run before any filtering operations are performed. This can be used to set up any necessary environment or variables.

--subdirectory-filter <directory>: Only includes the history of the specified directory and its contents, discarding all other files and directories.

--env-filter <command>: Modifies the environment variables associated with each commit. The specified command is evaluated for each commit.

--tree-filter <command>: Applies the specified command to the tree of each commit. This allows you to make changes to the file content or directory structure.

--index-filter <command>: Similar to --tree-filter, but it operates directly on the Git index (staging area) rather than the working directory.

--parent-filter <command>: Changes the parent relationships of each commit. The specified command is evaluated to determine the new parent commits.

--msg-filter <command>: Modifies the commit messages. The specified command is evaluated for each commit.

--commit-filter <command>: Allows you to completely rewrite each commit. The specified command is evaluated for each commit to determine the new commit information.

--tag-name-filter <command>: Modifies the names of tags in the rewritten history. The specified command is evaluated for each tag.

--prune-empty: Removes any commits that become empty as a result of the filtering process.

--original <namespace>: Sets the namespace for backup refs before the filtering operation.

-d <directory>: Specifies the temporary directory to use during the filtering process.

-f | --force: Forces the operation to proceed even if it may lose some data.

--state-branch <branch>: Stores the state of original refs and original commit IDs in the specified branch.

--: Separates the git filter-branch options from the <rev-list options>, allowing you to pass additional revision selection options.

 """ ]];


  final List<List<dynamic>> data_1_56 = [
    ['git archive', 'Create an archive of files from a named tree',
      """git archive [--format=<fmt>] [--list] [--prefix=<prefix>/] [<extra>]
	      [-o <file> | --output=<file>] [--worktree-attributes]
	      [--remote=<repo> [--exec=<git-upload-archive>]] <tree-ish>
	      [<path>…] """, """--format=<fmt>: Specifies the format of the archive file. Supported formats include tar (tar), zip (zip), and tarball compressed with gzip (tgz or tar.gz).

--list: Lists the supported formats for archive files.

--prefix=<prefix>/: Adds a prefix to the filenames within the archive. This is useful for placing the files in a subdirectory when extracting the archive.

<extra>: Specifies additional files or directories to include in the archive. These can be specified after all the options.

-o <file> | --output=<file>: Specifies the output file name for the archive. If not provided, the archive is written to the standard output.

--worktree-attributes: Applies the .gitattributes filters to the files in the archive. This ensures that attributes like line endings are properly handled.

--remote=<repo>: Creates the archive from a remote repository specified by <repo>. This is useful when you want to create an archive of a remote repository without cloning it locally.

--exec=<git-upload-archive>: Specifies the command to use for transferring the archive when using the --remote option. The default command is git-upload-archive.

<tree-ish>: Specifies the tree or commit to include in the archive. This can be a branch name, tag name, commit hash, or any other valid tree-ish reference.

<path>…: Specifies specific files or directories within the tree-ish to include in the archive. If not specified, the entire tree is included. """ ]];

  final List<List<dynamic>> data_1_57 = [
    ['git bundle', 'Move objects and refs by archive',
      """git bundle create [-q | --quiet | --progress | --all-progress] [--all-progress-implied] <file> <git-rev-list-args>
git bundle verify [-q | --quiet] <file>
git bundle list-heads <file> [<refname>…]
git bundle unbundle <file> [<refname>…] """, """git bundle create [-q | --quiet | --progress | --all-progress] [--all-progress-implied] <file> <git-rev-list-args>:

Creates a Git bundle file with the specified name <file>.
<git-rev-list-args> specifies the revisions to include in the bundle, typically using git rev-list arguments like branch names, commit hashes, or ranges.
Options:
-q, --quiet: Suppresses unnecessary output.
--progress: Shows progress information during bundle creation.
--all-progress: Shows detailed progress information during bundle creation.
--all-progress-implied: Implies --all-progress when the output is not a terminal.
git bundle verify [-q | --quiet] <file>:

Verifies the integrity of a Git bundle file.
<file> is the path to the bundle file to verify.
Options:
-q, --quiet: Suppresses unnecessary output.
git bundle list-heads <file> [<refname>…]:

Lists the heads (branches and tags) in a Git bundle file.
<file> is the path to the bundle file.
<refname>… (optional) specifies specific references to list. If not provided, all heads are listed.
git bundle unbundle <file> [<refname>…]:

Extracts Git objects and references from a bundle file and adds them to the current repository.
<file> is the path to the bundle file to unbundle.
<refname>… (optional) specifies specific references to unbundle. If not provided, all references in the bundle file are extracted. """ ]];

  final List<List<dynamic>> data_1_58 = [
    ['git daemon', 'A really simple server for git repositories',
      """git daemon [--verbose] [--syslog] [--export-all]
	     [--timeout=<n>] [--init-timeout=<n>] [--max-connections=<n>]
	     [--strict-paths] [--base-path=<path>] [--base-path-relaxed]
	     [--user-path | --user-path=<path>]
	     [--interpolated-path=<pathtemplate>]
	     [--reuseaddr] [--detach] [--pid-file=<file>]
	     [--enable=<service>] [--disable=<service>]
	     [--allow-override=<service>] [--forbid-override=<service>]
	     [--access-hook=<path>] [--[no-]informative-errors]
	     [--inetd |
	      [--listen=<host_or_ipaddr>] [--port=<n>]
	      [--user=<user> [--group=<group>]]]
	     [--log-destination=(stderr|syslog|none)]
	     [<directory>…] """, """--verbose: Prints verbose output during the operation.
--syslog: Sends log output to the system logger instead of standard error.
--export-all: Exports all repositories in the specified directories for serving.
--timeout=<n>: Sets the timeout in seconds for a client connection.
--init-timeout=<n>: Sets the timeout in seconds for the initial connection handshake.
--max-connections=<n>: Limits the maximum number of concurrent connections.
--strict-paths: Restricts repository access to paths that are within the given directories.
--base-path=<path>: Sets the base path for serving repositories.
--base-path-relaxed: Allows serving repositories outside the base path.
--user-path or --user-path=<path>: Serves repositories based on the user's home directory or the specified path.
--interpolated-path=<pathtemplate>: Serves repositories using an interpolated path template.
--reuseaddr: Enables the reuse of the server address.
--detach: Detaches the server process from the terminal.
--pid-file=<file>: Writes the process ID to the specified file.
--enable=<service>: Enables the specified service (e.g., upload-pack, receive-pack).
--disable=<service>: Disables the specified service.
--allow-override=<service>: Allows the specified service to be overridden by individual repository configurations.
--forbid-override=<service>: Forbids the specified service from being overridden.
--access-hook=<path>: Runs the specified script as an access control hook.
--[no-]informative-errors: Controls whether informative error messages are displayed to clients.
--inetd: Runs the daemon as an inetd service.
--listen=<host_or_ipaddr>: Listens on the specified host or IP address.
--port=<n>: Listens on the specified port number.
--user=<user>: Runs the daemon under the specified user.
--group=<group>: Runs the daemon under the specified group.
--log-destination=(stderr|syslog|none): Specifies the destination for log output.
 """ ]];

  final List<List<dynamic>> data_1_59 = [
    ['git update server info', 'Update auxiliary info file to help dumb servers',
      """git update-server-info """, """The git update-server-info command is used to update the auxiliary files of a Git server. When you run this command in a Git repository that is being served by a Git server, it updates the info/refs and objects/info/packs files, which are used by the server to provide information about the available references (branches, tags) and pack files. """ ]];

  final List<List<dynamic>> data_1_60 = [
    ['git cat file', 'Provide content or type and size information for repository objects',
      """git cat-file (-t [--allow-unknown-type]| -s [--allow-unknown-type]| -e | -p | <type> | --textconv | --filters ) [--path=<path>] <object> """, """-t [--allow-unknown-type]: Shows the object type (blob, tree, commit, tag) of the specified object.
-s [--allow-unknown-type]: Shows the size of the specified object in bytes.
-e: Exits with a zero status if the specified object exists, or a non-zero status otherwise.
-p: Pretty-prints the content of the specified object.
<type>: Specifies the type of object to expect. This can be one of blob, tree, commit, or tag.
--textconv: Applies text conversions to the content of a blob object based on the textconv attribute in the repository's .gitattributes file.
--filters: Applies content filters to the content of a blob object based on the filter attribute in the repository's .gitattributes file.
--path=<path>: Specifies the path to the object within the repository. """ ]];

  final List<List<dynamic>> data_1_61 = [
    ['git check ignore', 'Debug gitignore / exclude files',
      """git check-ignore [<options>] <pathname>…
git check-ignore [<options>] --stdin """, """<pathname>…: Specifies the pathnames of the files or directories to check for ignore status.
--stdin: Reads pathnames from standard input instead of specifying them as command-line arguments. """ ]];

  final List<List<dynamic>> data_1_62 = [
    ['git checkout index', 'Copy files from the index to the working tree',
      """git checkout-index [-u] [-q] [-a] [-f] [-n] [--prefix=<string>]
		   [--stage=<number>|all]
		   [--temp]
		   [-z] [--stdin]
		   [--] [<file>…] """, """-u: Updates the files in the working directory with the latest versions from the index.
-q: Runs in quiet mode, suppressing normal output.
-a: Checks out all files in the index.
-f: Forces overwriting of existing files in the working directory.
-n: Prevents actually checking out the files, only shows what would be done.
--prefix=<string>: Specifies a prefix to prepend to the file paths when checking them out to an external location.
--stage=<number>|all: Specifies a specific stage or all stages of the index to check out.
--temp: Creates temporary files when checking out instead of directly writing to the working directory.
-z: Uses null bytes as the output field separator for paths. This is useful when working with filenames that may contain spaces or special characters.
--stdin: Reads a list of file paths from standard input instead of specifying them as command-line arguments.
--: Separates the options from the file paths, allowing file paths that start with a hyphen. """ ]];

  final List<List<dynamic>> data_1_63 = [
    ['git commit tree', 'Create a new commit objects',
      """git commit-tree <tree> [(-p <parent>)…]
git commit-tree [(-p <parent>)…] [-S[<keyid>]] [(-m <message>)…]
		  [(-F <file>)…] <tree> """, """git commit-tree <tree> [(-p <parent>)…]

This form creates a new commit object using the specified <tree> and optional parent commit(s) <parent>. The <tree> argument refers to the Git tree object that represents the state of the project you want to commit. The -p option can be used multiple times to specify one or more parent commits. This is useful when creating merge commits or specifying a parent for a new branch.

git commit-tree [(-p <parent>)…] [-S[<keyid>]] [(-m <message>)…] [(-F <file>)…] <tree>

This form allows you to specify additional options when creating the commit. Here are the available options:

-p <parent>: Specifies one or more parent commits for the new commit.
-S[<keyid>]: Signs the commit using GPG with the specified key. If no <keyid> is provided, it uses the default key configured in Git.
-m <message>: Specifies the commit message. Multiple -m options can be used to create a multi-line commit message.
-F <file>: Specifies a file containing the commit message. This is useful when the commit message is too long to be provided directly on the command line.
The <tree> argument represents the Git tree object that represents the state of the project you want to commit. """ ]];

  final List<List<dynamic>> data_1_64 = [
    ['git count objects', 'Count unpacked number of objects and their disk consumption',
      """git count-objects [-v] [-H | --human-readable] """, """-v: Enables verbose output, providing additional information about the repository's objects.
-H or --human-readable: Displays the output in a human-readable format, using units like kilobytes (KB) and megabytes (MB) for disk space. """ ]];

  final List<List<dynamic>> data_1_65 = [
    ['git diff index', 'Compare a tree to the working tree or index',
      """git diff-index [-m] [--cached] [<common diff options>] <tree-ish> [<path>…] """, """-m: This option enables the command to detect renames and copies. It can be useful when comparing different tree-ishs to track file movements.
--cached: This option compares the specified <tree-ish> with the contents of the index (staging area) rather than the working directory. It shows the differences between the staged changes and the given <tree-ish>.
<common diff options>: You can use any of the common diff options such as --color, --stat, --name-only, etc. These options modify the way the diff is displayed.
<tree-ish>: Specifies the tree-ish object to compare with. It can be a commit hash, branch name, tag name, or any other valid tree-ish reference.
<path>… (optional): Specifies the path(s) to limit the diff to. If provided, the command shows the differences only for the specified path(s). If not specified, the diff includes all paths in the specified <tree-ish>.
 """ ]];

  final List<List<dynamic>> data_1_66 = [
    ['git for each ref', 'Output information on each ref',
      """git for-each-ref [--count=<count>] [--shell|--perl|--python|--tcl]
		   [(--sort=<key>)…] [--format=<format>] [<pattern>…]
		   [--points-at=<object>]
		   (--merged[=<object>] | --no-merged[=<object>])
		   [--contains[=<object>]] [--no-contains[=<object>]] """, """--count=<count>: Limits the number of displayed references to the specified <count>.
--shell, --perl, --python, --tcl: Specifies the output format as shell, Perl, Python, or Tcl, respectively. These options are used to integrate the output into scripts.
--sort=<key>: Sorts the references based on the specified <key>. Multiple --sort options can be provided for multi-level sorting. Some available sort keys are refname (sort by ref name), authordate (sort by author date), committerdate (sort by committer date), etc.
--format=<format>: Specifies the output format using a format string. You can customize the output by including placeholders that represent reference attributes. For example, %D represents the ref's display name, %H represents the ref's object ID, %ai represents the author date in ISO 8601 format, etc.
<pattern>…: Specifies the pattern to filter the references. Only the references that match the pattern will be included in the output. Wildcards like * and ? can be used.
--points-at=<object>: Filters the references to only those that point to the specified <object>.
--merged[=<object>]: Filters the references to only those that are merged with the specified <object>.
--no-merged[=<object>]: Filters the references to only those that are not merged with the specified <object>.
--contains[=<object>]: Filters the references to only those that contain the specified <object>.
--no-contains[=<object>]: Filters the references to only those that do not contain the specified <object>. """ ]];

  final List<List<dynamic>> data_1_67 = [
    ['git hash object', 'Compute object ID and optionally creates a blob from a file',
      """git hash-object [-t <type>] [-w] [--path=<file>|--no-filters] [--stdin [--literally]] [--] <file>…
git hash-object [-t <type>] [-w] --stdin-paths [--no-filters] """, """git hash-object [-t <type>] [-w] [--path=<file>|--no-filters] [--stdin [--literally]] [--] <file>…

This form calculates the hash for the specified <file> or multiple files. It can also accept data from standard input. The options for this form are as follows:

-t <type>: Specifies the type of object to hash. The default type is "blob" for regular files.
-w: Writes the object into the object database. It creates a new blob object in the repository with the contents of the file.
--path=<file>: Records the specified <file> as the path of the object in the repository.
--no-filters: Prevents the object from going through any filters configured in Git attributes.
--stdin: Reads data from standard input instead of files.
--literally: When used with --stdin, treats the input literally without interpreting escape sequences.
git hash-object [-t <type>] [-w] --stdin-paths [--no-filters]

This form calculates the hash for data provided via standard input, considering each line as a file path. The options for this form are similar to the first form, except it doesn't accept file arguments. It is useful when you want to hash multiple files specified via standard input. """ ]];

  final List<List<dynamic>> data_1_68 = [
    ['git ls file', 'Show information about files in the index and the working tree',
      """git ls-files [-z] [-t] [-v] [-f]
		(--[cached|deleted|others|ignored|stage|unmerged|killed|modified])*
		(-[c|d|o|i|s|u|k|m])*
		[--eol]
		[-x <pattern>|--exclude=<pattern>]
		[-X <file>|--exclude-from=<file>]
		[--exclude-per-directory=<file>]
		[--exclude-standard]
		[--error-unmatch] [--with-tree=<tree-ish>]
		[--full-name] [--recurse-submodules]
		[--abbrev] [--] [<file>…] """, """-z: Uses a null character as the separator instead of a newline, allowing for parsing of file names with spaces or special characters.
-t: Shows the object type of each file (e.g., "blob" for regular files).
-v: Shows the hash object name (SHA-1) of each file.
-f: Displays the file name with a relative path from the repository's root.
--[cached|deleted|others|ignored|stage|unmerged|killed|modified]: Filters the output based on the specified file status. Multiple status options can be provided. For example, --cached shows only files that are staged in the index, --deleted shows only deleted files, --modified shows only modified files, etc.
-[c|d|o|i|s|u|k|m]: Short forms of file status filters. For example, -c is equivalent to --cached, -d is equivalent to --deleted, and so on.
--eol: Shows the line-ending conversion status for each file.
-x <pattern> or --exclude=<pattern>: Excludes files that match the specified <pattern>. Wildcards like * and ? can be used.
-X <file> or --exclude-from=<file>: Specifies a file containing patterns to exclude files from the listing.
--exclude-per-directory=<file>: Specifies a file containing patterns to exclude files for each directory.
--exclude-standard: Excludes files based on Git's standard exclusion patterns (specified in .gitignore, .git/info/exclude, etc.).
--error-unmatch: Exits with a non-zero status if no files match the given criteria.
--with-tree=<tree-ish>: Shows only files that are in the specified <tree-ish>. It filters the files based on a specific commit, branch, or tag.
--full-name: Displays the file names with the full path.
--recurse-submodules: Recursively lists files in submodules.
--abbrev: Shows abbreviated object names (partial SHA-1) instead of the full 40-character SHA-1. """ ]];

  final List<List<dynamic>> data_1_69 = [
    ['git ls tree', 'List the contents of a tree object',
      """git ls-tree [-d] [-r] [-t] [-l] [-z]
	    [--name-only] [--name-status] [--full-name] [--full-tree] [--abbrev[=<n>]]
	    <tree-ish> [<path>…] """, """-d: Shows only directories in the tree.
-r: Recursively lists the contents of directories.
-t: Shows the object type for each entry in the tree.
-l: Shows the object size in bytes.
-z: Uses a null character as the separator instead of a newline, allowing for parsing of names with spaces or special characters.
--name-only: Shows only the names of the entries in the tree.
--name-status: Shows the names and status of the entries in the tree. It indicates whether an entry is modified, added, or deleted.
--full-name: Displays the full path of the entries in the tree.
--full-tree: Shows the entire contents of the tree, including subdirectories and their contents.
--abbrev[=<n>]: Uses abbreviated object names (partial SHA-1) instead of the full 40-character SHA-1. Optionally, <n> can be provided to specify the number of characters to abbreviate.
<tree-ish>: Specifies the tree object to list. It can be a commit hash, branch name, tag name, or any other valid tree-ish reference.
<path>… (optional): Specifies the path(s) to limit the output to. If provided, the command shows the contents only for the specified path(s) within the tree. """ ]];

  final List<List<dynamic>> data_1_70 = [
    ['git merge base', 'Find as good common ancestors as possible for a merge',
      """git merge-base [-a|--all] <commit> <commit>…
git merge-base [-a|--all] --octopus <commit>…
git merge-base --is-ancestor <commit> <commit>
git merge-base --independent <commit>…
git merge-base --fork-point <ref> [<commit>] """, """git merge-base [-a|--all] <commit> <commit>…
This form finds the most recent common ancestor between two or more commits. The options are as follows:

-a or --all: Finds all common ancestors instead of just one. The output will include all the common ancestor commits.
git merge-base [-a|--all] --octopus <commit>…
This form is similar to the first form but is used specifically for octopus merges, which involve merging more than two branches.

git merge-base --is-ancestor <commit> <commit>
This form checks if the first commit is an ancestor of the second commit. It exits with a zero status if the first commit is indeed an ancestor.

git merge-base --independent <commit>…
This form finds the commits that are independent of the given commits. It returns the commits that have no common ancestors with any of the given commits.

git merge-base --fork-point <ref> [<commit>]
This form finds the commit at which a branch (specified by <ref>) diverged from another branch or commit (specified by <commit>). If <commit> is not provided, the command uses the branch's upstream configuration. """ ]];


  final List<List<dynamic>> data_1_71 = [
    ['git read tree', 'Reads tree information into the index',
      """git read-tree [[-m [--trivial] [--aggressive] | --reset | --prefix=<prefix>]
		[-u [--exclude-per-directory=<gitignore>] | -i]]
		[--index-output=<file>] [--no-sparse-checkout]
		(--empty | <tree-ish1> [<tree-ish2> [<tree-ish3>]]) """, """[-m [--trivial] [--aggressive] | --reset | --prefix=<prefix>]: Specifies the merge strategy or operation to perform. You can choose one of the following:

-m: Performs a merge between the specified tree-ish objects. It allows you to merge multiple tree-ish objects into the index. By default, it performs a three-way merge. The --trivial option enables trivial merges, and the --aggressive option performs more aggressive merges.
--reset: Resets the index to the contents of the specified tree-ish object(s). It discards the current index and replaces it with the specified tree-ish contents.
--prefix=<prefix>: Adds a prefix to the paths in the tree-ish object(s) when updating the index.
[-u [--exclude-per-directory=<gitignore>] | -i]: Additional options to control how the update is performed:

-u: Updates the working directory with the contents of the updated index. It ensures that the working directory reflects the changes made in the index.
--exclude-per-directory=<gitignore>: Specifies a .gitignore file to exclude files from the working directory during the update. The exclusion patterns are specific to each directory.
-i: Uses the interactive mode for updating the index. It allows you to interactively choose which changes to apply from the specified tree-ish object(s).
--index-output=<file>: Specifies a file to output the resulting index after the update. The index contents are written to the specified file instead of being updated in-place.

--no-sparse-checkout: Disables the sparse checkout feature during the update. Sparse checkout allows you to have a partial working directory with only specific files or directories.

--empty: Empties the index by removing all entries. It effectively resets the index to an empty state.

<tree-ish1> [<tree-ish2> [<tree-ish3>]]: Specifies the tree-ish objects to update the index with. The tree-ish objects can be commit hashes, branch names, tag names, or any other valid reference to a tree object. Multiple tree-ish objects can be provided for merging.

 """ ]];


  final List<List<dynamic>> data_1_72 = [
    ['git rev list', 'Lists commit objects in reverse chronological order',
      """git rev-list [<options>] <commit>… [[--] <path>…] """, """<commit>…: Specifies the commits to start the traversal from. You can provide one or more commit hashes, branch names, tag names, or any other valid reference to a commit.

[<options>]: Various options that control the behavior of git rev-list. Some commonly used options include:

--max-count=<n>: Limits the number of commits to display to <n>.
--since=<date>: Shows only commits after the specified date.
--until=<date>: Shows only commits before the specified date.
--author=<pattern>: Shows only commits by authors matching the specified pattern.
--grep=<pattern>: Shows only commits with commit messages matching the specified pattern.
--all: Lists all commits reachable from any reference, not just from the current branch.
[[--] <path>…]: Optional path(s) to restrict the commit listing to specific files or directories. Only the commits that affect the specified path(s) will be included in the output. """ ]];


  final List<List<dynamic>> data_1_73 = [
    ['git rev parse', 'Pick out and massage parameters',
      """git rev-parse [<options>] <args>… """, """<args>…: Specifies the references to be parsed. These can be commit hashes, branch names, tag names, remote branches, or any other valid Git reference.

[<options>]: Various options that control the behavior of git rev-parse. Some commonly used options include:

--abbrev-ref: Outputs the abbreviated branch name instead of the commit hash. This option is useful for getting the current branch name.
--symbolic-full-name: Outputs the fully-qualified name of a reference, including the refs/ prefix.
--short: Outputs a shortened, human-readable version of the reference.
--verify: Verifies the existence and validity of the specified reference(s). It exits with a non-zero status if any of the references are invalid.
--sq: Outputs the single-quoted form of the reference(s).
--prefix=<prefix>: Outputs the reference(s) prefixed with the specified prefix.
 """ ]];

  final List<List<dynamic>> data_1_74 = [
    ['git show ref', 'List references in a local repository',
      """git show-ref [-q|--quiet] [--verify] [--head] [-d|--dereference]
	     [-s|--hash[=<n>]] [--abbrev[=<n>]] [--tags]
	     [--heads] [--] [<pattern>…]
git show-ref --exclude-existing[=<pattern>] """, """[-q|--quiet]: Suppresses normal output and only returns the exit status. Useful when checking if a reference exists.

[--verify]: Verifies the existence and validity of the references. It exits with a non-zero status if any of the references are invalid.

[--head]: Shows only references that point to commits which are recorded in the main branch (usually HEAD).

[-d|--dereference]: Follows symbolic references and shows the referenced object.

[-s|--hash[=<n>]]: Displays only the commit hashes. The optional <n> parameter specifies the number of characters to display in the hash (default is the full hash).

[--abbrev[=<n>]]: Similar to -s|--hash, but allows customizing the abbreviation length of the commit hash.

[--tags]: Shows only tag references.

[--heads]: Shows only branch references.

[<pattern>…]: Filters the output to include only references matching the specified pattern(s).

--exclude-existing[=<pattern>]: Shows references that don't have corresponding objects in the object database. The optional <pattern> parameter filters the output to include only references matching the pattern. """ ]];

  final List<List<dynamic>> data_1_75 = [
    ['git symbolic ref', 'Read, modify and delete symbolic refs',
      """git symbolic-ref [-m <reason>] <name> <ref>
git symbolic-ref [-q] [--short] <name>
git symbolic-ref --delete [-q] <name> """, """[-m <reason>]: Specifies a reason when creating or updating a symbolic reference. It is optional and can be used to provide a descriptive message.

<name>: The name of the symbolic reference to create, update, or delete.

<ref>: The target reference that the symbolic reference should point to. It can be a branch name, tag name, or any other valid reference.

[-q]: Suppresses any output except for error messages. Useful when using the command in scripts or when you're only interested in the return status.

[--short]: When used with a read operation, only displays the name of the symbolic reference without the refs/ prefix.

--delete: Deletes the specified symbolic reference. """ ]];

  final List<List<dynamic>> data_1_76 = [
    ['git update index', 'Register file contents in the working tree to the index',
      """git update-index
	     [--add] [--remove | --force-remove] [--replace]
	     [--refresh] [-q] [--unmerged] [--ignore-missing]
	     [(--cacheinfo <mode>,<object>,<file>)…]
	     [--chmod=(+|-)x]
	     [--[no-]assume-unchanged]
	     [--[no-]skip-worktree]
	     [--[no-]ignore-skip-worktree-entries]
	     [--[no-]fsmonitor-valid]
	     [--ignore-submodules]
	     [--[no-]split-index]
	     [--[no-|test-|force-]untracked-cache]
	     [--[no-]fsmonitor]
	     [--really-refresh] [--unresolve] [--again | -g]
	     [--info-only] [--index-info]
	     [-z] [--stdin] [--index-version <n>]
	     [--verbose]
	     [--] [<file>…] """, """--add: Adds the specified file(s) to the index.

--remove or --force-remove: Removes the specified file(s) from the index. --force-remove is used when the file is missing from the working tree.

--replace: Replaces the index with the specified file(s).

--refresh: Refreshes the index by adding or updating the file(s) that have been modified.

-q: Suppresses normal output. Only errors and warnings will be displayed.

--unmerged: Shows unmerged entries in the index.

--ignore-missing: Ignores missing files when adding or updating the index.

--cacheinfo <mode>,<object>,<file>: Adds or updates an entry in the index with the specified mode, object ID, and file path.

--chmod=(+|-)x: Changes the execute permissions of the specified file(s) in the index.

--assume-unchanged or --no-assume-unchanged: Sets or clears the "assume unchanged" bit for the specified file(s).

--skip-worktree or --no-skip-worktree: Sets or clears the "skip-worktree" bit for the specified file(s).

--ignore-skip-worktree-entries or --no-ignore-skip-worktree-entries: Ignores or honors the "skip-worktree" bit for the specified file(s).

--fsmonitor-valid or --no-fsmonitor-valid: Sets or clears the "fsmonitor-valid" bit for the specified file(s).

--ignore-submodules: Ignores submodules when adding or updating the index.

--split-index or --no-split-index: Enables or disables split index mode.

--untracked-cache, --no-untracked-cache, --test-untracked-cache, or --force-untracked-cache: Manages the untracked cache.

--fsmonitor or --no-fsmonitor: Enables or disables the fsmonitor feature for the specified file(s).

--really-refresh: Refreshes the index forcefully.

--unresolve: Marks conflicted entries as unmerged in the index.

--again or -g: Refreshes the index for files that have already been added.

--info-only: Shows information about""" ]];

  final List<List<dynamic>> data_1_77 = [
    ['git update ref', 'Update the object name stored in a ref safely',
      """git update-ref [-m <reason>] [--no-deref] (-d <ref> [<oldvalue>] | [--create-reflog] <ref> <newvalue> [<oldvalue>] | --stdin [-z]) """, """[-m <reason>]: Specifies a reason for creating or updating the reference. It is optional and can be used to provide a descriptive message.

[--no-deref]: By default, symbolic references are followed and the target reference is updated. Using --no-deref ensures that only the given reference is updated.

(-d <ref> [<oldvalue>] | [--create-reflog] <ref> <newvalue> [<oldvalue>] | --stdin [-z]): Specifies the action to perform on the reference.

-d <ref> [<oldvalue>]: Deletes the specified reference. Optionally, you can provide the <oldvalue> to verify that the reference still points to the expected commit before deletion.

[--create-reflog] <ref> <newvalue> [<oldvalue>]: Creates or updates the reference <ref> to point to <newvalue>. Optionally, you can provide the <oldvalue> to verify that the reference still points to the expected commit before updating.

--stdin [-z]: Reads references to create or update from standard input. Each line contains <newvalue> <ref>. Use -z if the references are null-terminated. """ ]];

  final List<List<dynamic>> data_1_78 = [
    ['git verify pack', 'Validate packed Git archive files',
      """git verify-pack [-v|--verbose] [-s|--stat-only] [--] <pack>.idx … """, """[-v|--verbose]: Provides detailed output, including information about each object in the packfile.

[-s|--stat-only]: Displays only the statistics for the packfile, including the number of objects, the total size, and the average size of objects.

--: Separates the options and arguments from the packfile index file(s).

<pack>.idx: Specifies one or more packfile index files to verify. The .idx extension is used for packfile index files. """ ]];

  final List<List<dynamic>> data_1_79 = [
    ['git write tree', 'Create a tree object from the current index',
      """git write-tree [--missing-ok] [--prefix=<prefix>/] """, """--missing-ok: By default, git write-tree fails if there are missing blobs (file contents) in the index. Adding this option allows the command to succeed even if there are missing blobs.

--prefix=<prefix>/: Specifies a prefix to be prepended to all paths in the resulting tree object. This is useful when you want to write a tree object representing a subdirectory of the project.

 """ ]];


  final List<List<dynamic>> data_1_80 = [
    ['git init', 'This command turns a directory into an empty Git repository. This is the first step in creating a repository. After running git init, adding and committing files, directories is possible',
      """# change directory to codebase
\$ cd /file/path/to/code
# make directory a git repository
\$ git init """, """This command changes the current working directory to the specified path /file/path/to/code, which is the location of your codebase. Make sure to replace /file/path/to/code with the actual path to your codebase directory. """ ]];

  final List<List<dynamic>> data_1_81 = [
    ['git add', 'Adds files in the staging area for git, before a file is available to commit to a repository, the file needs to be added to the git index ( staging area ). There are a few different ways to use git add by adding entire directories, specific files or all unstaged files',
      """git add <file or directory name> """, """The command git add <file or directory name> is used to add changes in a file or directory to the staging area in Git. The staging area is where you prepare your changes before committing them. """ ]];

  final List<List<dynamic>> data_1_82 = [
    ['git commit', 'Record the changes made to the file to a local repository. For Easy reference, each commit has a unique ID. Its best practice to include a message with each commit explaining the changes made in a commit. Adding a commit message helps to find a particular change or understanding the changes',
      """git commit -m "Commit message in quotes" """, """
The command git commit -m "Commit message in quotes" is used to create a new commit in Git with a specified commit message. A commit represents a snapshot of changes to the repository at a particular point in time. """ ]];

  final List<List<dynamic>> data_1_83 = [
    ['git status', 'This command returns the current state of the repository git status will return the current working branch. If a file is in the current working branch. If a file is in the staging area but not committed, It shows with git status or if there are no changes, it will return noting to commit working directory clean',
      """\$ git status """, """When you execute this command, Git will show you several pieces of information, including:

The branch you are currently on.
The status of each file in the working directory, indicating whether it's untracked, modified, or staged.
Information about the staging area (index), such as the number of files staged and the changes ready to be committed.
Any branch tracking information, if applicable.
Other useful messages and suggestions based on the repository's state. """ ]];

  final List<List<dynamic>> data_1_84 = [
    ['git config', 'With Git there are many configurations and setting possible git config is how  to assign these settings two important settings are user user.name and user.email',
      """\$ git config <setting> <command> """, """<setting>: Specifies the configuration setting you want to work with. It can be a specific configuration option or a section within the configuration.

<command>: Specifies the action to perform on the configuration setting. It can be one of the following:

--get: Retrieves the value of the specified configuration setting.
--get-all: Retrieves all values associated with the specified configuration setting.
--get-regexp: Retrieves values of configuration settings matching a regular expression.
--add: Adds a new value to the specified configuration setting.
--replace-all: Replaces all existing values of the specified configuration setting.
--unset: Removes the specified configuration setting.
--unset-all: Removes all values associated with the specified configuration setting. """ ]];

  final List<List<dynamic>> data_1_85 = [
    ['git branch', 'To determine what branch the local repository is on, add a new branch or delete a branch',
      """# Create a new branch
\$ git branch <branch_name>
# List all remote or local branches
\$ git branch -a
# Delete a branch
\$ git branch -d <branch_name>""", """1. Create a new branch:

\$ git branch <branch_name>
This command creates a new branch with the specified <branch_name>. The new branch will be based on the current commit you are on. After creating the branch, you can switch to it using git checkout <branch_name>.
2. List all remote or local branches:

\$ git branch -a
This command lists all branches, including both remote and local branches. The -a option stands for "all" and includes remote branches along with local branches.
3. Delete a branch:

\$ git branch -d <branch_name>
This command deletes the specified <branch_name>. The branch must be fully merged into the current branch for the deletion to succeed. If the branch has unmerged changes, you can use the -D option instead of -d to forcefully delete the branch.

It's important to note that the above commands operate on local branches. If you want to perform branch-related operations on remote branches, such as creating or deleting a remote branch, you will need to use additional Git commands, such as git push or git push --delete.
 """ ]];

  final List<List<dynamic>> data_1_86 = [
    ['git checkout', 'To start working in a different branch use git checkout to switch branches',
      """# Checkout an existing branch
\$ git checkout <branch_name>
# Checkout and create a new branch with that name
\$ git checkout -b <new_branch> """, """1. Checkout an existing branch:

\$ git checkout <branch_name>
This command allows you to switch to an existing branch specified by <branch_name>. It updates your working directory and staging area to match the state of the branch. Any changes you made in the current branch but haven't committed will be preserved in the form of modified files when switching to the new branch.


2. Checkout and create a new branch with that name:

\$ git checkout -b <new_branch>
This command combines the creation of a new branch with checking it out in a single step. It creates a new branch called <new_branch> based on the current branch and then switches to the newly created branch. This is a convenient way to create and immediately start working on a new branch without needing separate commands for branch creation and checkout.
 """ ]];

  final List<List<dynamic>> data_1_87 = [
    ['git merge', 'Integrate branches together, git merge combines the changes from one branch to another branch, for example merge the changes made in a staging branch into the stable branch',
      """\$ git merge <source_branch>
 """, """First, ensure that you are on the branch where you want to merge the changes. You can use the git branch command to see the current branch and switch to the desired branch using git checkout <branch_name> if needed.

Once you are on the target branch, run the following command to merge the changes from another branch:

\$ git merge <source_branch>
Replace <source_branch> with the name of the branch that contains the changes you want to merge into the current branch.

Git will attempt to automatically merge the changes. If there are any conflicts, Git will pause the merge process and indicate the conflicted files. You will need to manually resolve the conflicts by editing the affected files.

After resolving any conflicts, you can use git add <file> to stage the resolved changes. Alternatively, you can use git add . to stage all changes automatically.

Once all conflicts are resolved and changes are staged, you can complete the merge by running git commit without any additional arguments. This will create a new commit that represents the merge. """ ]];

  final List<List<dynamic>> data_1_88 = [
    ['git remote', 'To connect a local repository with a remote repository. A remote repository can have a name set to to avoid having to remember the URL of the repository',
      """\$ git remote add <remote_name> <remote_url>
 """, """
 \$ git remote add <remote_name> <remote_url>
1. Replace <remote_name> with the name you want to give to the remote repository, and <remote_url> with the URL of the remote repository you want to add.
2. For example, if you want to add a remote repository named "origin" with the URL "https://github.com/example/repository.git", you would run:

  \$ git remote add origin https://github.com/example/repository.git
1. Once the remote repository is added, you can interact with it using various Git commands, such as git fetch, git pull, and git push, to exchange commits and collaborate with others.
2. You can view the list of remote repositories associated with your local repository by running:

  \$ git remote -v
1. This command will show you the remote names and their corresponding URLs.
 """ ]];

  final List<List<dynamic>> data_1_89 = [
    ['git clone', 'To create a local working copy of an existing remote repository, use git clone to copy and download the repository to a computer. Cloning is the equivalent of git init when working with a remote repository. Git will create a directory locally with all files and repository history',
      """\$ git clone <remote_URL> """, """The git clone command is used to create a copy of a remote repository on your local machine. Here's how you can use it:
 
\$ git clone <remote_URL>
Replace <remote_URL> with the URL of the remote repository you want to clone. The URL can be in different formats, such as HTTPS or SSH, depending on the access method supported by the remote repository.
For example, to clone a repository with the URL "https://github.com/example/repository.git", you would run:


\$ git clone https://github.com/example/repository.git
By default, the git clone command creates a new directory on your local machine with the same name as the repository and initializes it as a Git repository. It then fetches all the commits and files from the remote repository and checks out the latest commit, setting up a local working copy for you to start working with.
 """ ]];


  final List<List<dynamic>> data_1_90 = [
    ['git pull', 'To get the latest version of a repository run git pull. This pull the changes from the remote repository to the local computer',
      """\$ git pull <branch_name> <remote_URL/remote_name>""", """The git pull command is used to fetch and merge changes from a remote repository into the current branch. Here's how you can use it:

\$ git pull <remote_name> <branch_name>
Replace <remote_name> with the name of the remote repository or the URL of the remote repository, and <branch_name> with the name of the branch from which you want to pull changes.
For example, if you have a remote repository named "origin" and you want to pull changes from the branch "main", you would run:


\$ git pull origin main
Alternatively, if you know the URL of the remote repository, you can provide the URL directly instead of the remote name:


\$ git pull <remote_URL> <branch_name>
For example:


\$ git pull https://github.com/example/repository.git main
When you run git pull, Git fetches the latest changes from the specified remote repository and merges them into the current branch. If there are any conflicts between the local and remote changes, you may need to resolve them manually before completing the merge.
 """ ]];


  final List<List<dynamic>> data_1_91 = [
    ['git push', 'Send local commits to the remote repository, git push requires two parameters, the remote repository and the branch that the push is for',
      """\$ git push <remote_URL/remote_name> <branch> """, """The git push command is used to push your local branch and its commits to a remote repository. Here's how you can use it:

\$ git push <remote_name> <branch_name>
Replace <remote_name> with the name of the remote repository or the URL of the remote repository, and <branch_name> with the name of the branch you want to push.
For example, if you have a remote repository named "origin" and you want to push your local branch "main" to that remote repository, you would run:

\$ git push origin main
Alternatively, if you know the URL of the remote repository, you can provide the URL directly instead of the remote name:

\$ git push <remote_URL> <branch_name>
For example:
\$ git push https://github.com/example/repository.git main

When you run git push, Git sends your local branch's commits to the specified remote repository. If the branch doesn't exist in the remote repository, Git creates it. If the branch already exists, Git updates it with the new commits.
 """ ]];


  final List<List<dynamic>> data_1_92 = [
    ['git stash', 'To save changes made when they are not in a state to commit them to a repository This will store the work and give a clean working directory',
      """# Store current work with untracked files
\$ git stash -u
# Bring stashed work back to the working directory
\$ git stash pop """, """The git stash command is used to temporarily save your current work, including both the changes to tracked files and the untracked files. It allows you to switch to a different branch or perform other operations without committing your changes. Here's how you can use it:
To store your current work with untracked files:

\$ git stash -u
This command creates a new stash that includes both the changes to tracked files and untracked files. The -u option ensures that untracked files are also included in the stash.
To bring the stashed work back to the working directory:


\$ git stash pop
This command applies the most recent stash and removes it from the stash list. It restores both the changes to tracked files and the previously untracked files to your working directory.
 """ ]];


  final List<List<dynamic>> data_1_93 = [
    ['git log', 'To show the chronological commit history for a repository. This helps give context and history for a repository git log is available immediately on a recently cloned repository to see history',
      """# Show entire git log
\$ git log
# Show git log with date pameters
\$ git log --<after/before/since/until>=<date>
# Show git log based on commit author
\$ git log --<author>="Author Name" """, """To show the entire Git log, you can use the git log command without any additional parameters:

\$ git log
This command displays the commit history in reverse chronological order, showing the commit hash, author, date, and commit message for each commit.
To show the Git log with date parameters, you can use the --after, --before, --since, or --until options followed by the desired date:


\$ git log --after=<date> 
\$ git log --before=<date> 
\$ git log --since=<date> 
\$ git log --until=<date>

Replace <date> with the specific date or date range in various formats, such as "YYYY-MM-DD" or "1 week ago". This allows you to filter the commit history based on the specified date criteria.
For example, to show the Git log since a specific date:


\$ git log --since=2022-01-01
To show the Git log based on commit author, you can use the --author option followed by the author's name or email address:


\$ git log --author="Author Name"
Replace "Author Name" with the desired author's name.
For example, to show the Git log for commits by an author named "John Doe":


\$ git log --author="John Doe"
These options can be combined to further refine the Git log output based on both date and author criteria.
 """ ]];


  final List<List<dynamic>> data_1_94 = [
    ['git rm', 'Remove files or directories from the working index ( staging area ), with git rm there are two options to keep in mind force and cached',
      """# To remove a file from the working index (cached):
\$ git rm --cached <file name>
# To delete a file (force):
\$ git rm -f <file name>
# To remove an entire directory from the working index (cached):
\$ git rm -r --cached <directory name>
# To delete an entire directory (force):
\$ git rm -r -f <file name> """, """To remove a file from the working index (cached) in Git, you can use the following command:

\$ git rm --cached <file_name>
Replace <file_name> with the name of the file you want to remove. This command removes the file from the Git index but keeps it in your working directory.
To delete a file from both the working directory and the Git repository (force), you can use the following command:

\$ git rm -f <file_name>
This command removes the file from the Git repository and deletes it from your working directory.
To remove an entire directory from the working index (cached) in Git, you can use the following command:

\$ git rm -r --cached <directory_name>
Replace <directory_name> with the name of the directory you want to remove. This command removes the directory and its contents from the Git index but keeps them in your working directory.
To delete an entire directory from both the working directory and the Git repository (force), you can use the following command:

\$ git rm -r -f <directory_name>
This command removes the directory and its contents from the Git repository and deletes them from your working directory.
Please note that when you use git rm to delete files or directories, the changes are staged for the next commit. You will need to commit the changes using git commit for the deletions to be recorded in the Git repository.
 """ ]];

  late BannerAd _bannerAd;

  bool _isBannerAdReady = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitIdOfListScreen,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );
    _bannerAd.load();

  }


  @override
  void dispose() {
    super.dispose();
    _bannerAd.dispose();
  }


  @override
  Widget build(BuildContext context) {
    if(widget.listIndex == 0 && widget.value == 1) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_1[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  height: 1.8,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  height: 1.8,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 2) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_2[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 2 && widget.value == 3) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_3[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 3 && widget.value == 4) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_4[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 5) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_5[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 6) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_6[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 7) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_7[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 8) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_8[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 2 && widget.value == 9) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_9[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 3 && widget.value == 10) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_10[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 4 && widget.value == 11) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_11[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 5 && widget.value == 12) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_12[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 6 && widget.value == 13) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_13[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 7 && widget.value == 14) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_14[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 8 && widget.value == 15) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_15[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 16) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_16[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 17) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_17[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 2 && widget.value == 18) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_18[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 3 && widget.value == 19) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_19[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 4 && widget.value == 20) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_20[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 5 && widget.value == 21) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_21[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 6 && widget.value == 22) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_22[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 7 && widget.value == 23) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_23[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 8 && widget.value == 24) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_24[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 25) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_25[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 26) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_26[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 2 && widget.value == 27) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_27[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 3 && widget.value == 28) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_28[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 4 && widget.value == 29) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_29[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 30) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_30[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 31) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_31[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 2 && widget.value == 32) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_32[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 3 && widget.value == 33) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_33[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 4 && widget.value == 34) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_34[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 5 && widget.value == 35) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_35[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 36) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_36[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 37) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_37[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 2 && widget.value == 38) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_38[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 3 && widget.value == 39) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_39[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 40) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_40[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 41) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_41[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 2 && widget.value == 42) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_42[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 43) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_43[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 44) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_44[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 45) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_45[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 2 && widget.value == 46) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_46[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 3 && widget.value == 47) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_47[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 48) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_48[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 49) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_49[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 50) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_50[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 51) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_51[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 2 && widget.value == 52) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_52[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 3 && widget.value == 53) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_53[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 4 && widget.value == 54) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_54[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 5 && widget.value == 55) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_55[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 6 && widget.value == 56) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_56[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 7 && widget.value == 57) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_57[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 58) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_58[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 59) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_59[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 60) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_60[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 61) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_61[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 2 && widget.value == 62) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_62[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 3 && widget.value == 63) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_63[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 4 && widget.value == 64) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_64[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 5 && widget.value == 65) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_65[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 6 && widget.value == 66) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_66[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 7 && widget.value == 67) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_67[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 8 && widget.value == 68) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_68[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 9 && widget.value == 69) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_69[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 10 && widget.value == 70) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_70[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 11 && widget.value == 71) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_71[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 12 && widget.value == 72) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_72[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 13 && widget.value == 73) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_73[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 14 && widget.value == 74) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_74[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 15 && widget.value == 75) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_75[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 16 && widget.value == 76) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_76[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 17 && widget.value == 77) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_77[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 18 && widget.value == 78) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_78[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 19 && widget.value == 79) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_79[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 80) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_80[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 81) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_81[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 2 && widget.value == 82) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_82[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 3 && widget.value == 83) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_83[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 4 && widget.value == 84) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_84[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 5 && widget.value == 85) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_85[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 6 && widget.value == 86) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_86[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 7 && widget.value == 87) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_87[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 88) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_88[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 89) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_89[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 2 && widget.value == 90) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_90[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 3 && widget.value == 91) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_91[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 0 && widget.value == 92) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_92[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 1 && widget.value == 93) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_93[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }
    else if(widget.listIndex == 2 && widget.value == 94) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Git Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            List<dynamic> row = data_1_94[index];
            return Card(

              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(

                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[0],
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,))
                            ),
                          ), // Display item name
                          trailing: IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(row[1],
                                    style: GoogleFonts.openSans(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,))
                                ),
                              ),
                            ],
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[2],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 0.5),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0) //                 <--- border radius here
                          ),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(row[3],
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.openSans(textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,))
                            ),
                          ), // Display item name
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),

      );
    }

    else
    {
      return Container();
    }
  }

  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Git Command Copied to clipboard')),
    );
  }

}
