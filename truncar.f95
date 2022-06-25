program k

implicit none
double precision::truncar,pi
integer::dime
dime=2
pi=3.1415987

write(*,*) truncar(pi,dime)

end program k


function truncar(A,d) result(base)  
implicit none
double precision::A
integer::d,i
intent(in)::a,d
double precision::base,a1


	base=0.0
	a1=A
	do i=0,d
    	base=base+real(int(a1))/(10.0**i)
		a1=a1-int(a1)
        a1=10*a1
    end do
    
end function



