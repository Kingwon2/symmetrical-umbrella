import sys

import cv2
from keras.models import load_model
import numpy as np
import time
import os

from utils.datasets import get_labels
from utils.inference import detect_faces
from utils.inference import draw_text
from utils.inference import draw_bounding_box
from utils.inference import apply_offsets
from utils.inference import load_detection_model
from utils.inference import load_image
from utils.preprocessor import preprocess_input

# parameters for loading data and images
base_path = "C:\\Users\\won\\Desktop"
image_path = sys.argv[1]
detection_model_path = base_path + '\\solo\\ee\\FaceDetection' + '\\python\\trained_models\\detection_models\\haarcascade_frontalface_default.xml'
emotion_model_path = base_path + '\\solo\\ee\\FaceDetection' + '\\python\\trained_models\\emotion_models\\fer2013_mini_XCEPTION.102-0.66.hdf5'
gender_model_path = base_path + '\\solo\\ee\\FaceDetection' + '\\python\\trained_models\\gender_models\\simple_CNN.81-0.96.hdf5'
added_model_path = base_path +''

emotion_labels = get_labels('fer2013')
gender_labels = get_labels('imdb')
font = cv2.FONT_HERSHEY_SIMPLEX

# hyper-parameters for bounding boxes shape
gender_offsets = (30, 60)
gender_offsets = (10, 10)
emotion_offsets = (20, 40)
emotion_offsets = (0, 0)
"""added_offsets ="""

#
emotion_text=""
gender_text=""
result_text=""
# loading models
face_detection = load_detection_model(detection_model_path)
emotion_classifier = load_model(emotion_model_path, compile=False)
gender_classifier = load_model(gender_model_path, compile=False)
""" gender_classifier = load_model(added_model_path, compile=False)"""

# getting input model shapes for inference
emotion_target_size = emotion_classifier.input_shape[1:3]
gender_target_size = gender_classifier.input_shape[1:3]
"""added_target_size = added_classifier.input_shape[1:3]"""

# loading images
rgb_image = load_image(image_path, grayscale=False)
gray_image = load_image(image_path, grayscale=True)
gray_image = np.squeeze(gray_image)
gray_image = gray_image.astype('uint8')
"""현상황
for문 제거하니까 에러남 for문안의 face_coordinates 의 내용을 한 번 확인해봐야겠슴"""
faces = detect_faces(face_detection, gray_image)

if len(faces)==1:
    for face_coordinates in faces:
        x1, x2, y1, y2 = apply_offsets(face_coordinates, gender_offsets)
        rgb_face = rgb_image[y1:y2, x1:x2]

        x1, x2, y1, y2 = apply_offsets(face_coordinates, emotion_offsets)
        gray_face = gray_image[y1:y2, x1:x2]

        try:
            rgb_face = cv2.resize(rgb_face, (gender_target_size))
            gray_face = cv2.resize(gray_face, (emotion_target_size))
        except:
            print("error")
            continue

        rgb_face = preprocess_input(rgb_face, False)
        rgb_face = np.expand_dims(rgb_face, 0)
        gender_prediction = gender_classifier.predict(rgb_face)
        gender_label_arg = np.argmax(gender_prediction)
        gender_text = gender_labels[gender_label_arg]
        print(gender_text)

        gray_face = preprocess_input(gray_face, True)
        gray_face = np.expand_dims(gray_face, 0)
        gray_face = np.expand_dims(gray_face, -1)
        emotion_args = emotion_classifier.predict(gray_face)
        emotion_label_arg = np.argmax(emotion_args)
        emotion_text = emotion_labels[emotion_label_arg]
        print(emotion_text)
        #print(emotion_args[0,emotion_label_arg]) # 확률 나옴

        ##result_text = gender_text + '\n' + emotion_text
else :
    print("error")

##bgr_image = cv2.cvtColor(rgb_image, cv2.COLOR_RGB2BGR)
##cv2.imwrite(base_path + '\\test\\images\\predicted_test_image.png', bgr_image) #cv2.imwrite('../images/predicted_test_image.png', bgr_image)

#time.sleep(10)

#play_music.getEmotion(emotion_text)
