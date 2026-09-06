### 1.3.2






* ``mulle_relativetime_make_with_timespec`` now returns the correct value (previously used ``tv_sec`` for both seconds and nanoseconds)
* ``timespec_make_with_relativetime`` produces canonical results for negative values and safely handles NaN, infinities, and out-of-range doubles instead of invoking undefined behavior
* `timespec`/`timeval` add, sub, and compare helpers now assert canonical inputs `(`tv_nsec`/`tv_usec`` in range) in debug builds
* Windows ``mulle_timeinterval_now_monotonic`` is now based on `QueryPerformanceCounter` instead of wall-clock file time
* ``mulle_timeinterval_mod`` and ``mulle_timeinterval_quantize`` reject NaN/infinite/invalid operands and avoid undefined behavior on overflowing quotients
* ``mulle_relativetime_sleep`` retries EINTR-interrupted `nanosleep`, and the Windows fallback chunks long sleeps safely
* new ``mulle_timeinterval_is_finite`` inline helper
* ``_GNU_SOURCE`` is now only defined by `mulle-timetype.h` when glibc feature detection has not already run



* added API documentation link to README

### 1.3.1

Various small improvements
