import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linux_commands/AdHelper/adshelper.dart';
import 'package:linux_commands/Screens/detailscreen.dart';
import 'package:linux_commands/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:page_transition/page_transition.dart';
import 'package:share/share.dart';

class ListScreen extends StatefulWidget {

  final int listIndex;

  const ListScreen({Key? key,required this.listIndex}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState(listIndex);

}

class _ListScreenState extends State<ListScreen> {

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

  final int listIndex;

  _ListScreenState(this.listIndex);


  final List<List<String>> data_2 = [
    ['a2p', 'Awk to Perl translator'],
    ['aa-audit', 'AppArmor user-level tool for policy auditing'],
    ['aa-autodep', 'AppArmor auto-dependency generation'],
    ['aa-complain', 'Change the AppArmor mode for a program to complain mode'],
    ['aa-disable', 'Disable an AppArmor profile'],
    ['aa-enforce', 'Change the AppArmor mode for a program to enforce mode'],
    ['aa-genprof', 'Command-line AppArmor profile generator'],
    ['aa-logprof', 'AppArmor log parser and interpreter'],
    ['aa-status', "Show the AppArmor security profiles' status"],
    ['aconnect', 'ALSA sequencer connection manager'],
    ['acpi', 'Show Advanced Configuration and Power Interface information'],
    ['acpid', 'Advanced Configuration and Power Interface event daemon'],
    ['add-apt-repository', 'Adds a repository into apt sources'],
    ['add-shell', "Add a user's shell"],
    ['addgroup', 'Add a group to the system'],
    ['addpart', 'Inform the kernel of new partition'],
    ['addr2line', 'Converts addresses into filenames and line numbers'],
    ['adduser', 'Add a user or group to the system'],
    ['agetty', 'Alternative Linux getty'],
    ['alias', 'Define or display aliases'],
    ['alsactl', 'Advanced Linux Sound Architecture control program'],
    ['animate', 'Play an animation on any X server'],
    ['ant', 'Java-based build tool'],
    ['aplay', 'Command-line audio player for ALSA sound system'],
    ['aplaymidi', 'Play Standard MIDI Files'],
    ['apm', 'Display Advanced Power Management information'],
    ['apport-bug', 'Report a bug using Apport'],
    ['apport-collect', 'Collect debugging information for a problem report'],
    ['apport-retrace', 'Generate a backtrace from a crash report'],
    ['apport-unpack', 'Extract information from an Apport crash report'],
    ['apropos', 'Search the manual page descriptions for a keyword'],
    ['apt', 'Command-line package manager for Debian-based systems'],
    ['apt-cache', 'Query the APT cache'],
    ['apt-cdrom', 'Used to add CDs to APTs list of available sources'],
    ['apt-config', 'APT configuration management utility'],
    ['apt-get', 'Command-line tool for handling packages in Debian-based systems'],
    ['apt-key', 'Used to manage APTs list of trusted keys'],
    ['apt-mark', 'Used to manipulate the APT package marking system'],
    ['apropos', 'Search the manual page names and descriptions for a keyword'],
    ['ar', 'Create, modify, and extract files from archives'],
    ['arch', 'Display the machine architecture of the current system'],
    ['as', 'GNU Assembler'],
    ['at', 'Schedule commands to be executed at a later time'],
    ['atq', "Display the user's pending jobs scheduled with the at command"],
    ['atrm', "Remove jobs from the user's at queue"],
    ['atd', 'Run scheduled commands'],
    ['awk', 'Pattern scanning and processing language'],
    ['axel', 'Download accelerator that supports HTTP, HTTPS, and FTP']
  ];

  final List<List<String>> data_3 = [
    ['base32', 'Encode or decode base32 and print to standard output'],
    ['base64', 'Encode or decode base64 and print to standard output'],
    ['bash', 'GNU Bourne-Again SHell'],
    ['batch', 'Schedule commands to be executed in a batch queue'],
    ['bc', 'An arbitrary precision calculator language'],
    ['bcompare', 'Graphical file and directory comparison tool'],
    ['bison', 'GNU Project parser generator'],
    ['bg', 'Send jobs to the background'],
    ['bind', 'Set or display terminal key bindings'],
    ['break', 'Exit from a loop or switch statement'],
    ['builtin', 'Run a shell builtin command'],
    ['busybox', 'The Swiss Army Knife of embedded Linux'],
    ['byteorder', 'Print byte order'],
    ['bzcat', 'Decompresses files to stdout'],
    ['bzcmp', 'Compare bzip2 compressed files'],
    ['bzdiff', 'Compare bzip2 compressed files line by line'],
    ['bzegrep', 'Search bzip2 compressed files for a regular expression'],
    ['bzexe', 'Bzip2-compatible self-extractor'],
    ['bzfgrep', 'Search bzip2 compressed files for a fixed string'],
    ['bzgrep', 'Search bzip2 compressed files for a pattern'],
    ['bzip2', 'A block-sorting file compressor'],
    ['bzip2recover', 'Recover data from damaged bzip2 files'],
    ['bzless', 'File perusal filter for bzip2 compressed text files'],
    ['bzmore', 'File perusal filter for bzip2 compressed text files'],
    ['bunzip2', 'Decompresses files'],
    ['basename', 'Strip directory and suffix from filenames'],
    ['byobu', 'Text-based window manager and terminal multiplexer']
  ];

