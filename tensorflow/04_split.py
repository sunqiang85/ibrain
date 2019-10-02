import tensorflow as tf
import numpy as np

m1 = tf.constant([[1,2,3,4],[5,6,7,8]])
m2 = tf.split(m1,2,axis=1)
r = tf.concat(m2,axis=0)
r2 = tf.concat([tf.expand_dims(c,-1) for c in tf.split(r,2,axis=0)],axis=2)
r3 = tf.reduce_max(r2,axis=-1)

init_op = tf.initialize_all_variables()
with tf.Session() as sess:
  sess.run(init_op)
  result, = sess.run([r3])
  print("result.shape",result.shape)
  #print(result)

  
  

