# Description
##### NOTE: This is still in the process of being made. Even though the overlay itself works, the ebuilds are still being worked on.
##### So use it at your own risk.<br>
----
This is a custom overlay for Gentoo made through a group effort between ncdulo and I.<br>
This overlay is for software created by me, ncdulo, other programmers we may know, and any software we want that is missing from portage.<br>

# Installation
You see that `phate.conf` in the repo right? Ok, good. Now here's what you need to do.<br> 
Check out `/etc/portage/repos.conf`.<br>
Now you have 2 options.<br>
- If it is a file, append the contents of `phate.conf` to it.
- If it is a directory, copy `phate.conf` to it.<br>
<br>
After that, all you need to do is sync. :)

# Software
Currently, here is what is included:
- x11-terms/valleyTERM - This is a terminal made by me, with some help by ncdulo.

Here is what is planned to be included:
- rsfetch - A neofetch-esque info fetch tool written in Rust. Written by me, with help from some contributors and Reddit.
