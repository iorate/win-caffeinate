# win-caffeinate
A port of `caffeinate` command from macOS to Windows. It can prevent the display and system from idle sleeping.

## Example
```
$ caffeinate make
```

`caffeinate` executes `make` and prevents the system from sleeping while `make` is running.

```
$ caffeinate -dit3600
```

`caffeinate` prevents the display and system from sleeping for 3600 seconds.

## Requirements
To run it, Windows 7 or later is required. To build it, a compiler that supports C++14 is required.

## Usage
```
$ caffeinate --help
Usage: caffeinate [OPTION...] [UTILITY...]
  prevent the system from sleeping

Options:
  -h         --help            display this help and exit
  -v         --version         display the version info and exit
  -d         --display         prevent the display from sleeping
  -i         --system-idle     prevent the system from idle sleeping (default)
  -t PERIOD  --timeout=PERIOD  specify the timeout value in seconds
  -w PID     --wait=PID        wait for the process with the specified pid to
                               exit
```

## Author
[iorate](https://github.com/iorate) ([Twitter](https://twitter.com/iorate))

## License
[Boost Software License 1.0](LICENSE_1_0.txt)
