# See LICENSE for license details.

#*****************************************************************************
# fmin.S
#-----------------------------------------------------------------------------
#
# Test f{min|max}.s instructinos.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64UH
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

  # TEST_FP_OP2_H( 2,  fmin.h, 0,        1.0,        2.5,        1.0 );
    TEST_FP_OP2_H( 2,  fmin.h, 0,      15360,      16640,      15360 );
    TEST_FP_OP2_H( 3,  fmin.h, 0,      54208,      54208,      21745 );
    TEST_FP_OP2_H( 4,  fmin.h, 0,      54208,      21745,      54208 );
    TEST_FP_OP2_H( 5,  fmin.h, 0,      54208,      32256,      54208 );
    TEST_FP_OP2_H( 6,  fmin.h, 0,      15356,      17152,      15356 );
    TEST_FP_OP2_H( 7,  fmin.h, 0,      49152,      48128,      49152 );

  # TEST_FP_OP2_H(12,  fmax.h, 0,        2.5,        2.5,        1.0 );
    TEST_FP_OP2_H(12,  fmax.h, 0,      16640,      16640,      15360 );
    TEST_FP_OP2_H(13,  fmax.h, 0,      15872,      54208,      15872 );
    TEST_FP_OP2_H(14,  fmax.h, 0,      15872,      15872,      54208 );
    TEST_FP_OP2_H(15,  fmax.h, 0,      54208,      32256,      54208 );
    TEST_FP_OP2_H(16,  fmax.h, 0,      17152,      17152,      14848 );
    TEST_FP_OP2_H(17,  fmax.h, 0,      48128,      48128,      49152 );

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
