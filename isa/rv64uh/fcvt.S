# See LICENSE for license details.

#*****************************************************************************
# fcvt.S
#-----------------------------------------------------------------------------
#
# Test fcvt.s.{wu|w|lu|l}, fcvt.s.d, and fcvt.d.s instructions.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64UH
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

  # TEST_INT_FP_OP_S( 2,     fcvt.s.w,                   2.0,  2);
  # TEST_INT_FP_OP_H( 2,  0, fcvt.h.w,                 16384,  2);
  # TEST_INT_FP_OP_S( 3,     fcvt.s.w,                  -2.0, -2);
  # TEST_INT_FP_OP_H( 3,  0, fcvt.h.w,                 49152, -2);

  # TEST_INT_FP_OP_S( 4,     fcvt.s.wu,                   2.0,  2);
    TEST_INT_FP_OP_H( 4,  0, fcvt.h.wu,                 16384,  2);
  # TEST_INT_FP_OP_S( 5,     fcvt.s.wu,           4.2949673e9, -2);
    TEST_INT_FP_OP_H( 5,  1, fcvt.h.wu,                 64512, -2);

#if __riscv_xlen >= 64
  # TEST_INT_FP_OP_S( 6,     fcvt.s.l,                   2.0,  2);
  # TEST_INT_FP_OP_H( 6,  0, fcvt.h.l,                 16384,  2);
  # TEST_INT_FP_OP_S( 7,     fcvt.s.l,                  -2.0, -2);
  # TEST_INT_FP_OP_H( 7,  1, fcvt.h.l,                 49152, -2);

  # TEST_INT_FP_OP_S( 8,     fcvt.s.lu,                   2.0,  2);
  # TEST_INT_FP_OP_H( 8,  0, fcvt.h.lu,                 16384,  2);
  # TEST_INT_FP_OP_S( 9,     fcvt.s.lu,          1.8446744e19, -2);
  # TEST_INT_FP_OP_H( 9,  1, fcvt.h.lu,                 64512, -2);


  # TEST_FCVT_S_H(10, 48640, 48640)
  # TEST_FCVT_H_S(11,  -2.5,  -2.5)

  # TEST_FCVT_D_H(12, 48640, 48640)
  # TEST_FCVT_H_D(13,  -2.5,  -2.5)

#endif

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
