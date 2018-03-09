# See LICENSE for license details.

#*****************************************************************************
# fclass.S
#-----------------------------------------------------------------------------
#
# Test fclass.s instructions.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64UH
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

  TEST_FCLASS_H( 2, 1 << 0, 0x0000fc00 )
  TEST_FCLASS_H( 3, 1 << 1, 0x0000c300 )
  TEST_FCLASS_H( 4, 1 << 2, 0x00008300 )
  TEST_FCLASS_H( 5, 1 << 3, 0x00008000 )
  TEST_FCLASS_H( 6, 1 << 4, 0x00000000 )
  TEST_FCLASS_H( 7, 1 << 5, 0x00000300 )
  TEST_FCLASS_H( 8, 1 << 6, 0x00004300 )
  TEST_FCLASS_H( 9, 1 << 7, 0x00007c00 )
  TEST_FCLASS_H(10, 1 << 8, 0x00007c01 )
  TEST_FCLASS_H(11, 1 << 9, 0x00007e00 )

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
