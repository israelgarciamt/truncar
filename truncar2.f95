program truncar
implicit none
double precision::A
integer::d
integer::i
double precision::base,a1
integer::vect(9)

  
do i=1,9
  vect(i)=0
end do


	base=0.0
  write(*,*)"Escribe otro numero y otro decimal" 
	read(*,*) A,d
	a1=A
	do i=0,d
    	vect(i+1)=int(a1)
        write(*,*) vect(i+1)
		a1=a1-int(a1)
        a1=10*a1
    end do
	do i=0,d
    	base=base+vect(i+1)*(10.0**(-1*i))
        write(*,*) vect(i+1)*(10.0**(-1*i))
    end do
	write(*,*)base

    
end program 


