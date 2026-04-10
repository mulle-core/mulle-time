## 1.3.0







feature: add relative-time sleep API and harden relative-time initialization

* add `mulle_relativetime_sleep(mulle_relativetime_t)` — blocks the current thread for the given relative time (uses Windows high-resolution waitable timers with Sleep fallback; POSIX nanosleep on Unix)
* export and harden `mulle_relativetime_now():` initialize load timestamp to INFINITY and check with isinf() to avoid incorrect startup assertions
* add standardized include.h / include-private.h to centralize public/private exports (defines `MULLE__TIME_GLOBAL)`
