#ifndef INCLUDED_ROBOCAR_CHRONO_FOR_DURATION_HPP_
#define INCLUDED_ROBOCAR_CHRONO_FOR_DURATION_HPP_


#include <chrono>
#include <utility>


namespace robocar { namespace chrono {


template <typename Duration, typename Functor>
void for_duration(Duration&& duration, const Functor& functor)
{
  using clock = std::chrono::high_resolution_clock;
  using std::chrono::duration_cast;

  Duration elapsed {0};

  for (clock::time_point begin {clock::now()};
       elapsed < duration;
       elapsed = duration_cast<Duration>(clock::now() - begin))
  {
    functor(elapsed, duration);
  }
}


}} // namespace robocar::chrono


#endif