  final List<List<String>> data_4 = [
    ['cal', 'Display a calendar'],
    ['cat', 'Concatenate files and print on the standard output'],
    ['cd', 'Change the current directory'],
    ['chattr', 'Change file attributes on a Linux file system'],
    ['chcon', 'Change security context of files or directories'],
    ['chgrp', 'Change the group ownership of files'],
    ['chmod', 'Change the permissions of files'],
    ['chown', 'Change the ownership of files'],
    ['chroot', 'Run a command or shell with a different root directory'],
    ['cksum', 'Print CRC checksum and byte counts'],
    ['clear', 'Clear the terminal screen'],
    ['cmp', 'Compare two files byte by byte'],
    ['comm', 'Compare two sorted files line by line'],
    ['command', 'Run a command with specified arguments'],
    ['continue', 'Resume the next iteration of a loop'],
    ['cp', 'Copy files and directories'],
    ['cron', 'Daemon to execute scheduled commands'],
    ['crontab', 'Manage user crontab files'],
    ['csplit', 'Split a file into sections determined by context lines'],
    ['cut', 'Remove sections from each line of files'],
    ['curl', 'Transfer data from or to a server'],
    ['c++', 'Compile or run a C++ program'],
    ['c_rehash', 'Create symbolic links for files named by hash values'],
    ['cupsaccept', 'Accept jobs sent to a destination'],
    ['cupsaddsmb', 'Export printers to samba for windows clients'],
    ['cupsctl', 'Configure cupsd.conf options'],
    ['cupsdisable', 'Stop a destination or class from accepting print jobs'],
    ['cupsenable', 'Allow a destination or class to accept print jobs'],
    ['cupsreject', 'Reject jobs sent to a destination'],
    ['curl-config', 'Get information about the installed libcurl'],
    ['cut', 'Remove sections from each line of files'],
    ['cvs', 'Concurrent Versions System'],
    ['cvtsudoers', 'Convert a sudoers file to a sudoers.tmp file'],
    ['cygcheck', 'Print Cygwin package information'],
    ['cygpath', 'Convert paths from Windows format to Unix format'],
    ['cygwin-console-helper', 'Helper executable for Cygwin console'],
    ['cygwin-create-shortcut', 'Create shortcuts for Cygwin programs'],
    ['cygwin-doc', 'Cygwin documentation'],
    ['cygwin-editor-README', 'Readme file for Cygwin editor packages'],
    ['cygwin-mailwrapper', 'Cygwin mailwrapper script'],
    ['cygwin-mount-config', 'Cygwin mount configuration'],
    ['cygwin-mount-helper', 'Helper executable for Cygwin mount'],
    ['cygwin-profile-config', 'Cygwin profile configuration'],
    ['cygwin-profile-helper', 'Helper executable for Cygwin profile'],
    ['cygwin-console-helper-usr', 'Helper executable for Cygwin console in user mode'],
    ['cygwin-console-helper-admin', 'Helper executable for Cygwin console in admin mode'],
    ['cygwin-readline-doc', 'Cygwin readline documentation'],
    ['cygwin64-mount-helper', 'Helper executable for Cygwin 64-bit mount'],
    ['cygwin32-mount-helper', 'Helper executable for Cygwin 32-bit mount'],
    ['caller', 'Return the context of a subroutine call'],
    ['case', 'Conditionally perform a command'],
    ['cfdisk', 'Partition table manipulator for Linux'],
    ['chpasswd', 'Update passwords in batch mode'],
    ['chkconfig', 'Tool for managing services'],
    ['cpio', 'Copy files to and from archives'],
    ['csplit', 'Split a file into context-determined pieces']

  ];

