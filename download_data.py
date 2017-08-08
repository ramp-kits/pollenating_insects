import os
import shutil
from subprocess import call

if os.path.exists('data'):
    shutil.rmtree('data')
os.mkdir('data')

url = 'https://storage.ramp.studio/pollenating_insects'
f_names = ['class_codes.csv', 'test.csv', 'train.csv']
for f_name in f_names:
    url_in = '{}/{}'.format(url, f_name)
    f_name_out = os.path.join('data', f_name)
    cmd = 'wget {} --output-document={} --no-check-certificate'.format(
        url_in, f_name_out)
    call(cmd, shell=True)
