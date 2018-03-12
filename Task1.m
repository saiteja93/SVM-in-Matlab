InputDirectoryPath = uigetdir('select file path');
X_train = importdata(strcat(InputDirectoryPath,'\X_train.mat'));
y_train = importdata(strcat(InputDirectoryPath,'\y_train.mat'));
X_test = importdata(strcat(InputDirectoryPath,'\X_test.mat'));
y_test = importdata(strcat(InputDirectoryPath,'\y_test.mat'));

y_train = y_train';
SVMModels = cell(25,1);
classes = unique(y_train);
 for j = 1:numel(classes);
     indx = eq(y_train,classes(j)); % Create binary classes for each classifier
     SVMModel = fitcsvm(X_train,indx,'ClassNames',[false true],'Standardize',true,...
         'KernelFunction','polynomial','PolynomialOrder',2);
     [label(:,j),scores] = predict(SVMModel,X_test); 
 end
count =0;
y_test = y_test';
  for i = 1 : 1000
      if(find(label(i,:)) == y_test(i,1))
          count = count+1;
      end
  end
  disp(count)