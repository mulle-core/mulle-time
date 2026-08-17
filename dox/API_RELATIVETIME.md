# API — mulle_relativetime_t

`mulle_relativetime_t` is an alias for `mulle_timeinterval_t` (a `double`)
that holds a **relative** quantity of time, such as a delay or a duration.

## Units

* Seconds, stored as a `double`.
* Negative values are legal (e.g. "before now"); callers must define what a
  negative relative time means for their use.
* Precision: the double representation loses sub-microsecond precision at
  large magnitudes. Prefer `timespec` for storage and ordering where
  nanosecond precision at large values matters.

## Functions

```c
mulle_relativetime_t   mulle_relativetime_now( void);
```

Returns the elapsed seconds since the library was loaded (program start).

```c
mulle_relativetime_t   mulle_relativetime_make_with_s_ns( time_t tv_sec, long tv_nsec);
mulle_relativetime_t   mulle_relativetime_init_with_s_ns( time_t tv_sec, long tv_nsec);  // deprecated name
```

Construct a relative time from seconds (a `time_t`, so post-2038 timestamps
are not truncated on 64-bit platforms) and nanoseconds.

```c
void   mulle_relativetime_init( mulle_relativetime_t *p, mulle_timeinterval_t value);
void   _mulle_relativetime_init( mulle_relativetime_t *p, mulle_timeinterval_t value);
```

Constructors from a plain time interval. The `_`-prefixed variant skips the
`NULL` pointer check.

## Range type

```c
struct mulle_relativetimerange
{
   mulle_relativetime_t   delay;      // how long to wait
   mulle_relativetime_t   duration;   // how long something lasts
};

struct mulle_relativetimerange   mulle_relativetimerange_make( mulle_relativetime_t delay, mulle_relativetime_t duration);
void                             mulle_relativetimerange_init( struct mulle_relativetimerange *p, mulle_relativetime_t delay, mulle_relativetime_t duration);

#define MULLE_RELATIVETIMERANGE_DATA( delay, duration)  ...
```

## Sleep

```c
void   mulle_relativetime_sleep( mulle_relativetime_t time);
```

Suspends the calling thread for `time` seconds. Returns immediately for
`time <= 0.0`. Best-effort: retries an interrupted `nanosleep` until the
requested duration has fully elapsed; a non-`EINTR` failure returns early.

## Arithmetic rules

See the absolutetime/calendartime tables: `relativetime ± relativetime` is
always a `relativetime`; combining a `relativetime` with an absolute type
yields that absolute type.

## Platform notes

* POSIX: implemented with `nanosleep`.
* Windows: implemented with `CreateWaitableTimerExW` (high-resolution flag
  used when the 10.2004+ SDK provides it), falling back to chunked `Sleep`.
