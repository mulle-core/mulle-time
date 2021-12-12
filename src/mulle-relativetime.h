#ifndef mulle_relativetime_h__
#define mulle_relativetime_h__

#include "mulle-timetype.h"


// It's simple. mulle_absolutetime_t is a FP number containing seconds as a timestamp
// relative to a reference date which is defined in mulle-time.h. But still an
// absolute time. mulle_relativetime_t is a time duration, also in FP seconds. So
// 0.25 is a quarter second.
//
// Arithmetic on mulle_absolutetime_t and mulle_relativetime_t has six useful
// operations
//
// 1. mulle_absolutetime_t + mulle_absolutetime_t = invalid
// 2. mulle_absolutetime_t + mulle_relativetime_t = mulle_absolutetime_t
// 3. mulle_relativetime_t + mulle_absolutetime_t = mulle_absolutetime_t
// 4. mulle_relativetime_t + mulle_relativetime_t = mulle_relativetime_t
//
// 5. mulle_absolutetime_t - mulle_absolutetime_t = mulle_relativetime_t
// 6. mulle_absolutetime_t - mulle_relativetime_t = mulle_absolutetime_t
// 7. mulle_relativetime_t - mulle_absolutetime_t = invalid
// 8. mulle_relativetime_t - mulle_relativetime_t = mulle_relativetime_t
//
typedef mulle_timeinterval_t   mulle_relativetime_t;


static inline void   _mulle_relativetime_init( mulle_relativetime_t *p, mulle_timeinterval_t value)
{
   *p = value;
}


static inline void   mulle_relativetime_init( mulle_relativetime_t *p, mulle_timeinterval_t value)
{
   if( p)
      _mulle_relativetime_init( p, value);
}


static inline mulle_relativetime_t
   mulle_relativetime_init_with_s_ns( int tv_sec, long tv_nsec)
{
   return( tv_sec + tv_nsec / (double) (1000L*1000*1000));
}



static inline mulle_relativetime_t   mulle_relativetime_now( void)
{
   return( (mulle_relativetime_t) mulle_timeinterval_now_monotonic());
}


struct mulle_relativetimerange
{
   mulle_relativetime_t   delay;
   mulle_relativetime_t   duration;
};


static inline struct mulle_relativetimerange
   mulle_relativetimerange_make( mulle_relativetime_t delay,
                                 mulle_relativetime_t duration)
{
    struct mulle_relativetimerange result = { delay, duration };
    return result;
}


static inline void
   mulle_relativetimerange_init( struct mulle_relativetimerange *p,
                                 mulle_relativetime_t delay,
                                 mulle_relativetime_t duration)
{
   if( p)
   {
      p->delay    = delay;
      p->duration = duration;
   }
}


#endif
