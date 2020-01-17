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
- [`x11-terms/valleyTERM`](https://github.com/Phate6660/term) - A VTE-based Gtk terminal, created to be minimal yet fully-featured.

Here is what is planned to be included:
- [`app-misc/rsfetch`](https://github.com/rsfetch/rsfetch) - A neofetch-esque info fetch tool written in Rust.
- [`dev-python/PyRoman`](https://github.com/ncdulo/pyroman) - A Roman numeral conversion library written for Python 3.6. Includes a Gtk3 wrapper.
- `games-misc/fortune-mod-gentoo-dev` - Fortune database of #gentoo-dev quotes.
- `games-misc/fortune-mod-gentoo-forums` - Fortune database of quotes from forums.gentoo.org.
- [`games-misc/fortune-mod-mythical-linux`](https://github.com/ncdulo/fortune-mod-mythical-linux) - Fortune database of quotes from the Mythical Linux Discord server. Repo description: A collection of various Phate-isms and Tredixions.
