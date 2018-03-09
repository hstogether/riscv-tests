# See LICENSE for license details.

#*****************************************************************************
# move.S
#-----------------------------------------------------------------------------
#
# This test verifies that mxtf.[s,d], mftx.[s,d], fssr, frsr,
# and fsgnj[x|n].s work properly.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64UH
RVTEST_CODE_BEGIN

li a0, 1
fssr a0

  TEST_CASE( 2, a1, 1, li a0, 0x1234; fssr a1, a0)
  TEST_CASE( 3, a0, 0x34, frsr a0)
  TEST_CASE( 4, a0, 0x34, frsr a0)

  TEST_CASE( 5, a0, 0x0000000000002555, li a1, 0xFFFFFFFFBF812555; fmv.h.x h0, a1; fmv.x.h a0, h0)

  TEST_CASE( 6, a0, 0x0000000000002666, li a1, 0xFFFFFFFFBF812666; fmv.h.x h0, a1; fsgnj.h h1,  h0, h0; fmv.x.h a0, h1)
  TEST_CASE( 7, a0, 0x0000000000000777, li a1, 0xFFFFFFFFCBA98777; fmv.h.x h0, a1; fsgnjx.h h1, h0, h0; fmv.x.h a0, h1)
  TEST_CASE( 8, a0, 0x0000000000003888, li a1, 0xFFFFFFFFDEADB888; fmv.h.x h0, a1; fsgnjn.h h1, h0, h0; fmv.x.h a0, h1)

  # TEST_CASE( 9, a0, 0x0000000000002999, li a1, 0xFFFFFFFFBF812999; fmv.h.x h0, a1; fmv.f.h f0, h0; fmv.h.f h1, f0; fmv.x.h a0, h1)

  # TEST_CASE(10, a0, 0x0000000000002aaa, li a1, 0xFFFFFFFFBF812aaa; fmv.h.x h0, a1; fmv.f.h f0, h0; fmv.h.f h1, f0; fsgnj.h  h2, h1, h1; fmv.x.h a0, h2)
  # TEST_CASE(11, a0, 0x0000000000000bbb, li a1, 0xFFFFFFFFCBA98bbb; fmv.h.x h0, a1; fmv.f.h f0, h0; fmv.h.f h1, f0; fsgnjx.h h2, h1, h1; fmv.x.h a0, h2)
  # TEST_CASE(12, a0, 0x0000000000003ccc, li a1, 0xFFFFFFFFDEADBccc; fmv.h.x h0, a1; fmv.f.h f0, h0; fmv.h.f h1, f0; fsgnjn.h h2, h1, h1; fmv.x.h a0, h2)


  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
