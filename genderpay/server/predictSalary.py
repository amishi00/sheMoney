# import numpy as np
# import matplotlib.pyplot as plt
import pandas as pd

# Import necessary libraries
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import OneHotEncoder, StandardScaler
from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_squared_error
import matplotlib.pyplot as plt
import joblib

data = pd.read_csv('Salary_Data.csv', on_bad_lines='skip')
print (data.head())

import numpy as np




# Load the dataset from Kaggle
# Replace 'dataset.csv' with the path to your dataset file

# Data Preprocessing
# Handle missing values (if any)
data.dropna(inplace=True)

# Separate features (X) and target variable (y)
X = data.drop(columns=['Salary'])
y = data['Salary']

# Split the data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Feature Engineering
# Define categorical and numerical features
categorical_features = ['Gender', 'Education Level', 'Job Title']
numerical_features = ['Age', 'Years of Experience']

# Preprocessing pipeline
categorical_transformer = OneHotEncoder(handle_unknown='ignore')
numerical_transformer = StandardScaler()

preprocessor = ColumnTransformer(
    transformers=[
        ('cat', categorical_transformer, categorical_features),
        ('num', numerical_transformer, numerical_features)
    ])

# Model Selection and Training
# Define the model
model = RandomForestRegressor(n_estimators=100, random_state=42)

# Create a pipeline with preprocessing and the model
pipeline = Pipeline(steps=[('preprocessor', preprocessor),
                           ('model', model)])

# Train the model
pipeline.fit(X_train, y_train)

# Evaluation
# Predict on the test set
y_pred = pipeline.predict(X_test)

# Calculate Mean Squared Error
mse = mean_squared_error(y_test, y_pred)
print(f'Mean Squared Error: {mse}')

# Function to input user details and predict salary
def predict_and_compare_salaries(model, preprocessor):
    # Input user details
    age = int(input("Enter your age: "))
    gender = input("Enter your gender: ")
    education_level = input("Enter your education level: ")
    job_title = input("Enter your job title: ")
    years_of_experience = int(input("Enter your years of experience: "))
    
    # Prepare the input data
    user_data = pd.DataFrame({
        'Age': [age],
        'Gender': [gender],
        'Education Level': [education_level],
        'Job Title': [job_title],
        'Years of Experience': [years_of_experience]
    })
    
    # Predict the salary
    user_data_preprocessed = preprocessor.transform(user_data)
    predicted_salary = model.predict(user_data_preprocessed)[0]
    
    print(f"Predicted Salary for {gender}: ${predicted_salary:.2f}")
    
    # Change gender to 'male' and predict again
    user_data['Gender'] = 'male'
    user_data_preprocessed = preprocessor.transform(user_data)
    predicted_salary_male = model.predict(user_data_preprocessed)[0]
    
    print(f"Predicted Salary for male: ${predicted_salary_male:.2f}")

# Create the pipeline (as previously defined)
pipeline = Pipeline(steps=[('preprocessor', preprocessor),
                           ('model', model)])

# Train the model (using the full code from the previous section to train the model)
pipeline.fit(X_train, y_train)

# Use the trained model to predict and compare salaries
predict_and_compare_salaries(pipeline['model'], pipeline['preprocessor'])
joblib.dump(model, 'model.pkl')
# Plot predicted vs. actual salaries
plt.scatter(y_test, y_pred)
plt.xlabel('Actual Salary')
plt.ylabel('Predicted Salary')
plt.title('Actual vs. Predicted Salary')
plt.show()



