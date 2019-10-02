import numpy as np
from keras.models import Sequential
from keras.layers import Dense
import matplotlib.pyplot as plt


if __name__ == '__main__':
    X = np.linspace(-1,1,200)
    np.random.shuffle(X)
    Y=0.5*X + 2+ np.random.normal(0,0.05,(200,))

    plt.scatter(X,Y)
    plt.show()

    X_train, Y_train = X[:160], Y[:160]
    X_test, Y_test = X[160:], Y[160:]

    model = Sequential()
    model.add(Dense(output_dim=1,input_dim=1))

    model.compile(loss='mse',optimizer='sgd')

    #Train
    for step in range(600):
        cost=model.train_on_batch(X_train,Y_train)
        if step%100 == 0:
            print("cost:",cost)

    #Test
    print('Test=========')
    cost = model.evaluate(X_test,Y_test)
    W,b = model.layers[0].get_weights()
    print("Weight",W,"bias",b)

    Y_pred = model.predict(X_test)

    plt.scatter(X_test,Y_test)
    plt.plot(X_test,Y_pred)
    plt.show()



