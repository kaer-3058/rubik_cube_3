#四元数乘法

import numpy

q1 = numpy.array([0.0, 0.9808891200000001, 0.0, -0.19522784], dtype=float)
q2 = numpy.array([-0.44270834, 0.114583336, 0.50033337, 0], dtype=float)

x1 = q1[0]
y1 = q1[1]
z1 = q1[2]
w1 = q1[3]

x2 = q2[0]
y2 = q2[1]
z2 = q2[2]
w2 = q2[3]

q3 = numpy.array([
    w1*x2 + x1*w2 + y1*z2 - z1*y2,
    w1*y2 - x1*z2 + y1*w2 + z1*x2,
    w1*z2 + x1*y2 - y1*x2 + z1*w2,
    w1*w2 - x1*x2 - y1*y2 - z1*z2
], dtype=float)
print(q3)


import quaternionic

#quaternionic定义的顺序： w, x, y, z
r1 = quaternionic.array([q1[3], q1[0], q1[1], q1[2]])
r2 = quaternionic.array([q2[3], q2[0], q2[1], q2[2]])
r3 = r1 * r2
r3_np = r3.ndarray   # 得到普通 numpy 数组，形状为 (4,)
r4 = numpy.array([r3_np[1], r3_np[2], r3_np[3], r3_np[0]], dtype=float)  #把顺序调整为[x,y,z,w]
print(r4)


"""
四元数乘法公式：
    x_new = w1*x2 + x1*w2 + y1*z2 - z1*y2
    y_new = w1*y2 - x1*z2 + y1*w2 + z1*x2
    z_new = w1*z2 + x1*y2 - y1*x2 + z1*w2
    w_new = w1*w2 - x1*x2 - y1*y2 - z1*z2

"""