  final List<List<String>> data_5 = [
    ['date', 'Display or set the system date and time'],
    ['dd', 'Convert and copy a file'],
    ['df', 'Report file system disk space usage'],
    ['diff', 'Compare files line by line'],
    ['diff3', 'Compare three files line by line'],
    ['dir', 'List directory contents'],
    ['dircolors', 'Color setup for ls'],
    ['dirname', 'Strip last component from file name'],
    ['dirs', 'Display the list of currently remembered directories'],
    ['dmesg', 'Print or control the kernel ring buffer'],
    ['dnsdomainname', 'Show the system\'s DNS domain name'],
    ['domainname', 'Show or set the system\'s NIS/YP domain name'],
    ['dos2unix', 'Convert text file from DOS format to Unix format'],
    ['dpkg', 'Package manager for Debian-based systems'],
    ['dpkg-deb', 'Debian package archive (.deb) manipulation tool'],
    ['du', 'Estimate file space usage'],
    ['dump', 'Incremental filesystem backup'],
    ['dumpe2fs', 'Dump ext2/ext3/ext4 filesystem information'],
    ['dundi_lookup', 'Look up entries in a Distributed Universal Number Discovery (DUNDi) system'],
    ['dundi_resolve', 'Resolve DUNDi query results'],
    ['dvipdf', 'Convert DVI file to PDF format'],
    ['dvipdfm', 'Convert DVI file to PDF format'],
    ['dvipdfmx', 'Convert DVI file to PDF format'],
    ['dvips', 'Convert DVI file to PostScript format'],
    ['dwz', 'DWARF optimization and duplicate removal tool'],
    ['dc', 'Desk calculator'],
    ['ddrescue', 'Data recovery tool'],
    ['declare', 'Declare variables and give them attributes'],
    ['dig', 'DNS lookup utility'],
    ['du', 'Estimate file space usage']

  ];

  final List<List<String>> data_6 = [
    ['echo', 'Display a line of text'],
    ['egrep', 'Search file(s) for lines that match a given pattern'],
    ['eject', 'Eject removable media'],
    ['emacs', 'Text editor'],
    ['enable', 'Enable and disable built-in shell commands'],
    ['env', 'Display, set, or remove environment variables'],
    ['ethtool', 'Display or modify Ethernet device settings'],
    ['eval', 'Evaluate several commands/arguments'],
    ['exec', 'Execute a command'],
    ['exit', 'Exit the shell'],
    ['expand', 'Convert tabs to spaces'],
    ['expect', 'Program for automating interactive applications'],
    ['export', 'Set an environment variable'],
    ['expr', 'Evaluate expressions'],
    ['expand', 'Convert tabs to spaces'],
    ['e2fsck', 'Check a Linux ext2/ext3/ext4 file system'],
    ['e2image', 'Save critical ext2/ext3/ext4 file system metadata to a file'],
    ['e2label', 'Change the label on an ext2/ext3/ext4 file system'],
    ['e2undo', 'Undo an ext2/ext3/ext4 file system'],
    ['e4defrag', 'Online defragmenter for ext4 filesystems'],
    ['easy_install', 'Find and install Python packages'],
    ['ebtables', 'Ethernet bridge frame table administration'],
    ['eclipse', 'Integrated development environment (IDE)'],
    ['ed', 'Line-oriented text editor'],
    ['egrep', 'Search file(s) for lines that match a given pattern'],
    ['elinks', 'Full-featured text web browser'],
    ['elm', 'Terminal-based email client'],
    ['emacs', 'Text editor'],
    ['enc2xs', 'Perl Encode module script to convert encodings'],
    ['enetstat', 'Print network connections, routing tables, interface statistics, etc.'],
    ['env', 'Display, set, or remove environment variables'],
    ['epmd', 'Erlang Port Mapper Daemon'],
    ['esac', 'End case statement'],
    ['eval', 'Evaluate several commands/arguments'],
    ['exec', 'Execute a command'],
    ['exit', 'Exit the shell'],
    ['expand', 'Convert tabs to spaces'],
    ['expect', 'Program for automating interactive applications'],
    ['export', 'Set an environment variable'],
    ['expr', 'Evaluate expressions']

  ];

