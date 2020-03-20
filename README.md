# Description
##### NOTE: This is still in the process of being made. Even though the overlay itself works, the ebuilds are still being worked on.
##### So use it at your own risk.<br>
----
This is a custom overlay for Gentoo made through a group effort between ncdulo and I.<br>
This overlay is for software created by Phate6660, ncdulo, other programmers we may know, and any software we want that is missing from portage.<br>

# Installation
You see that `p6nc.conf` in the repo right? Ok, good. Now here's what you need to do.<br> 
Check out `/etc/portage/repos.conf`.<br>
Now you have 2 options.<br>
- If it is a file, append the contents of `p6nc.conf` to it.
- If it is a directory, copy `p6nc.conf` to it.<br>
<br>
After that, all you need to do is sync. :)

# Software
Currently, here is what is included:
- [`x11-terms/valleyTERM`](https://github.com/Phate6660/term) - A VTE-based Gtk terminal, created to be minimal yet fully-featured.
- [`games-misc/fortune-mod-mythical-linux`](https://github.com/ncdulo/fortune-mod-mythical-linux) - Fortune database of quotes from the Mythical Linux Discord server.
- [`app-misc/rsfetch`](https://github.com/rsfetch/rsfetch) - A neofetch-esque info fetch tool written in Rust. 
- [`app-portage/pkg-gentoo`](https://github.com/Phate6660/pkg) - An emerge wrapper with extra features written in Rust.
- [`media-sound/cli-visualizer`](https://github.com/dpayne/cli-visualizer) - The best audio visualizer. Fight me.

Notes for rsfetch: 
1. Requires `rust` or `rust-bin`. `rust` takes precedence, so if you want `rust-bin` instead make sure to specify installing that as well. Like this: `sudo emerge -atv rust-bin rsfetch`.
2. This is the same for SSL. OpenSSL take precedence, but you can specify LibreSSL if you prefer that.

Notes for pkg:
1. Same as rsfetch (number one, not two).
2. Even though the package is called `pkg-gentoo`, the binary for it is `pkg`.

Here is what is planned to be included:
- [`dev-python/PyRoman`](https://github.com/ncdulo/pyroman) - A Roman numeral conversion library written for Python 3.6. Includes a Gtk3 wrapper.
- `games-misc/fortune-mod-gentoo-dev` - Fortune database of #gentoo-dev quotes.
- `games-misc/fortune-mod-gentoo-forums` - Fortune database of quotes from forums.gentoo.org.
- [`media-sound/cava`](https://github.com/karlstav/cava) - The second best audio visualizer.
- `games-engines/openmw-9999` - Stable already included in main Gentoo overlay, but not nightly/git.
