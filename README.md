# RANDOM SCRIPTS

## WTF IS THIS?

After losing interest in my other project [CLIPC](https://github.com/joelmaxuel/cli-productivity-config), I got rather obsessed with a persistent `tmux` session with `mutt`, `khal`, `newsboat`, and many others. Over the years as I would ssh into this text-based UI, I desired to hold more and more small pieces of info in a highly-synchronized state - so that I could sit down in front of any hardware - a P4-era laptop, a Raspberry Pi, or something modern - and have access to the same things. 

Initially this was with Nextcloud, but I switched to Syncthing and a collection of smaller tools so that I could satisfy a lowest-common-denominator problem. I'm an Obsidian-head in the GUI but also have `vimwiki` on my side for no-nonsense electronic notetaking, even though NeoVim is something I'm still a novice with (I'm an old man, afterall).

A couple years ago I started to realize that I do need to track website bookmarks across multiple computers (and browsers) better, and while the OneTab plugin makes this task somewhat easier, I started down the path of filling in gaps in ways that make sense to me.

Then other realizations came up. Then, (just like with CLIPC) it became practical to post this stuff.

## WTF ARE THESE?

### `onetab`

This is the script that started it all, and is a script acting as a wrapper in lieu of an interface.

It helps manage a text file, specifically to handle large blocks of URLs that the OneTab browser plugin will offer within the Import/Export function. The text file uses an initial column for grouping purposes, but that structure is for our sake and the script offers option to never have this be a problem with the browser plugin itself. Structure example being:

    Example Group | http://127.0.0.1 | Localhost

Invoke the script without any parameters and you will get a list of options available.

### `bookmk.sh`

This (and the remaining) are intended to be bound to hotkeys, Such as:

    # .config/awesome/configuration/keys/global.lua
    -- Bookmark Picker
    awful.key(
      {modkey},
      'F7',
      function()
        awful.util.spawn('bookmk.sh')
      end,
      {description = 'picker URL to send to buffer', group = 'launcher'}
    )

This one reads the OneTab.txt file to type out the relevant URL, wherever the cursor is currently placed.

### `emojis.sh`

Retrieves (and types out) an emoji, searchable by description.

### `phrases.sh` 

Retrieves (and types out) a canned text response. Inspired by a macro's feature within ProComm Plus, to (for instance) speed up message responses in BBSes and text-based internet scenarios. Thank you to Richard Bonner (who was also the inspiration of CLIPC) for the idea.

### `paste.sh`

Sometimes I'm without a middle-mouse button. Sometimes I'm faced interacting with a website who takes "security" so seriously, you are not allowed to paste in complex passwords (that's right, if you're forced to type in passwords by hand these days, you can count on them in aggregate not being as complex). Sometimes I just need a "special" paste option to get around these limitations.

## SUPPORT?

It's not that I'm not online anymore, but I have only a few spots that I check regularly. Github is not one of them. Expect delays... I tend to pop in once a year. The XDA plzbr0 culture made me this way. That being said, I appreciate gifts in the form of apropos pull requests.
