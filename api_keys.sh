#!/bin/zsh

# Function to check and set environment variable
check_and_set_var() {
    local var_name=$1
    if [[ -z "${(P)var_name}" ]]; then
        echo "$var_name is not set. Please enter its value:"
        read value
        echo "export $var_name='$value'" >> ~/.zshrc
        echo "$var_name has been added to ~/.zshrc"
    else
        echo "$var_name is already set in the environment."
    fi
}

# Check and set each variable
check_and_set_var OPENAI_API_KEY
check_and_set_var ANTHROPIC_API_KEY
check_and_set_var GROQ_API_KEY

echo "Please restart your shell or run 'source ~/.zshrc' to apply the changes."
