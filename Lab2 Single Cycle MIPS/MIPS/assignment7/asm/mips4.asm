.data
	flo: .float 3.1415
.text
	li   $v0,2
	lwc1 $f12,flo
	
	syscall