  final List<List<String>> data_7 = [
    ['false', 'Do nothing, unsuccessfully'],
    ['fc', 'Fix command'],
    ['fdisk', 'Partition table manipulator for Linux'],
    ['fg', 'Send job to foreground'],
    ['fgrep', 'Search file(s) for lines that match a fixed string'],
    ['file', 'Determine file type'],
    ['find', 'Search files and directories'],
    ['finger', 'User information lookup program'],
    ['flex', 'Fast lexical analyzer generator'],
    ['fmt', 'Reformat paragraph text'],
    ['fold', 'Wrap each input line to fit in specified width'],
    ['for', 'Expand words, and execute commands'],
    ['foreach', 'Execute a command for each item in a list'],
    ['format', 'Format disks or tapes'],
    ['free', 'Display amount of free and used memory in the system'],
    ['fsck', 'File system consistency check and repair'],
    ['ftp', 'File Transfer Protocol client'],
    ['ftpcount', 'Display current number of FTP users'],
    ['ftpd', 'File Transfer Protocol (FTP) server'],
    ['ftpshut', 'Shutdown the FTP server'],
    ['funzip', 'Filter for extracting from a ZIP archive in a pipe'],
    ['fuser', 'Identify processes using files or sockets'],
    ['fdformat', 'Low-level format a floppy disk'],
    ['function', 'Define a shell function']
  ];


  final List<List<String>> data_8 = [
    ['gawk', 'Pattern scanning and processing language'],
    ['gcc', 'GNU Compiler Collection'],
    ['gcov', 'Coverage testing tool'],
    ['gdb', 'GNU Debugger'],
    ['getconf', 'Query system configuration variables'],
    ['getent', 'Get entries from administrative database'],
    ['getopts', 'Parse positional parameters'],
    ['gettext', 'Get the message string from the input string'],
    ['gpasswd', 'Administer the /etc/group file'],
    ['grep', 'Print lines matching a pattern'],
    ['groups', 'Print group names a user is in'],
    ['gzip', 'Compress or decompress files'],
    ['g++', 'GNU C++ Compiler'],
    ['gdm', 'GNOME Display Manager'],
    ['genisoimage', 'Generate ISO9660/Joliet/HFS filesystems'],
    ['gimp', 'GNU Image Manipulation Program'],
    ['git', 'Distributed version control system'],
    ['gksudo', 'GTK+ front-end to su and sudo'],
    ['gpg', 'OpenPGP encryption and signing tool'],
    ['grep', 'Print lines matching a pattern'],
    ['groups', 'Print group names a user is in'],
    ['getfacl', 'Get file access control lists'],
    ['groupadd', 'Create a new group'],
    ['groupdel', 'Delete a group'],
    ['groupmod', 'Modify a group']
  ];

  final List<List<String>> data_9 = [
    ['halt', 'Stop the system'],
    ['hash', 'Remember the full pathname of a name argument'],
    ['hd', 'ASCII, decimal, hexadecimal, octal dump'],
    ['head', 'Output the first part of files'],
    ['help', 'Display help information for shell built-ins'],
    ['history', 'Command history'],
    ['host', 'DNS lookup utility'],
    ['hostname', 'Show or set the system\'s host name'],
    ['htdigest', 'Create and update user authentication files for digest authentication'],
    ['htop', 'Interactive process viewer'],
    ['httpd', 'Apache Hypertext Transfer Protocol Server'],
    ['htpasswd', 'Manage user files for basic authentication'],
    ['hwclock', 'Get or set the hardware clock (RTC)'],
    ['hexdump', 'Display file contents in hexadecimal, decimal, octal, or ASCII'],

  ];

  final List<List<String>> data_10 = [
    ['iconv', 'Convert the character encoding of a file'],
    ['id', 'Print user and group information'],
    ['if', 'Conditionally perform a command'],
    ['ifconfig', 'Configure a network interface'],
    ['ifdown', 'Take a network interface down'],
    ['ifup', 'Bring a network interface up'],
    ['import', 'Capture an X server screen and save the image to file'],
    ['install', 'Copy files and set attributes'],
    ['in', 'Reads a line from standard input'],
    ['info', 'Read Info documents'],
    ['init', 'Process control initialization'],
    ['insmod', 'Insert a module into the Linux kernel'],
    ['ip', 'Network interface configuration'],
    ['iptables', 'Administration tool for IPv4 packet filtering and NAT'],
    ['irb', 'Interactive Ruby'],
    ['isoinfo', 'Utility for examining ISO-9660 CD-ROM images'],
    ['iw', 'Configure and display wireless network interfaces'],
    ['iostat', 'Report CPU and I/O statistics'],
  ];

