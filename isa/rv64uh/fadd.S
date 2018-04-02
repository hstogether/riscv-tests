# See LICENSE for license details.

#*****************************************************************************
# fadd.S
#-----------------------------------------------------------------------------
#
# Test f{add|sub|mul}.s instructions.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64UH
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

  TEST_FP_OP2_H( 2,  fadd.h, 0, 0x4300430043004300, 0x4100410041004100, 0x3c003c003c003c00 );

  # TEST_FP_OP2_H( 5,  fsub.h, 0,        1.5,        2.5,        1.0 );

  # TEST_FP_OP2_H( 8,  fmul.h, 0,      2.5,        2.5,        1.0 );

  # Is the canonical NaN generated for Inf - Inf?
  # TODO

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
