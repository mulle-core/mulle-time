# API — struct timespec

Helpers for `struct timespec` (seconds + nanoseconds), which is used by
`nanosleep` and preferred for precise representation.

## Header

`#include <mulle-time/mulle-timespec.h>`

Requires POSIX `struct timespec`. On glibc the library defines `_GNU_SOURCE`
unless glibc feature detection has already run; include `mulle-time.h` before
other system headers if you rely on this.

## Now and sleep

```c
mulle_timeinterval_t   mulle_timeinterval_now( void);
mulle_timeinterval_t   mulle_timeinterval_now_monotonic( void);
void                   mulle_relativetime_sleep( mulle_relativetime_t time);
```

See `dox/API_TIMEINTERVAL.md` and `dox/API_RELATIVETIME.md` for contracts.

## Comparison

```c
mulle_time_comparison_t   timespec_compare( struct timespec a, struct timespec b);
```

Returns `MulleTimeDescending` / `MulleTimeAscending` / `MulleTimeSame`.

## Arithmetic

```c
struct timespec   timespec_add( struct timespec a, struct timespec b);
struct timespec   timespec_sub( struct timespec a, struct timespec b);
```

Results are canonical for canonical inputs: `tv_nsec` is kept in `[0, 1e9)`
with carry/borrow propagated into `tv_sec`. Negative results are represented
with a negative `tv_sec` and a non-negative `tv_nsec`.

Inputs must be canonical: `tv_nsec` in `[0, 1e9)`. This is enforced with
`assert()` in debug builds (`NDEBUG` not defined); release builds assume
canonical inputs without checking. `timespec_compare` likewise requires
canonical inputs. The seconds arithmetic is not overflow-checked. These
helpers are intended for ordinary, near-canonical durations.

## Conversions

```c
struct timespec            timespec_make_with_relativetime( mulle_relativetime_t time);
mulle_relativetime_t       mulle_relativetime_make_with_timespec( struct timespec a);
struct timespec            mulle_relativetime_get_timespec( mulle_relativetime_t time);  // deprecated alias
```

`timespec_make_with_relativetime`:

* Valid range: `|time| < 2^63` seconds (the `long long` range). `NaN`,
  infinities, and out-of-range values produce a zero timespec `{0, 0}`.
* Output is canonical: `tv_nsec` in `[0, 1e9)`, `tv_sec = floor(time)`.
  Negative inputs are handled correctly (e.g. `-0.5` → `{-1, 500000000}`).
* The fractional part is converted with `frac * 1e9`; the double conversion
  limits resolution to ~µs scale at epoch-magnitude seconds.

`mulle_relativetime_make_with_timespec` computes `tv_sec + tv_nsec / 1e9`
in `double` precision directly from the fields. `tv_sec` is passed as a
`time_t` (post-2038 timestamps are not truncated on 64-bit platforms) and
`tv_nsec` as a `long`. It accepts negative `tv_sec`/`tv_nsec` without
normalization. The result is limited by `double` precision like every other
`mulle_timeinterval_t` value.

## Platform notes

* Available everywhere the library compiles; on Windows `struct timespec`
  comes from the platform headers.
