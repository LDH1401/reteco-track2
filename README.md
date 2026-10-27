# reteco-track2

System for RETECO (SemEval-2027 Task 1), Track 2: sub-tracks 2a, 2b, 2c.

## Setup
```bash
python3 -m venv .venv && source .venv/bin/activate
pip install -e ".[dev]"        # add ,gpu when running on Kaggle/Colab
pre-commit install
cp .env.example .env           # fill in paths and API keys
bash scripts/download_data.sh
pytest -q
```

## Ownership
- Member A (@LDH1401): indexing, retrieval, fusion, reranking: `src/reteco/retrieval/`, `notebooks/kaggle/`
- Member B: query construction, memory, answer generation: `src/reteco/llm/`, `src/reteco/memory/`, `prompts/`
- Shared: `src/reteco/common/`, `src/reteco/eval/`, `src/reteco/pipeline/`, `tests/`, `docs/`

Working rules: see `CONTRIBUTING.md`.
