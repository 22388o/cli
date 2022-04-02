import subprocess
import pkg_resources

IGNORED = ['pip', '-ip']

dists = [d for d in pkg_resources.working_set]

print('Installed Packages:')
for pkg in dists:
    print('', pkg)

for pkg in dists:
    name = str(pkg).split(' ')[0]
    if not name in IGNORED:
        subprocess.call('pip install --upgrade ' + name, shell=True)
