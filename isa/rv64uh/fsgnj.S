# See LICENSE for license details.

#*****************************************************************************
# fsgnj.S
#-----------------------------------------------------------------------------
#
# Test fsgn{j|jn|x}.s instructions.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64UH
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

  # TEST_FP_OP2_H( 2,  fsgnj.h, 0,  -2.5,   2.5,   -1.0 );
    TEST_FP_OP2_H( 2,  fsgnj.h, 0, 49408, 16640,  48128 );
    TEST_FP_OP2_H( 3,  fsgnj.h, 0, 16640, 16640,  16384 );
    TEST_FP_OP2_H( 4,  fsgnj.h, 0, 49408, 49408,  49664 );
    TEST_FP_OP2_H( 5,  fsgnj.h, 0, 16640, 49408,  17408 );

  # TEST_FP_OP2_H(12, fsgnjn.h, 0,   2.5,   2.5,   -1.0 );
    TEST_FP_OP2_H(12, fsgnjn.h, 0, 16640, 16640,  48128 );
    TEST_FP_OP2_H(13, fsgnjn.h, 0, 49408, 16640,  16384 );
    TEST_FP_OP2_H(14, fsgnjn.h, 0, 16640, 49408,  49664 );
    TEST_FP_OP2_H(15, fsgnjn.h, 0, 49408, 49408,  17408 );

  # TEST_FP_OP2_H(22, fsgnjx.h, 0,  -2.5,   2.5,   -1.0 );
    TEST_FP_OP2_H(22, fsgnjx.h, 0, 49408, 16640,  48128 );
    TEST_FP_OP2_H(23, fsgnjx.h, 0, 16640, 16640,  16384 );
    TEST_FP_OP2_H(24, fsgnjx.h, 0, 16640, 49408,  49664 );
    TEST_FP_OP2_H(25, fsgnjx.h, 0, 49408, 49408,  17408 );

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
