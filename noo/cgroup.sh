

# directorio cgroup
cd /sys/fs/cgroup

# habilitar controlar cpu en sub-carpetas del directorio cgroup
echo "+cpu" > cgroup.subtree_control


# crear grupo "lastdragon" para controlar programas
mkdir lastdragon


# agregar programa con pid 513 al grupo "lastdragon"
cd lastdragon






----------------------------
cat cgroup.procs
echo 513 > cgroup.procs
cat cgroup.procs

# limitar cantidad de procesos maximos pids
cat pids.max
	# ese comando muestra "max"

# limitar procesos/programas-en-ejecucion-en-el-grupo a 3 como maximo, no mas
echo "3" > pids.max
cat pids.max

# ver cantidad de procesos en ejecucion en el grupo
cat pids.current
----------------------------









----------------------------
# memoria maxima
cat memory.max
	# muestra "max"
	# osea que no hay limite, usara toda la ram exitente

# quiero permitirles usar 1GB de memoria ram solamente
echo "1G" > memory.max
cat memory.max
	# muestra 1GB en bytes



----------------------------






















----------------------------
# uso de cpu maximo
cat cpu.max
	# muestra "max 100000"
	# 100000 representa el 100% del cpu
	# 10000 representa el   10% del cpu
	# 1000 representa el     1% del cpu

se puede probar usando este comando
dd if=/dev/zero of=/dev/null
	# con top o htop
	# se puede apreciar el uso de CPU

# yo te digo que solo puedes usar maximo 10%
echo "10000 100000" > cpu.max
cat cpu.max

----------------------------













----------------------------
# montar dispositivos
# hay una carpeta devices
mount -t cgroup -o devices devices devices

# te doy permiso de acceder a todos los dispositivos
echo "a" > devices.allow

# quiero evitar que root haga
# dd if=/dev/zero of=/dev/null
# osea root ya no puede usar /dev/zero
	# ls -l /dev | grep zero
		# /dev/zero 1,	5 ...fecha....
	# el inodo de /dev/zero es 1,5
echo "c 1:5 rwm" > devices.deny

# no te doy permiso de acceder a todos los dispositivos
echo "a" > devices.deny
	# se demuestra facil, cualquier intento de escribir en dispositivos
	# arroja permiso denegado ;)
	# echo "hola mundo" > /dev/pts/1
	# echo "hola mundo" > /dev/pts/2

----------------------------





