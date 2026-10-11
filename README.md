# SBT-DF204 Case Study 2: Reconstructing Suspected Drug Trafficking From Chrome Web History

**Student:** Mary-Joy Adewole | **Reg. no.:** 2025/FWSD/11468 | **Institution:** International Cybersecurity and Digital Forensics Academy (ICDFA)

## Contents
| Path | What it is |
|---|---|
| `SBTDF204_CaseStudy2_2025-FWSD-11468.pdf` / `.docx` | The full report (8 investigation questions, UTC timeline, evidence log E01-E23, SQL appendix) |
| `screenshots/` | The 20 figures used in the report, numbered as in the report (cropped to the terminal window) |
| `evidence_records/` | Saved command output: hashes, `stat`/`file` output, schema, row counts, DB health, visit timeline (`visit_timeline_full.csv`), URLs, download record, search terms, navigation chains, annotation tables, timestamp cross-check |
| `sql/` | The eight SQL files run with `sqlite3 -readonly` on the working copy |

## Evidence integrity
- The original Chrome `History` database is **not included** (the brief says not to upload it unless requested).
- Original file: 196,608 bytes
- SHA-256: `b991b0fa69662c44caf599e468c8088576ebd9cebbf46d02c89cf51bcde3fd19`
- MD5: `0c594e9de87348c089554953a67e2c74`
- Acquired 2026-10-10 06:06:35 UTC; the working copy hash matched before and after all queries.

## How to check the main results
- `evidence_records/visit_timeline_full.csv`: all 74 visits in UTC with visit ID, URL ID, `from_visit`, transition, title, URL.
- `evidence_records/downloads.txt`: download 1, `proof_of_payment.png`.
- `evidence_records/timestamp_crosscheck.txt`: raw WebKit value and independent `date` conversion.

All times are UTC. No live site, account, address or transaction was visited.
