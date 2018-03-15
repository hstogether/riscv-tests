# See LICENSE for license details.

#*****************************************************************************
# recoding.S
#-----------------------------------------------------------------------------
#
# Test corner cases of John Hauser's microarchitectural recoding scheme.
# There are twice as many recoded values as IEEE-754 values; some of these
# extras are redundant (e.g. Inf) and others are illegal (subnormals with
# too many bits set).
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64UH
RVTEST_CODE_BEGIN

  # Make sure infinities with different mantissas compare as equal.
  la x1, tdat
  flh h0, 0(x1)
  flh h1, 4(x1)
  fmul.h h1, h1, h0
  TEST_CASE( 2, a0, 1, feq.h a0, h0, h1)
  TEST_CASE( 3, a0, 1, fle.h a0, h0, h1)
  TEST_CASE( 4, a0, 0, flt.h a0, h0, h1)

  # Likewise, but for zeroes.
  fcvt.h.w h0, x0
  li a0, 1
  fcvt.h.w h1, a0
  fmul.h h1, h1, h0
  TEST_CASE(5, a0, 1, feq.h a0, h0, h1)
  TEST_CASE(6, a0, 1, fle.h a0, h0, h1)
  TEST_CASE(7, a0, 0, flt.h a0, h0, h1)

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

tdat:
.int 64512 
.int 16896 

RVTEST_DATA_END
