from flask import Flask, request, jsonify
import pandas as pd
import joblib

app = Flask(__name__)

# Load the pre-trained model
model = joblib.load("../model/model.pkl")

@app.route('/predict', methods=['POST'])
def predict():
    data = request.get_json()
    user_data = pd.DataFrame([data])
    # Assume model is already prepared with the necessary preprocessing steps
    predictions = model.predict(user_data)
    return jsonify({'predictions': predictions.tolist()})

if __name__ == '__main__':
    app.run(debug=True)
