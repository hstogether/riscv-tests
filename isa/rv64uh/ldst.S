# See LICENSE for license details.

#*****************************************************************************
# ldst.S
#-----------------------------------------------------------------------------
#
# This test verifies that flw, fld, fsw, and fsd work properly.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64UH
RVTEST_CODE_BEGIN

  TEST_CASE(2, a0, 0xcafe5678deadbeef, la a1, tdat; flh h1, 4(a1); fsh h1, 20(a1); ld a0, 16(a1))
  TEST_CASE(3, a0, 0x1337d00dabad1234, la a1, tdat; flh h1, 0(a1); fsh h1, 24(a1); ld a0, 24(a1))

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

tdat:
.word 0xbf801234
.word 0x40005678
.word 0x40409abc
.word 0xc080def0
.word 0xdeadbeef
.word 0xcafebabe
.word 0xabad1dea
.word 0x1337d00d

RVTEST_DATA_END
