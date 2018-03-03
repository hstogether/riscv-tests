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

  # TEST_FP_OP2_H(2,  fdiv.h, 1, 1.1557273520668288, 3.14159265, 2.71828182 );
  TEST_FP_OP2_H(2,  fdiv.h, 0, 16384, 16384, 15360 );
  # TEST_FP_OP2_H(3,  fdiv.h, 1,-0.9991093838555584,      -1234,     1235.1 );
  # TEST_FP_OP2_H(4,  fdiv.h, 0,         3.14159265, 3.14159265,        1.0 );

  TEST_FP_OP1_H(5,  fsqrt.h, 0, 16384, 17408 );
  # TEST_FP_OP1_H(6,  fsqrt.h, 0,                100,      10000 );

  # TEST_FP_OP1_H_DWORD_RESULT(7,  fsqrt.s, 0x10, 0x7FC00000, -1.0 );

  # TEST_FP_OP1_H(8,  fsqrt.s, 1, 13.076696, 171.0);

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
