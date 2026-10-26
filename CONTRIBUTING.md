# Quy tắc làm việc

- `main` luôn chạy được; không push thẳng lên `main`.
- Mỗi việc một nhánh ngắn: `<người>/<việc>`, ví dụ `A/dense-maxp`, `B/prompt-understand-v2`.
- Merge qua Pull Request: 1 người review + `pytest -q` chạy qua; squash merge.
- Commit: `<loại>(<phạm vi>): <mô tả>`, loại ∈ feat, fix, exp, prompt, docs, refactor, test, chore.
- Khoá dữ liệu luôn là `(domain, topic_id)`; đầu ra tách theo lĩnh vực.
- Mỗi lần chạy ghi một file `outputs/results/<run_id>.json`; run_id = `YYYYMMDD-<người>-<mô tả>`.
- Chỉ tinh chỉnh trên train; dev chỉ đo ở các mốc (ghi vào docs/decisions.md).
- Không commit: dữ liệu, vector, index, cache, `.env`, notebook còn output.
- Gắn tag ở mỗi mốc: level0 … level4, rc1, submit-2c-v1.
