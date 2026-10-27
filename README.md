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
- Người A: `src/reteco/retrieval/` (index, BM25, dense, gộp, rerank)
- Người B: `src/reteco/llm/`, `prompts/` (hiểu lượt, sinh câu trả lời, judge)
- Chung: `src/reteco/common/`, `src/reteco/eval/`, `src/reteco/memory/` (thí nghiệm tuỳ chọn)

Quy tắc làm việc: xem `CONTRIBUTING.md`.
