import json
import requests

r = requests.post("https://api.open-meteo.com/v1/forecast", data={"latitude": 52.52,"longitude": 13.41,"hourly": "temperature_2m"})


def lambda_handler(event, context):
    r = requests.post("https://api.open-meteo.com/v1/forecast", data={"latitude": 52.52,"longitude": 13.41,"hourly": "temperature_2m"})

    print("Starting data miner...")
    r.json()
    return {
        "statusCode": 200,
        "body": json.dumps("Hello, World!")
}
