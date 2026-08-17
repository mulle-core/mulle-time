# API — mulle_calendartime_t

`mulle_calendartime_t` is an alias for `mulle_timeinterval_t` (a `double`)
that holds a **calendar/wall-clock** timestamp.

## Epoch

* The value is seconds relative to the Unix epoch (1970-01-01T00:00:00Z),
  i.e. the same scale as `time()`.
* `mulle_calendartime_now` is derived from `CLOCK_REALTIME` (POSIX) or the
  system file time (Windows), both of which count real elapsed time.
* It "jumps" when the system clock is adjusted, when the timezone changes, or
  across a suspend/resume cycle. Do not use it for measuring durations.

## Functions

```c
mulle_calendartime_t   mulle_calendartime_now( void);
```

Returns the current wall-clock time.

```c
mulle_calendartime_t   mulle_calendartime_make( mulle_timeinterval_t value);
void                   mulle_calendartime_init( mulle_calendartime_t *p, mulle_timeinterval_t value);
void                   _mulle_calendartime_init( mulle_calendartime_t *p, mulle_timeinterval_t value);
```

Constructors from a plain time interval. The `_`-prefixed variant skips the
`NULL` pointer check.

## Range type

```c
struct mulle_calendartimerange
{
   mulle_calendartime_t   start;
   mulle_calendartime_t   end;   // inclusive
};

struct mulle_calendartimerange   mulle_calendartimerange_make( mulle_calendartime_t start, mulle_calendartime_t end);
void                             mulle_calendartimerange_init( struct mulle_calendartimerange *p, mulle_calendartime_t start, mulle_calendartime_t end);
void                             _mulle_calendartimerange_init( struct mulle_calendartimerange *p, mulle_calendartime_t start, mulle_calendartime_t end);

#define MULLE_CALENDARTIMERANGE_DATA( start, end)  ...
```

## Arithmetic rules

| Expression                                          | Result                     |
|-----------------------------------------------------|----------------------------|
| `calendartime + calendartime`                       | invalid                    |
| `calendartime + relativetime`                       | `calendartime`             |
| `relativetime + calendartime`                       | `calendartime`             |
| `relativetime + relativetime`                       | `relativetime`             |
| `calendartime - calendartime`                       | `relativetime`             |
| `calendartime - relativetime`                       | `calendartime`             |
| `relativetime - calendartime`                       | invalid                    |
| `relativetime - relativetime`                       | `relativetime`             |

You must **not** mix `mulle_calendartime_t` and `mulle_absolutetime_t` in
arithmetic; the two use different epochs and clocks.

## Platform notes

* POSIX: implemented with `clock_gettime(CLOCK_REALTIME)`.
* Windows: implemented with `GetSystemTimeAsFileTime`, converted to Unix
  seconds by subtracting the 1601→1970 offset.

## Failure behavior

* On POSIX, a failed `clock_gettime` call returns `0.0`.
* No other failure modes exist.
