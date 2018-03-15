# See LICENSE for license details.

#*****************************************************************************
# fdiv.S
#-----------------------------------------------------------------------------
#
# Test f{div|sqrt}.h instructions.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64UH
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

    TEST_FP_OP2_H(2,  fdiv.h, 1, 16381, 16383, 15361 );
    TEST_FP_OP2_H(3,  fdiv.h, 1, 49149, 49151, 15361 );
    TEST_FP_OP2_H(4,  fdiv.h, 0, 16384, 16384, 15360 );

    TEST_FP_OP1_H(5,  fsqrt.h, 1, 16505, 17664 );
    TEST_FP_OP1_H(6,  fsqrt.h, 0, 16384, 17408 );

    TEST_FP_OP1_H_DWORD_RESULT(7,  fsqrt.h, 0x10, 0x00007E00, 48128 );

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