  final List<List<String>> data_11 = [
    ['jobs', 'List active jobs'],
    ['join', 'Join lines of two files on a common field'],
    ['journald', 'Journal service'],
    ['jexec', 'Execute command in jail'],
    ['jfs_mkfs', 'Create a JFS file system'],
    ['jfs_tune', 'Adjust tunable filesystem parameters on a JFS filesystem'],
    ['jfs_fsck', 'Check and repair a JFS formatted filesystem'],
    ['jinfo', 'Configuration info for a running Java process'],
    ['jmap', 'Memory map for Java processes'],
    ['jobs', 'List active jobs'],
    ['join', 'Join lines of two files on a common field'],
    ['journalctl', 'Query the systemd journal'],
    ['jwhois', 'Enhanced WHOIS client'],
    ['jar', 'Java archive tool'],
    ['javac', 'Java compiler'],
    ['java', 'Java application launcher'],
    ['javadoc', 'Generate Java API documentation'],
    ['jps', 'Java Virtual Machine Process Status Tool'],
    ['jstack', 'Stack trace of a Java process'],
    ['jstat', 'Java Virtual Machine statistics monitoring tool'],
    ['jvisualvm', 'Visual tool for monitoring Java applications'],
  ];

  final List<List<String>> data_12 = [
    ['kill', 'Terminate processes or send signals to processes'],
    ['kmod', 'Manage Linux Kernel modules'],
    ['kpartx', 'Create device mappings for partitions'],
    ['ksh', 'KornShell, an enhanced version of the Bourne shell'],
    ['keyctl', 'Key management facility'],
    ['kexec', 'Load and boot into another kernel from the currently running kernel'],
    ['kernel-install', 'Install kernel and initramfs files'],
    ['kdesu', 'Super User mode for KDE'],
    ['kgdb', 'Kernel source level debugger'],
    ['killall', 'Kill processes by name'],
    ['killall5', 'Send signal to all processes except the ones in the init process'],
    ['kdialog', 'Show nice dialog boxes from shell scripts'],
    ['kate', 'Advanced text editor for KDE'],
    ['kcalc', 'Scientific calculator for KDE'],
    ['kdeconnect-cli', 'Command-line interface for KDE Connect'],
    ['kdiff3', 'Compare and merge 2 or 3 files or directories'],
    ['kgpg', 'KDE frontend for GnuPG'],
    ['kwrite', 'Simple text editor for KDE'],
    ['konsole', 'KDE terminal emulator'],
    ['klist', 'List Kerberos service tickets'],
  ];

  final List<List<String>> data_13 = [
    ['last', 'Show a listing of last logged in users'],
    ['lastlog', 'Reports the most recent login of all users or of a given user'],
    ['ld', 'The GNU linker'],
    ['ldapadd', 'LDAP add entry and attributes'],
    ['ldapdelete', 'LDAP delete entry'],
    ['ldapmodify', 'LDAP modify entry'],
    ['ldappasswd', 'LDAP modify user password'],
    ['ldapsearch', 'LDAP search'],
    ['less', 'View file contents or command output one page at a time'],
    ['let', 'Perform arithmetic operations'],
    ['ln', 'Create links between files'],
    ['local', 'Define local variables in shell functions'],
    ['locate', 'Find files by name'],
    ['lockfile', 'Create semaphore files'],
    ['logger', 'Send messages to system log'],
    ['login', 'Begin a new session on the system'],
    ['logname', 'Print user\'s login name'],
    ['logout', 'Exit a login session'],
    ['logrotate', 'Rotate log files'],
    ['look', 'Display lines beginning with a given string'],
    ['lpr', 'Print files'],
    ['ls', 'List directory contents'],
    ['lsattr', 'List file attributes on a Linux second extended file system'],
    ['lsblk', 'List information about block devices'],
    ['ls', 'List directory contents'],
    ['lsof', 'List open files'],
    ['lspci', 'List all PCI devices'],
    ['link', 'Create a link to a file'],
    ['lpc', 'Line printer control program'],
    ['lprint', 'Print a file'],
    ['lprintd', 'Cancel a print job'],
    ['lprintq', 'Show print queue status'],
    ['lprm', 'Remove print jobs from the print queue'],

  ];

