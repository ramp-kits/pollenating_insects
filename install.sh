wget -q http://repo.continuum.io/miniconda/Miniconda-3.6.0-Linux-x86_64.sh -O miniconda.sh
chmod +x miniconda.sh
./miniconda.sh -b -p /home/ubuntu/miniconda
export PATH=/home/ubuntu/miniconda/bin:$PATH
conda update --yes --quiet conda
conda install --yes --quiet numpy scipy matplotlib scikit-learn pandas
conda install --yes --quiet jupyter seaborn gitpython scikit-image
conda install --yes --quiet cloudpickle, tensorflow, pytroch
conda install -c conda-forge keras
pip install joblib
git clone https://github.com/paris-saclay-cds/ramp-workflow.git
cd ramp-workflow
python setup.py install
cd ..
git clone https://github.com/ramp-kits/pollenating_insects
cd pollenating_insects
python download_data.py
