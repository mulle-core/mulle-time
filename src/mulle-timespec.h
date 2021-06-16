#ifndef mulle_timespec_h__
#define mulle_timespec_h__

#include "mulle-timetype.h"


mulle_timeinterval_t   mulle_timeinterval_now( void);


// timespec as used by nanosleep

static inline mulle_time_comparison_t   timespec_compare( struct timespec a,
                                                          struct timespec b)
{
   if( a.tv_sec > b.tv_sec)
      return( MulleTimeDescending);
   if( a.tv_sec < b.tv_sec)
      return( MulleTimeAscending);
   if( a.tv_nsec > b.tv_nsec)
      return( MulleTimeDescending);
   if( a.tv_nsec < b.tv_nsec)
      return( MulleTimeAscending);
   return( MulleTimeSame);
}


static inline struct timespec   timespec_add( struct timespec a,
                                              struct timespec b)
{
   struct timespec   result;
   int               carry;

   result.tv_nsec = a.tv_nsec + b.tv_nsec;
   carry = result.tv_nsec >= (1000L*1000*1000);
   if( carry)
      result.tv_nsec -= (1000L*1000*1000);
   result.tv_sec = a.tv_sec + b.tv_sec + carry;
   return( result);
}


static inline struct timespec   timespec_sub( struct timespec a,
                                              struct timespec b)
{
   struct timespec   result;
   int               carry;

   result.tv_nsec = a.tv_nsec - b.tv_nsec;
   carry = result.tv_nsec < 0;
   if( carry)
      result.tv_nsec += (1000L*1000*1000);
   result.tv_sec = a.tv_sec - b.tv_sec - carry;
   return( result);
}

#endif