  final List<List<String>> data_14 = [
    ['make', 'GNU make utility to maintain groups of programs'],
    ['man', 'An interface to the system reference manuals'],
    ['mkdir', 'Create directories'],
    ['mkfifo', 'Make a FIFO (named pipe) file'],
    ['mkfs', 'Build a Linux file system'],
    ['mkisofs', 'Create an ISO 9660 image file'],
    ['mknod', 'Make block or character special files'],
    ['mkswap', 'Set up a Linux swap area'],
    ['mktemp', 'Create a temporary file or directory'],
    ['more', 'View file contents one screen at a time'],
    ['mount', 'Mount a file system'],
    ['mountpoint', 'Check if a directory is a mountpoint'],
    ['mv', 'Move or rename files and directories'],
    ['mtools', 'Manipulate MS-DOS files'],
    ['mtr', 'Network diagnostic tool'],
    ['mvn', 'Maven build automation tool'],
    ['myisamchk', 'MyISAM table-maintenance utility for MySQL'],
    ['mapfile', 'Read lines from a file into an array'],
    ['mkfile', 'Create a file with the specified size'],
    ['most', 'Browse or page through a text file'],
    ['mmv', 'Move, rename, copy, or append multiple files'],
    ['modprobe', 'Load kernel modules'],
    ['more', 'Display output one screen at a time'],
    ['mosh', 'Mobile shell for remote terminal services'],
    ['mount', 'Mount a file system'],
    ['mountpoint', 'Check if a directory is a mountpoint'],
    ['mpstat', 'Report processor-related statistics'],
    ['mtr', 'Network diagnostic tool'],
  ];

  final List<List<String>> data_15 = [
    ['nano', 'Text editor for the command line'],
    ['nc', 'Netcat - networking utility for reading from/writing to network connections'],
    ['netstat', 'Network statistics tool'],
    ['nice', 'Run a command with modified scheduling priority'],
    ['nl', 'Number lines and write files'],
    ['nm', 'List symbols from object files'],
    ['nohup', 'Run a command immune to hangups'],
    ['notify-send', 'Send desktop notifications'],
    ['nslookup', 'Query Internet name servers interactively'],
    ['ntfsfix', 'Fix common errors, force the Windows NTFS volume to be checked, and repair it if needed'],
    ['ntfsresize', 'Resize an NTFS filesystem without data loss'],
    ['ntpdate', 'Set the date and time via NTP'],
    ['nasm', 'Netwide Assembler, an assembler for the x86 architecture'],
    ['nmap', 'Network exploration and security auditing tool'],
    ['no', 'Do nothing, successfully'],
    ['numfmt', 'Convert numbers to/from human-readable formats'],
    ['nproc', 'Print the number of processing units available'],
    ['nsenter', 'Run program with namespaces of other processes'],
    ['nfsstat', 'Display NFS statistics'],
    ['nice', 'Run a program with modified scheduling priority'],
    ['nohup', 'Run a command immune to hangups'],
    ['nl', 'Number lines and write files'],
    ['nm', 'List symbols from object files'],
    ['nft', 'Netfilter tool for packet filtering and classification'],
  ];

  final List<List<String>> data_16 = [
    ['od', 'Dump files in various formats'],
    ['open', 'Open a file or directory'],
    ['openssl', 'Command-line tool for using OpenSSL library functions'],
    ['operator', 'Shell arithmetic operator'],
    ['options', 'Set command line options'],
    ['os-prober', 'Detect other operating systems available on a computer'],
    ['outb', 'Send a byte to an I/O port'],
    ['outw', 'Send a word to an I/O port'],
    ['outl', 'Send a long word to an I/O port'],
    ['op', 'Perform arbitrary precision arithmetic operations'],
    ['odbcinst', 'ODBC configuration tool'],
    ['odt2txt', 'Convert OpenDocument Text files to plain text'],
    ['oldfind', 'A version of find(1) which supports older scripts'],
    ['omshell', 'Interact with an ISC DHCP server using OMAPI'],
    ['openvt', 'Start a command on a new virtual terminal (VT)'],
    ['opcontrol', 'Control the OProfile profiling subsystem'],
    ['opendiff', 'Compare and merge files interactively'],
    ['oprofiled', 'Profiling daemon for OProfile'],
    ['osd_cat', 'Display text on the screen'],
    ['osinfo-query', 'Query the libosinfo database for operating system information'],
    ['ostree', 'Manage bootable, immutable Linux system trees'],
    ['outguess', 'Universal steganographic tool'],

    ];

