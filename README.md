Author: Saiteja Sirikonda

Course: Data Mining by Prof. Shayok Chakraborthy, ASU, Fall 2016

The main aim of this assignment is to study the applications of basic Classifiers SVMs, and also to familiarize oneself with Matlab. We used the built-in functions svmclass and svmval in Matlab. For the sake of this project, we used c = 10000 and lambda = 0.0001 for training.

Task 1:
We were given VidTIMIT dataset, which consists of video and audio recordings of 43 subjects reciting short sentences. We were instructed to use only the Video Modality. The videos were sliced into images and the discrete cosine transform function was used to extract feature vectors of dimension 100 from each image. The training set contains 3,500 samples and the test set contains 1,000 samples. The aim is to recognize the subject from the given image.

We were to train an SVM classifier with a polynomial kernel with parameter 2 on the training set and test on the test set. We were instructed to train one SVM for each class; for predicting a test sample and use the maximum of the values returned by all the SVMs to decide the final class.

Task 2:
This task was that of Multi-label classification, which is a generalization of multi-class classification (previous task), where each data sample can belong to multiple classes simlutaneously. The Scene dataset consist of 2407 images of an outdoor scene, where each image is represented by a feature vector of dimesnion 294. Also, there are 6 classes in the problem and an image can belong to one or more of the 6 classes. 

We were supposed to  train an SVM separately for each class. To predict a test sample, each SVM is applied separately on it and find the acccuracy.