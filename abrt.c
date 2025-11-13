#include "internal.h"

void
Init_abrt(void)
{
  rb_eval_string(
    "  begin\n"
    "    require 'abrt'\n"
    "  rescue LoadError\n"
    "  end\n"
  );
}
