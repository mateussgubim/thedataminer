import json

def lambda_handler(event, context):
    print("Starting data miner...")
    return {
        "statusCode": 200,
        "body": json.dumps("Hello, World!")
    }
