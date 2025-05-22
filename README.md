# STARTER-AI Mini-workshop - Summer 2025

This repository contains materials for the STARTER-AI hands-on mini workshop, focusing on neural networks, sentiment classification, and fine-tuning transformer models using Python and Jupyter Notebooks.

## Project Structure

- `0_Intro_to_Colab_Revised.ipynb`: Introduction to Google Colab and basic notebook usage.
- `1_Student_Success_NeuralNet.ipynb`: Neural network modeling for student success prediction.
- `2_Sentiment_Classification.ipynb`: Sentiment analysis and classification using machine learning.
- `3a_FineTune_DistilBERT.ipynb`: Fine-tuning the DistilBERT model for NLP tasks.
- `3b_Capstone_FineTune_Emotion.ipynb`: Capstone project on fine-tuning for emotion detection.
- `requirements.txt`: Python dependencies for running the notebooks.
- `colab/`: Google Colab-compatible versions of all workshop notebooks.

## Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/emenriquez/MiniWorkshop_S25
   cd MiniWorkshop_S25
   ```
2. **Set up a virtual environment (recommended):**
   ```bash
   python3 -m venv .venv
   # On macOS/Linux:
   source .venv/bin/activate
   # On Windows (Command Prompt):
   .venv\Scripts\activate.bat
   # On Windows (PowerShell):
   .venv\Scripts\Activate.ps1
   ```
3. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```
4. **Open notebooks:**
   You can use VS Code, JupyterLab, Jupyter Notebook, or Google Colab to run the notebooks.

## Checkpoints and Results

Model checkpoints and training artifacts are stored in the `results/` directory. Each subfolder (e.g., `checkpoint-1000/`) contains model weights, tokenizer files, and training state.

## Acknowledgments

- Hugging Face Transformers
- Google Colab
- PyTorch

This project is supported by the National Science Foundation (NSF).
NSF IIS-2334389. "CAP: STARTER: South Texas AI Research, Training, and Education Resource."
