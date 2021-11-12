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
#ifdef _WIN32

#include <windows.h>

// https://stackoverflow.com/questions/5404277/porting-clock-gettime-to-windows

mulle_timeinterval_t   mulle_timeinterval_now( void)
{  
	__int64   wintime; 

	GetSystemTimeAsFileTime((FILETIME*)&wintime);
   wintime -=116444736000000000i64;  //1jan1601 to 1jan1970
   return( (mulle_timeinterval_t) wintime / 10000000.0);
}

#else

mulle_timeinterval_t   mulle_timeinterval_now( void)
{
   struct timespec   now;

   clock_gettime( CLOCK_REALTIME, &now);
   return( now.tv_sec + now.tv_nsec / (1000.0*1000*1000));
}
#endif

