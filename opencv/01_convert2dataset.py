import cv2
import numpy as np
import os

# crop the detect area to img
def crop_to_dataset(targetdir, face_detector, imgpath):
    img = cv2.imread(imgpath)
    #img = cv2.flip(img, -1)  # Flip vertically
    gray_img = cv2.cvtColor(img,cv2.COLOR_BGR2RGB)
    faces = face_detector.detectMultiScale(gray_img, scaleFactor=1.3, minNeighbors=5)
    print(faces)
    fields = imgpath.split("/")
    face_id = int(fields[-2][1:])
    file_id = int(fields[-1].split(".")[0])
    count=0
    for (x, y, w, h) in faces:
        count+=1
        cv2.imwrite(targetdir+"/User." + str(face_id) + '.' + str(file_id) +'.' + str(count) + ".jpg", gray_img[y:y + h, x:x + w])

# convert to jpg
def jpg_to_dataset(targetdir, face_detector, imgpath):
    img = cv2.imread(imgpath)
    #img = cv2.flip(img, -1)  # Flip vertically
    fields = imgpath.split("/")
    face_id = int(fields[-2][1:])
    file_id = int(fields[-1].split(".")[0])
    cv2.imwrite(targetdir+"/User." + str(face_id) + '.' + str(file_id) + ".jpg", img)



if __name__ == '__main__':
    train_percent = 0.8
    data_folder = "/Users/sunq/data/att_faces/"
    trainDir="dataset/train"
    testDir="dataset/test"
    person_dirs = os.listdir(data_folder)
    full_person_dirs=[]
    for c in person_dirs:
        full_person_dirs.append(os.path.join(data_folder, c))

    train_imgpaths=[]
    test_imgpaths=[]
    for person_dir in full_person_dirs:
        file_dirs=os.listdir(person_dir)
        for filename in file_dirs[:int(len(file_dirs)*train_percent)]:
            train_imgpaths.append(os.path.join(person_dir, filename))
        for filename in file_dirs[int(len(file_dirs)*0.8):]:
            test_imgpaths.append(os.path.join(person_dir, filename))

    print(len(train_imgpaths))
    face_detector = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')

    # train
    for imgpath in train_imgpaths:
        print(imgpath)
        jpg_to_dataset(trainDir,face_detector,imgpath)

    # test
    for imgpath in test_imgpaths:
        print(imgpath)
        jpg_to_dataset(testDir, face_detector, imgpath)


