import numpy as np
import h5py
import sys as sys
import matplotlib.pyplot as plt

if(len(sys.argv) > 1):
	nm = sys.argv[1]

h5filename = nm + '.h5'

f0 = h5py.File(h5filename, 'r')

tt   = []
pres = []
sat  = []

for i in f0.keys():
	title = i.split()
	if title[0] == u'Time:':
		tt.append(float(title[1]))	
		group = f0[i]
		for j in group.keys():
			if j == u'Liquid_Pressure [Pa]':
				pres.append(group[j][0,0,:])
			elif j == u'Liquid_Saturation':
				sat.append(group[j][0,0,:])


t  = sorted(tt)
it = sorted(range(len(tt)), key=lambda k: tt[k])
nt = len(tt)

z = f0["Coordinates"]["Z [m]"][:]
zz = np.zeros(len(z)-1)
for i in range(len(zz)):
   zz[i] = (z[i] + z[i+1])/2.0

nz = len(zz)

spres = np.zeros((nt,nz))
ssat  = np.zeros((nt,nz))

for i in range(len(tt)):
	spres[i,:]   = pres[it[i]]
	ssat[i,:]    = sat[it[i]]

spres   = spres
#xm = nyear

it1 = 0
it2 = nt/4 - 1
it3 = nt/3 - 1
it4 = nt/2 - 1
#it4 = nt*3/4 - 1
it5 = nt - 1

iz1 = 0
iz2 = nz/4 - 1
iz3 = nz/2 - 1
iz4 = nz*3/4 - 1
iz5 = nz - 1

ts1 = 't = ' + '%4.3f'%(t[it1]) + 'y' 
ts2 = 't = ' + '%4.3f'%(t[it2]) + 'y' 
ts3 = 't = ' + '%4.3f'%(t[it3]) + 'y' 
ts4 = 't = ' + '%4.3f'%(t[it4]) + 'y' 
ts5 = 't = ' + '%4.3f'%(t[it5]) + 'y' 

ax1=plt.subplot(1, 2, 1)
plt.plot(spres[it1,:], zz, 'b-', spres[it2,:], zz, 'r-', spres[it3, :], zz, 'g-', spres[it4,:], zz, 'm-', spres[it5,:], zz, 'c-')
plt.xlabel('Pressure (Pa)')
plt.ylim([0, 4])
plt.ylabel('Elevation (m)')

ax2=plt.subplot(1, 2, 2)
plt.plot(ssat[it1,:], zz, 'b-', ssat[it2,:], zz, 'r-', ssat[it3, :], zz, 'g-', ssat[it4,:], zz, 'm-', ssat[it5,:], zz, 'c-')
plt.xlabel('Saturation')
plt.ylim([0, 4])
plt.xlim([0,1.1])
lgd = plt.legend((ts1, ts2, ts3, ts4, ts5), numpoints=1, loc=3);
lgd.draw_frame(False);
txt = lgd.get_texts();
plt.setp(txt, fontsize='small');

fig = plt.gcf()
fig.set_size_inches(10, 4.5)
ofname = 'figh5'+nm+'.png'
plt.savefig(ofname)
plt.show()
f0.close()
