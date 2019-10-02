import numpy as np
from keras.datasets import mnist
from keras.utils import np_utils
from keras.models import Sequential
from keras.layers import Dense, Activation
from keras.optimizers import RMSprop
from keras.activations import softmax
import tensorflow

if __name__ == "__main__":

    print(tensorflow.__version__)
    (X_train,y_train),(X_test,y_test)=mnist.load_data()

    X_train = X_train.reshape((X_train.shape[0],-1))/255
    X_test = X_test.reshape((X_test.shape[0],-1))/255
    y_train = np_utils.to_categorical(y_train,  num_classes=10)
    y_test = np_utils.to_categorical(y_test, num_classes=10 )

    model = Sequential([
        Dense(32,input_dim=28*28),
        Activation('relu'),
        Dense(10, activation='softmax'),
    ])

    rmsprop = RMSprop(lr=0.001, rho=0.9, epsilon=1e-8, decay=0.0)

    model.compile(
        optimizer=rmsprop,
        loss = 'categorical_crossentrophy',
        metrics = ['accuracy'],
    )

    model.fit(X_train,y_train,epoch=2, batch_size=32)

    loss, accuracy = model.predict(X_test, y_test)

    print("loss",loss)
    print("accuracy",accuracy)



