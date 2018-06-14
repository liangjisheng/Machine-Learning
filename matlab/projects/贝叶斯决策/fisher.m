load fisheriris;
obj = ClassificationDiscriminant.fit(meas,species);
X = meas(99:102,:); % take four rows;
[label score cost] = predict(obj,X);