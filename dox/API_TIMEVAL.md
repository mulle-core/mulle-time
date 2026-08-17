# API — struct timeval

Helpers for `struct timeval` (seconds + microseconds), a fallback
representation for platforms where `timespec` is not available.

## Header

`#include <mulle-time/mulle-timeval.h>`

Note: the umbrella header `mulle-time.h` omits `mulle-timeval.h` on `_WIN32`
(no POSIX `sys/time.h`). On non-Windows platforms it is included. For
portable code that must use `timeval`, include the header directly on
platforms that provide it.

## Comparison

```c
mulle_time_comparison_t   timeval_compare( struct timeval a, struct timeval b);
```

Returns `MulleTimeDescending` / `MulleTimeAscending` / `MulleTimeSame`.

## Arithmetic

```c
struct timeval   timeval_add( struct timeval a, struct timeval b);
struct timeval   timeval_sub( struct timeval a, struct timeval b);
```

Results are canonical for canonical inputs: `tv_usec` is kept in `[0, 1e6)`
with carry/borrow propagated into `tv_sec`. Negative results are represented
with a negative `tv_sec` and a non-negative `tv_usec`.

Inputs must be canonical: `tv_usec` in `[0, 1e6)`. This is enforced with
`assert()` in debug builds (`NDEBUG` not defined); release builds assume
canonical inputs without checking. `timeval_compare` likewise requires
canonical inputs. The seconds arithmetic is not overflow-checked.

## Units

* Seconds and microseconds; resolution is 1 µs, which is coarser than
  `timespec` (1 ns). Prefer `timespec` where available.

## Failure behavior

* Pure arithmetic; no failure modes, no allocation, no blocking.
