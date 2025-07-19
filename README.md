# OpenComputers Event Listener Program
## Description
A simple program useful for discovering and understanding events in OpenComputers.
## How to use it?
Simply install the provided Lua file anywhere on the computer you're using (/usr/bin is recommended, obviously, but it should work regardless of where it's installed.)

Once installed, you can run it to immediately begin logging any events raised by the installed OS or any attached components.

Press Ctrl+C while the program is running to close it.
## Command-line flags
This program comes with three command line flags that control how events are logged while it is running. 

The flags are as follows:
-v: Enable verbose logging. With verbose logging enabled, all values passed by the event are listed in order, instead of just the event name.
-q: Enable quiet mode. The program will not write to stdout in quiet mode. This flag implies -w.
-w: File logging mode. The program will log events to `event_logger.log` in the current working directory. This flag is implied by -q.
