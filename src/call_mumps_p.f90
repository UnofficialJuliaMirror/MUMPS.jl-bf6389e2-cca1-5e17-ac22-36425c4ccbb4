

!-------------------------------------------------

function factor_mumps( n, sym, ooc, A, jA, iA, ierr )  result(pm_out)
!DIR$ ATTRIBUTES DLLEXPORT :: factor_mumps
!DIR$ ATTRIBUTES ALIAS: 'factor_mumps_':: factor_mumps

use mumps_mod, only: init, convert_to_mumps_format, factor_matrix, destroy
implicit none

INCLUDE 'dmumps_struc.h'

integer(kind=8):: pm_out   ! mumps pointer
integer(kind=8),intent(in):: n  ! # of rows in A
integer(kind=8),intent(in):: sym  ! =0 unsymmetric, =1 symm. pos def, =2 general symm.
integer(kind=8),intent(in):: ooc  ! = 0 in-core factorization, = 1 out-of-core factorization
real(kind=8),intent(in):: A(*)
integer(kind=8),intent(in):: jA(*), iA(n+1)

integer(kind=8),intent(out):: ierr
! integer,intent(out):: ierr  ! =0 no error, < 0 error (memory, singular, etc.)

TYPE(DMUMPS_STRUC),pointer:: pmumps_par
TYPE(DMUMPS_STRUC):: mumps_par

pointer ( pm, mumps_par )

allocate(pmumps_par)
pm = loc(pmumps_par)

call init( mumps_par, sym)
call convert_to_mumps_format(mumps_par, n, A,jA,iA, ierr )
if (ierr < 0) return  ! allocation error

call factor_matrix(mumps_par, ooc, ierr)

if ( ierr < 0 ) then
   ! Error in factorization.
   call destroy(mumps_par)
   pm_out = 0
else
   pm_out = pm
end if

return
end  function factor_mumps

!-------------------------------------------------

subroutine solve_mumps( pm_in, nrhs, rhs, x, transpose )
! Solve A*x = rhs

!DIR$ ATTRIBUTES DLLEXPORT :: solve_mumps
!DIR$ ATTRIBUTES ALIAS: 'solve_mumps_':: solve_mumps
use mumps_mod, only: solve

implicit none

INCLUDE 'dmumps_struc.h'

integer(kind=8),intent(in):: pm_in  ! mumps pointer
integer(kind=8),intent(in):: nrhs  ! # of right-hand-sides
real(kind=8),intent(in):: rhs(*)   ! right-hand-side
real(kind=8),intent(out):: x(*)    ! solution
integer(kind=8),intent(in):: transpose   ! =1 for transpose

TYPE(DMUMPS_STRUC):: mumps_par
pointer ( pm, mumps_par )
pm = pm_in

call solve(mumps_par, nrhs, rhs, x, (transpose==1) )

return
end subroutine solve_mumps

!-------------------------------------------------

subroutine solve_mumps_sparse_rhs( pm_in, nzrhs, nrhs, rhsval, irhsrow, irhscolptr, x, transpose )
! Solve A*x = rhs

!DIR$ ATTRIBUTES DLLEXPORT :: solve_mumps
!DIR$ ATTRIBUTES ALIAS: 'solve_mumps_':: solve_mumps
use mumps_mod, only: solve_sparse_rhs

implicit none

INCLUDE 'dmumps_struc.h'

integer(kind=8),intent(in):: pm_in  ! mumps pointer
integer(kind=8),intent(in):: nzrhs,nrhs  ! total # of non-zeros across all rhs,# of right-hand-sides
integer(kind=8),intent(in):: irhsrow(*), irhscolptr(*)  !Right hand side indexing pointers
real(kind=8),intent(in):: rhsval(*)   ! right-hand-side
real(kind=8),intent(out):: x(*)    ! solution
integer(kind=8),intent(in):: transpose   ! =1 for transpose

TYPE(DMUMPS_STRUC):: mumps_par
pointer ( pm, mumps_par )
pm = pm_in

! Setup sparse rhs
allocate( mumps_par%RHS_SPARSE(nzrhs),mumps_par%IRHS_SPARSE(nzrhs),mumps_par%IRHS_PTR(nrhs+1) )
mumps_par%NZ_RHS      = nzrhs
mumps_par%NRHS        = nrhs
mumps_par%LRHS        = mumps_par%N  ! size of system
mumps_par%RHS_SPARSE  = rhsval(1:nzrhs)
mumps_par%IRHS_SPARSE = irhsrow(1:nzrhs)
mumps_par%IRHS_PTR    = irhscolptr(1:nrhs+1)

call solve_sparse_rhs(mumps_par, nrhs, x, (transpose==1) )

deallocate( mumps_par%IRHS_PTR, mumps_par%IRHS_SPARSE, mumps_par%RHS_SPARSE )

return
end subroutine solve_mumps_sparse_rhs

!-------------------------------------------------

subroutine destroy_mumps( pm_in )
!  Destroy the instance (deallocate internal data structures)

!DIR$ ATTRIBUTES DLLEXPORT :: destroy_mumps
!DIR$ ATTRIBUTES ALIAS: 'destroy_mumps_':: destroy_mumps
use mumps_mod, only: destroy

implicit none
INCLUDE 'dmumps_struc.h'

integer(kind=8),intent(in):: pm_in  ! mumps pointer
TYPE(DMUMPS_STRUC):: mumps_par
pointer ( pm, mumps_par )
pm = pm_in

call destroy(mumps_par)

return
end subroutine destroy_mumps

!-------------------------------------------------

