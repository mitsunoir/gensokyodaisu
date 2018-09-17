import tensorflow as tf
from keras.backend import tensorflow_backend as backend
import numpy as np
import cv2
import json
import os

def load_weight():
  with open('weights.hdf5') as f:
    data = json.load(f)
  return  tf.keras.models.model_from_json(data)

def load_model():
  with open('./model/model.json') as f:
    data = json.load(f)
  return  tf.keras.models.model_from_json(data)

def parse_string(fname):
  print(fname)
  ret = np.array([])
  with open(fname) as f:
    lines = f.readlines()
    for l in lines:
      # row = np.array([])
      for c in l:
        added = 0 if c == ' ' else 1
        ret = np.append(ret, added)
        # row = np.append(row, added)
      # ret = np.append(ret, row)
  return ret.reshape((len(lines),len(lines[0])))

def write_ndarr(na, f):
  path = './srcimg'
  fname = f.split('.')[0] + '.dat'
  na.dump(os.path.join(path, fname))

def get_files():
  rbs = './../result'
  return os.listdir(rbs)

def get_srcimg_files():
  path = './srcimg'
  return os.listdir(path)

def get_nda(f):
  path = './srcimg'
  return np.load(os.path.join(path, f))

def parse_files():
  ret = np.array([[[]]])
  files = get_files()
  # data = parse_string(os.path.join(rbs, files[0]))
  # dsize = (28,28)
  # data = cv2.resize(data, dsize)
  # write_ndarr(data, files[0])
  for f in files:
    data = parse_string(os.path.join(rbs, f))
    dsize = (28,28)
    data = cv2.resize(data, dsize)
    write_ndarr(data, f)
    ret = np.append(ret, data)
  # for l in data:
  #   print(''.join([str(int(x)) for x in l]))
  return files, ret

def make_model():
  mnist = tf.keras.datasets.mnist
  (x_train, y_train),(x_test, y_test) = mnist.load_data()
  x_train, x_test = x_train / 255.0, x_test / 255.0
  model = load_model()
  model.compile(optimizer='adam',
                loss='sparse_categorical_crossentropy',
                metrics=['accuracy'])
  model.load_weights(os.path.join('./model', 'weights.hdf5'))
  return model

def predict(model, x_test, y_test):
  res = model.evaluate(x_test, y_test)
  backend.clear_session()
  print('Accuracy: {}%'.format(res[1]*100))

def main():
  model = make_model()
  # ret, files = parse_files()
  files = get_srcimg_files()
  x_test = np.array([[[]]], dtype="uint8")
  for f in files:
    x_test = np.append(x_test, get_nda(f))
  x_test = x_test.reshape((len(files),28,28))
  y_test = np.full(len(x_test), 6)
  predict(model, x_test, y_test)

if __name__ == '__main__':
  main()
