# RAMP starting kit on the MNIST dataset

Authors: Mehdi Cherti & Balazs Kegl

[![Build Status](https://travis-ci.org/ramp-kits/pollenating_insects.svg?branch=master)](https://travis-ci.org/ramp-kits/pollenating_insects)

Go to [`ramp-worflow`](https://github.com/paris-saclay-cds/ramp-workflow) for more help on the [RAMP](http:www.ramp.studio) ecosystem.

After cloning, run

```
python download_data.py
```

the first time. It will create `data/imgs` and download the images there
using the names `<id>`, where `<id>`s are coming from `data/train.csv` and `data/test.csv`. If images are properly unzipped in `data/imgs`, you can delete the zip file `data/imgs.zip` to save space.

You should install keras 2.0.6, for example, like this:

```
conda install -c conda-forge keras
```

You should install keras and set `image_data_format` to `channels_first` in `~/.keras/keras.json`.

Install ramp-workflow (rampwf), then execute

```
ramp_test_submission
```

Get started on this RAMP with the [dedicated notebook](pollenating_insects_starting_kit.ipynb).
