# API — mulle_absolutetime_t

`mulle_absolutetime_t` is an alias for `mulle_timeinterval_t` (a `double`)
that holds an **absolute** timestamp relative to system boot.

## Epoch and suspend semantics

* The value is seconds since system boot (like a diff on `uptime`).
* It is monotonic while the process runs and does not reflect wall-clock
  changes or NTP adjustments.
* Suspend behavior is platform dependent:
  * POSIX: based on `CLOCK_MONOTONIC`, which typically excludes time spent in
    system suspend.
  * Windows: based on `QueryPerformanceCounter`, whose behavior during
    suspend is hardware dependent.
* Do not rely on it counting elapsed wall-clock time across a
  suspend/resume cycle, and never mix it with `mulle_calendartime_t`.

## Functions

```c
mulle_absolutetime_t   mulle_absolutetime_now( void);
```

Returns the current absolute time.

```c
mulle_absolutetime_t   mulle_absolutetime_make( mulle_timeinterval_t value);
void                   mulle_absolutetime_init( mulle_absolutetime_t *p, mulle_timeinterval_t value);
void                   _mulle_absolutetime_init( mulle_absolutetime_t *p, mulle_timeinterval_t value);
```

Constructors from a plain time interval. The `_`-prefixed variant skips the
`NULL` pointer check.

```c
mulle_absolutetime_t   mulle_absolutetime_init_with_timespec( struct timespec a);
mulle_absolutetime_t   mulle_absolutetime_init_with_s_ns( time_t tv_sec, long tv_nsec);
```

Convert a `struct timespec` (or seconds/nanoseconds) to absolute time. The
seconds parameter is a `time_t`, so post-2038 timestamps are not truncated on
64-bit platforms.

## Range type

```c
struct mulle_absolutetimerange
{
   mulle_absolutetime_t   start;
   mulle_absolutetime_t   end;   // inclusive
};

struct mulle_absolutetimerange   mulle_absolutetimerange_make( mulle_absolutetime_t start, mulle_absolutetime_t end);
void                             mulle_absolutetimerange_init( struct mulle_absolutetimerange *p, mulle_absolutetime_t start, mulle_absolutetime_t end);
void                             _mulle_absolutetimerange_init( struct mulle_absolutetimerange *p, mulle_absolutetime_t start, mulle_absolutetime_t end);

#define MULLE_ABSOLUTETIMERANGE_DATA( start, end)  ...
```

## Arithmetic rules

| Expression                                             | Result                     |
|--------------------------------------------------------|----------------------------|
| `absolutetime + absolutetime`                          | invalid                    |
| `absolutetime + relativetime`                          | `absolutetime`             |
| `relativetime + absolutetime`                          | `absolutetime`             |
| `relativetime + relativetime`                          | `relativetime`             |
| `absolutetime - absolutetime`                          | `relativetime`             |
| `absolutetime - relativetime`                          | `absolutetime`             |
| `relativetime - absolutetime`                          | invalid                    |
| `relativetime - relativetime`                          | `relativetime`             |

## Platform notes

* POSIX: implemented with `clock_gettime(CLOCK_MONOTONIC)`.
* Windows: implemented with `QueryPerformanceCounter`/`QueryPerformanceFrequency`.

## Failure behavior

* On POSIX, a failed `clock_gettime` call returns `0.0`.
* No other failure modes exist; the functions never block and never allocate.
