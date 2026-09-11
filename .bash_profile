eval "$(starship init bash)"
termwidth="$(tput cols)"

# Adjust the spacing for the "Welcome to ..." and "All rights ..." lines.

left_align() {
  local padding="$(printf '%0.1s' \ {1..500})"
  local padding_percentage="$1"
  local padding_width=$((termwidth*padding_percentage/100))
  printf '%*.*s %s %*.*s\n' "$padding_width" "$padding_width" "$padding" "$2" 0 "$((termwidth-1-${#2}-padding_width))" "$padding"
}

left_align 6 "Welcome to the KodeKloud Hands-On lab"
figlet -w ${termwidth} -f slant KODEKLOUD | lolcat
left_align 10 "All rights reserved"
source /root/.bashrc 2>/dev/null
source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k
export CLAUDE_API_KEY=sk-DT3Cpe0rxBQ0uUYcHZC2BA
export GROQ_API_KEY=sk-DT3Cpe0rxBQ0uUYcHZC2BA
export ALLOWED_MODELS=google/gemini-2.5-flash
export OPENAI_API_BASE=https://api.ai.kodekloud.com
export LITELLM_API_BASE=https://api.ai.kodekloud.com
export AZURE_OPENAI_ENDPOINT=https://api.ai.kodekloud.com
export OPENAI_API_KEY=sk-DT3Cpe0rxBQ0uUYcHZC2BA
export LITELLM_API_KEY=sk-DT3Cpe0rxBQ0uUYcHZC2BA
export GROQ_API_BASE=https://api.ai.kodekloud.com
export AZURE_OPENAI_API_KEY=sk-DT3Cpe0rxBQ0uUYcHZC2BA
export CLAUDE_API_BASE=https://api.ai.kodekloud.com
