# Norman Sicily Historical Chatbot

This project is a natural language chatbot designed to analyze historical relationships between people and places in Norman Sicily using structured data and vectorized documents.

**Features**

1. Uses the open-weight model gpt-oss-120b (via HuggingFace) to generate pandas queries from natural language.

2. Supports two main dataframes: people_to_places_df and places_to_places_df.

3. Includes document search with semantic retrieval (RAG).

pip install openai


**Setup Instructions**

Run the following for quick automated setup (recommended):

```
bash setup.sh
```

This will:
- Create a Python virtual environment (Python 3.12 recommended)
- Install all dependencies from `requirements.txt`
- Copy `.env.example` to `.env` if needed

Then, edit `.env` to add your HuggingFace API token.

---

**Environment Variables**

You must set your HuggingFace Hub API token (with "Read" permission) as an environment variable:

- HUGGINGFACEHUB_API_TOKEN=your_huggingface_token_here

To create a token:
1. Go to https://huggingface.co/settings/tokens
2. Click "New token" and select "Read" permission
3. Copy the token and set it in your environment, e.g.:
   export HUGGINGFACEHUB_API_TOKEN=your_huggingface_token_here

**Running the Chatbot**

Streamlit Web Interface:

streamlit run streamlit_app.py


This will open a web-based chat interface in your browser using the gpt-oss-120b model from HuggingFace.

**Data Files**

Ensure the following files are in the same directory:

people_to_places.csv

places_to_places.csv

combined_output.txt

These are loaded at runtime by the chatbot.