  final List<List<String>> data_17 = [
    ['passwd', 'Change user password'],
    ['paste', 'Merge lines of files'],
    ['patch', 'Apply a diff file to an original'],
    ['pgrep', 'List processes based on name or other attributes'],
    ['pkill', 'Terminate processes based on name or other attributes'],
    ['ping', 'Send ICMP ECHO_REQUEST to network hosts'],
    ['pkexec', 'Execute a command as another user'],
    ['pmap', 'Report memory map of a process'],
    ['popd', 'Change the current directory to the previous directory'],
    ['pr', 'Convert text files for printing'],
    ['printenv', 'Print environment variables'],
    ['printf', 'Format and print data'],
    ['ps', 'Report a snapshot of current processes'],
    ['pwd', 'Print name of current/working directory'],
    ['paste', 'Merge lines of files'],
    ['pathchk', 'Check file name validity and portability'],
    ['perl', 'Practical Extraction and Reporting Language'],
    ['pg', 'PostgreSQL interactive terminal'],
    ['pg_ctl', 'Initialize, start, stop, or control a PostgreSQL database cluster'],
    ['pg_dump', 'Extract a PostgreSQL database into a script file'],
    ['pg_restore', 'Restore a PostgreSQL database from an archive file'],
    ['pgrep', 'List processes based on name or other attributes'],
    ['pkill', 'Terminate processes based on name or other attributes'],
    ['pmap', 'Report memory map of a process'],
    ['pod2html', 'Convert POD documentation to HTML'],
    ['pod2man', 'Convert POD documentation to groff man pages'],
    ['pod2text', 'Convert POD documentation to formatted ASCII text'],
    ['poff', 'Turn off a PPP connection'],
    ['popd', 'Change the current directory to the previous directory'],
    ['poweroff', 'Power off the system'],
    ['pppoff', 'Turn off a PPP connection'],
    ['pppd', 'Point-to-Point Protocol Daemon'],
    ['pr', 'Convert text files for printing'],
    ['printenv', 'Print environment variables'],
    ['printf', 'Format and print data'],
    ['ps', 'Report a snapshot of current processes'],
    ['pstree', 'Display a tree of processes'],
    ['pstop', 'Pause and restart PostScript printers'],
    ['ptx', 'Produce a permuted index'],
    ['puppet', 'A configuration management utility'],
    ['puppetserver', 'The Puppet Server'],
    ['pvs', 'Display information about physical volumes'],
    ['pwd', 'Print name of current/working directory'],

     ];

  final List<List<String>> data_18 = [
    ['quota', 'Display disk usage and limits'],
    ['quotacheck', 'Scan a file system for disk usage and update quota information'],
    ['quotaoff', 'Disable disk quotas for a file system'],
    ['quotaon', 'Enable disk quotas for a file system'],
    ['quotastats', 'Display disk quota statistics'],

     ];


