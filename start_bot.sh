#!/bin/bash

# Set the necessary environment variables
export OPENAI_API_KEY=""
export SLACK_APP_TOKEN=""
export SLACK_BOT_TOKEN=""



# OpenAI API settings (optional)
export OPENAI_MODEL="gpt-4o"
export OPENAI_TEMPERATURE=1
export OPENAI_TIMEOUT_SECONDS=90
#export OPENAI_SYSTEM_TEXT="You proofread text. When you receive a message, you will check for mistakes and make suggestion to improve the language of the given text"
export USE_SLACK_LANGUAGE=true
export SLACK_APP_LOG_LEVEL=INFO
export TRANSLATE_MARKDOWN=true
export REDACTION_ENABLED=true
export IMAGE_FILE_ACCESS_ENABLED=true

# Create a virtual environment and install dependencies
python3 -m venv .venv
source .venv/bin/activate
pip3 install -r requirements.txt

# Start the application
python3 main.py
