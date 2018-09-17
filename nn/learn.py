import json
import tensorflow as tf
from tensorflow.contrib import rnn
import os

mnist = tf.keras.datasets.mnist
(x_train, y_train),(x_test, y_test) = mnist.load_data()
x_train, x_test = x_train / 255.0, x_test / 255.0
# with open('model.json') as f:
#   data = json.load(f)
# print(data)
# 
model = tf.keras.models.Sequential([
  tf.keras.layers.Flatten(),
  tf.keras.layers.Dense(512, activation=tf.nn.relu),
  tf.keras.layers.Dropout(0.2),
  tf.keras.layers.Dense(10, activation=tf.nn.softmax)
])
model.compile(optimizer='adam',
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

model.fit(x_train, y_train, epochs=5)
model.evaluate(x_test, y_test)

# save file
model.save_weights(os.path.join('./model', 'weights.hdf5'))
data = model.to_json()
with open('./model/model.json', 'w') as f:
  json.dump(data, f)
