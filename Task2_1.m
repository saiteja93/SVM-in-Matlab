InputDirectoryPath = uigetdir('select file path');
X_train = importdata(strcat(InputDirectoryPath,'\X_train.mat'));
y_train = importdata(strcat(InputDirectoryPath,'\y_train.mat'));
X_test = importdata(strcat(InputDirectoryPath,'\X_test.mat'));
y_test = importdata(strcat(InputDirectoryPath,'\y_test.mat'));
label =zeros(size(X_test,1),6);
A = zeros(size(X_test,1),1);
 for j = 1:6;
     SVMModel = fitcsvm(X_train,y_train(:,j),'ClassNames',[false true],...
         'KernelFunction','polynomial','PolynomialOrder',2);
     [label(:,j),scores] = predict(SVMModel,X_test); 
 end
 for i = 1 : 907
      intr = label(i,:) & y_test(i,:);
      uni = label(i,:) | y_test(i,:);
      A(i,1) = sum(intr)/sum(uni);
 end
disp (sum(A) * 100/size(X_test,1));