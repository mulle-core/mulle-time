#ifndef mulle_timetype_h__
#define mulle_timetype_h__

#include <mulle-c11/mulle-c11.h>

#ifndef MULLE_TIME_EXTERN_GLOBAL
# define MULLE_TIME_EXTERN_GLOBAL MULLE_C_EXTERN_GLOBAL
#endif


typedef enum
{
   MulleTimeAscending  = -1,
   MulleTimeSame       = 0,
   MulleTimeDescending = 1
} mulle_time_comparison_t;


#define MULLE_TIMEINTERVAL_SINCE_1970            978307200.0

// compatible values
#define MULLE_TIMEINTERVAL_DISTANT_FUTURE   63113904000.0
#define MULLE_TIMEINTERVAL_DISTANT_PAST    -63114076800.0


// will be typedef to NSTimeInterval
typedef double   mulle_timeinterval_t;

// can produce absolute time or relative
static inline mulle_timeinterval_t
   mulle_timeinterval_add( mulle_timeinterval_t a, mulle_timeinterval_t b)
{
   return( a + b);
}


// can produce absolute time or relative
static inline mulle_timeinterval_t
   mulle_timeinterval_subtract( mulle_timeinterval_t a, mulle_timeinterval_t b)
{
   return( a - b);
}


// timespec is preferable, timeval is like a fallback for unix
// it's usually not a problem to comment it out for platforms
// that don't support it

//
// TODO: make this a fail, if _GNU_SOURCE is undefined on linux
//       instead of secretly setting it
//
#ifndef  _GNU_SOURCE
# define _GNU_SOURCE
#endif

#include <time.h>

#endif
