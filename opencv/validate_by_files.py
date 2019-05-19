''''
Real Time Face Recogition
	==> Each face stored on dataset/ dir, should have a unique numeric integer ID as 1, 2, 3, etc                       
	==> LBPH computed model (trained faces) should be on trainer/ dir
Based on original code by Anirban Kar: https://github.com/thecodacus/Face-Recognition    


'''

import cv2
import numpy as np
import os




def predict(recognizer, imgpath):
    img = cv2.imread(imgpath)
    #img = cv2.flip(img, -1)  # Flip vertically

    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    minW = gray.shape[1] * 1.0  # width
    minH = gray.shape[0] * 1.0  # height

    faces = faceCascade.detectMultiScale(
        gray,
        scaleFactor=1.2,
        minNeighbors=5,
        minSize=(int(minW), int(minH)),
    )

    ids=[]
    confidences=[]
    for (x, y, w, h) in faces:
        id, confidence = recognizer.predict(gray[y:y + h, x:x + w])
        ids.append(id)
        confidences.append(confidence)
    return ids,confidences,faces

if __name__ == '__main__':
    recognizer = cv2.face.LBPHFaceRecognizer_create()
    recognizer.read('trainer/trainer.yml')
    cascadePath = "haarcascade_frontalface_default.xml"
    faceCascade = cv2.CascadeClassifier(cascadePath);
    test_path="dataset/test"
    img_paths = [os.path.join(test_path,f) for f in os.listdir(test_path)]
    print("*****start******")
    img_path=img_paths[0]
    pred_ids=[]
    true_ids=[]
    total=len(img_paths)
    correct=0
    for img_path in img_paths:
        print(img_path)
        true_id = int((img_path.split("/")[-1]).split(".")[1])
        ids, confidences, faces=predict(recognizer,img_path)
        if ids==[]: # did not detect face
            print("empty")
            continue
        else:
            pred_id = ids[np.argmax(confidences)]
            pred_ids.append(pred_id)
            true_ids.append(true_id)
            if true_id == pred_id:  # correct predict
                correct+=1
            else:       # Wrong predict
                print(img_path)
                print("ids", ids)
                print("confidences", confidences)
                print("faces", faces)
                print("ture_id:", true_id)
                print("pred_id:", pred_id)
    print("total accuray: %.2f" % (correct/total))
    print("detected accuray: %.2f" % (correct / len(pred_ids)))
    print("total:", total)
    print("predicted:", len(pred_ids))
    print("correct count:", correct)