  @override
  Widget build(BuildContext context) {
    if(widget.listIndex == 1) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Commands starts with \'A\''),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_2.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_2[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 1)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                      }
                      else if (index == 2)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 3)));
                      }
                      else if (index == 3)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 4)));
                      }

                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 2) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Getting & Creating'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_3.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_3[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 5)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 6)));

                      }

                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 3) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Basic Snapshotting'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_4.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_4[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 7)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 8)));

                      }
                      else if (index == 2)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 9)));
                      }
                      else if (index == 3)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 10)));
                      }
                      else if (index == 4)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 11)));
                      }
                      else if (index == 5)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 12)));
                      }
                      else if (index == 6)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 13)));
                      }
                      else if (index == 7)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 14)));
                      }
                      else if (index == 8)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 15)));
                      }
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 4) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Branching & Merging'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_5.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_5[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 16)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 17)));

                      }
                      else if (index == 2)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 18)));
                      }
                      else if (index == 3)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 19)));
                      }
                      else if (index == 4)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 20)));
                      }
                      else if (index == 5)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 21)));
                      }
                      else if (index == 6)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 22)));
                      }
                      else if (index == 7)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 23)));
                      }
                      else if (index == 8)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 24)));
                      }

                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 5) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Inspection & Comparison'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_6.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_6[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      color: ksecondcolor,
                      border: Border.all(
                        color: Colors.white,
                        width: 0.5, // Set border width
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(5.0) //                 <--- border radius here
                      ),
                    ),
                    child: ListTile(
                      onTap: ()
                      {
                        if(index == 0)
                        {
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 25)));
                        }
                        else if (index == 1)
                        {
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 26)));

                        }
                        else if (index == 2)
                        {
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 27)));
                        }
                        else if (index == 3)
                        {
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 28)));
                        }
                        else if (index == 4)
                        {
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 29)));
                        }
                      },
                      title: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(row[0],
                            style: GoogleFonts.openSans(textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,))
                        ),
                      ), // Display item name
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(row[1],
                            style: GoogleFonts.openSans(textStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,))
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          IconButton(
                            icon: Icon(Icons.copy, color: Colors.white, size: 20),
                            onPressed: () {
                              _copyToClipboard(
                                  row[0]); // Copy the description to clipboard
                            },
                          ),

                          IconButton(
                            icon: Icon(Icons.share, color: Colors.white, size: 20,),
                            onPressed: () {
                              _share(row[0]); // Share the additional information
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
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
    else if(widget.listIndex == 6) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Handy Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_7.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_7[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 30)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 31)));

                      }
                      else if (index == 2)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 32)));
                      }
                      else if (index == 3)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 33)));
                      }
                      else if (index == 4)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 34)));
                      }
                      else if (index == 5)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 35)));
                      }
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 7) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Patching'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_8.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_8[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 36)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 37)));

                      }
                      else if (index == 2)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 38)));
                      }
                      else if (index == 3)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 39)));
                      }
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 8) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Debugging'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_9.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_9[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 40)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 41)));

                      }
                      else if (index == 2)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 42)));
                      }
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 9) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Guides'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_10.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_10[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 43)));
                      }
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 10) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Emails'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_11.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_11[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 44)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 45)));

                      }
                      else if (index == 2)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 46)));
                      }
                      else if (index == 3)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 47)));
                      }
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 11) {
      return Scaffold(
        appBar: AppBar(
          title: Text('External Systems'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_12.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_12[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 48)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 49)));

                      }
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 12) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Administration'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_13.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_13[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 50)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 51)));

                      }
                      else if (index == 2)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 52)));
                      }
                      else if (index == 3)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 53)));
                      }
                      else if (index == 4)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 54)));
                      }
                      else if (index == 5)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 55)));
                      }
                      else if (index == 6)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 56)));
                      }
                      else if (index == 7)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 57)));
                      }

                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 13) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Server Admin'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_14.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_14[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 58)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 59)));

                      }
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 14) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Plumbing Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_15.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_15[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 60)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 61)));

                      }
                      else if (index == 2)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 62)));

                      }
                      else if (index == 3)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 63)));

                      }
                      else if (index == 4)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 64)));

                      }
                      else if (index == 5)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 65)));

                      }
                      else if (index == 6)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 66)));

                      }
                      else if (index == 7)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 67)));

                      }
                      else if (index == 8)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 68)));

                      }
                      else if (index == 9)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 69)));

                      }
                      else if (index == 10)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 70)));

                      }
                      else if (index == 11)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 71)));

                      }
                      else if (index == 12)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 72)));

                      }
                      else if (index == 13)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 73)));

                      }
                      else if (index == 14)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 74)));

                      }
                      else if (index == 15)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 75)));

                      }
                      else if (index == 16)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 76)));

                      }
                      else if (index == 17)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 77)));

                      }

                      else if (index == 18)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 78)));

                      }

                      else if (index == 19)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 79)));

                      }



                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 15) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Share & Update'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_16.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_16[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 80)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 81)));

                      }
                      else if (index == 2)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 82)));

                      }
                      else if (index == 3)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 83)));

                      }
                      else if (index == 4)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 84)));

                      }
                      else if (index == 5)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 85)));

                      }
                      else if (index == 6)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 86)));

                      }
                      else if (index == 7)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 87)));

                      }
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 16) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Remote Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_17.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_17[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 88)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 89)));

                      }
                      else if (index == 2)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 90)));

                      }
                      else if (index == 3)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 91)));

                      }
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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
    else if(widget.listIndex == 17) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Remote Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_18.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_18[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: ksecondcolor,
                    border: Border.all(
                      color: Colors.white,
                      width: 0.5, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListTile(
                    onTap: ()
                    {
                      if(index == 0)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 92)));
                      }
                      else if (index == 1)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 93)));

                      }
                      else if (index == 2)
                      {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 94)));

                      }
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(row[0],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,))
                      ),
                    ), // Display item name
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(row[1],
                          style: GoogleFonts.openSans(textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,))
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: Icon(Icons.copy, color: Colors.white, size: 20),
                          onPressed: () {
                            _copyToClipboard(
                                row[0]); // Copy the description to clipboard
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white, size: 20,),
                          onPressed: () {
                            _share(row[0]); // Share the additional information
                          },
                        ),
                      ],
                    ),
                  ),
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

  void _share(String text) {
    Share.share(text); // Share the provided text
  }

  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Git Command Copied to clipboard')),
    );
  }

}
