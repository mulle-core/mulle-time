# API — mulle_timeinterval_t

`mulle_timeinterval_t` is the base time type, a `double` holding seconds.
It is the storage type behind `mulle_absolutetime_t`,
`mulle_calendartime_t`, and `mulle_relativetime_t`.

## Units and precision

* Seconds, stored as a `double` (will be typedef'ed to `NSTimeInterval` in
  mulle-objc).
* A `double` has 53 bits of mantissa: at Unix epoch scale (~1.7e9 s) the
  representable increment is ~2^32 ns ≈ 4.3 µs. Precision degrades with
  magnitude; use `timespec` when sub-µs precision or exact ordering at large
  values is required.

## Constants

```c
#define MULLE_TIMEINTERVAL_SINCE_1970            978307200.0
#define MULLE_TIMEINTERVAL_DISTANT_FUTURE   63113904000.0
#define MULLE_TIMEINTERVAL_DISTANT_PAST    -63114076800.0
```

* `MULLE_TIMEINTERVAL_SINCE_1970` is the offset in seconds between the Unix
  epoch (1970) and the Cocoa reference date (2001). It exists for
  compatibility; the calendar epoch used by `mulle_timeinterval_now` is the
  Unix epoch (1970).
* `DISTANT_FUTURE`/`DISTANT_PAST` are "compatible" sentinel values.

## Comparison

```c
typedef enum
{
   MulleTimeAscending  = -1,
   MulleTimeSame       = 0,
   MulleTimeDescending = 1
} mulle_time_comparison_t;
```

Returned by `timespec_compare` and `timeval_compare`.

## Functions

```c
mulle_timeinterval_t   mulle_timeinterval_now( void);
mulle_timeinterval_t   mulle_timeinterval_now_monotonic( void);
```

* `now`: wall-clock (calendar) time, Unix seconds. May jump on clock/NTP
  adjustments.
* `now_monotonic`: monotonic time since an arbitrary origin. Use for
  animation and timing.

```c
mulle_timeinterval_t   mulle_timeinterval_add( mulle_timeinterval_t a, mulle_timeinterval_t b);
mulle_timeinterval_t   mulle_timeinterval_subtract( mulle_timeinterval_t a, mulle_timeinterval_t b);
```

Plain addition/subtraction.

```c
mulle_timeinterval_t   mulle_timeinterval_mod( mulle_timeinterval_t value, mulle_timeinterval_t m);
```

Floor-based modulo. Result is in `[0, m)` for `m > 0`. `NaN`, infinite
values, and invalid `m` (nonpositive, `NaN`, or infinite) return `0.0`.
Values whose quotient with `m` does not fit into `long long` (e.g. `1e308`
mod `1e-9`) also return `0.0`; no undefined behavior occurs.

```c
mulle_timeinterval_t   mulle_timeinterval_quantize( mulle_timeinterval_t value, mulle_timeinterval_t rate);
```

"Snaps" `value` to the nearest multiple of `rate` (e.g. `1.0` with a rate of
`0.3` returns `0.9`; `1.1` returns `1.2`). Negative values quantize
symmetrically to positive values; ties round up (away from zero). A
nonpositive, `NaN`, or infinite `rate` is invalid and returns `value`
unchanged; `NaN` and infinite values are likewise returned unchanged.

## Range type

```c
struct mulle_timeintervalrange
{
   mulle_timeinterval_t   start;
   mulle_timeinterval_t   end;
};

struct mulle_timeintervalrange   mulle_timeintervalrange_make( mulle_timeinterval_t start, mulle_timeinterval_t end);
```

## Failure behavior

* On POSIX, a failed `clock_gettime` call returns `0.0` from the `now`
  functions.

## Platform notes

* POSIX: `clock_gettime(CLOCK_REALTIME)` / `clock_gettime(CLOCK_MONOTONIC)`.
* Windows: `GetSystemTimeAsFileTime` (converted to Unix seconds) /
  `QueryPerformanceCounter`.
