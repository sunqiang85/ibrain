import tensorflow as tf
import numpy as np



# N, q, dk
N=2
tq=3
tk=4
dk=3
w=tf.Variable(
            np.random.normal(loc=1, scale=0.01, size=(tq,tk,dk*dk)), dtype=np.float32)
m1 = tf.tile([[[1.,3.,9.]]],[N,tq,1])
m2 = tf.tile([[[9.,27.,81.]]],[N,tk,1])

k = m1.shape[-1]
m1 = tf.expand_dims(m1,-1)
m1 = tf.tile(m1,[1,1,1,k]) # N,q,dk
m1 = tf.reshape(m1,shape=[*m1.shape[:-2],-1]) # N,q,dk*dk
m1 = tf.expand_dims(m1,-2) # N,q,1,dk*dk
m1 = tf.tile(m1,[1,1,tk,1])

print("m1 shape", m1.shape, m1.dtype)

# N, tk, k

m2 = tf.expand_dims(m2,-2)
m2 = tf.tile(m2,[1,1,k,1])
m2 = tf.reshape(m2, shape=[*m2.shape[:-2],-1]) #N,k,dk*dk
m2 = tf.expand_dims(m2,-3) # N,1,k,dk*dk
m2 = tf.tile(m2,[1,tq,1,1])
print("m2 shape", m2.shape) # N,tq,tk,dk*dk


# #
product = tf.reduce_sum(m1*m2*tf.expand_dims(w,0),-1)
# print('product shape',product.shape)

# r1 = tf.reshape(product, shape=[*product.shape[:2],-1])
# print("r1", r1.shape)

# r2 = tf.layers.dense(r1,5)
# print("r2", r2.shape)

init_op = tf.initialize_all_variables()
with tf.Session() as sess:
  sess.run(init_op)
  result, = sess.run([w])
  print("result.shape",result.shape)
  print(result)
  

