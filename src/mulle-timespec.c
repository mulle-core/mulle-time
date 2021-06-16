#define _GNU_SOURCE

#include "mulle-timetype.h"

//
// this could be an inline function as well, and the whole library a header
// but due to the retarded way linux headers are super-restrictive by default
// we MUST define something like _GNU_SOURCE to get the CLOCK_REALTIME
// constant.
//
// Forcing everyone else to set _GNU_SOURCE who wants to include mulle-time.h
// is misery.
//
mulle_timeinterval_t   mulle_timeinterval_now( void)
{
   struct timespec   now;

   clock_gettime( CLOCK_REALTIME, &now);
   return( now.tv_sec + now.tv_nsec / (1000.0*1000*1000));
}
