# reteco-track2

Hệ thống cho RETECO (SemEval-2027 Task 1), Track 2: sub-track 2a, 2b, 2c.

## Cài đặt
```bash
python3 -m venv .venv && source .venv/bin/activate
pip install -e ".[dev]"        # thêm ,gpu khi chạy trên Kaggle/Colab
pre-commit install
cp .env.example .env           # điền đường dẫn và API key
bash scripts/download_data.sh
pytest -q
```

## Phân công
- Người A (@LDH1401): indexing, truy xuất, gộp, rerank: `src/reteco/retrieval/`, `notebooks/kaggle/`
- Người B: xây truy vấn, memory, sinh câu trả lời: `src/reteco/llm/`, `src/reteco/memory/`, `prompts/`
- Chung: `src/reteco/common/`, `src/reteco/eval/`, `src/reteco/pipeline/`, `tests/`, `docs/`

Quy tắc làm việc: xem `CONTRIBUTING.md`.
