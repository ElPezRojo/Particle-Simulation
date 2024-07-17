set num 10
system partSys dim $num

set count 0
while {$count < $num} {
	system partSys particle $count 1 [expr $count * rand() * rand()] [expr $count * rand() * rand() + 2] [expr $count * rand() * rand()] [expr $count * rand() * rand()] [expr $count * rand() * rand()] [expr $count * rand() * rand()] 
	set count [expr $count + 1]
}
simulator partSim link partSys $num
simulator partSim integration verlet .005
#simulator partSim integration symplectic .01
#simulator partSim integration euler .001
simulator partSim ground 1000 500
simulator partSim drag 1
simulator partSim gravity -9.8






