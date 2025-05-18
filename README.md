# 🧹 Data Wrangling with Bash and Regex

This repository contains Bash scripts and data analysis tasks performed as part of **Lab #28: Data Wrangling Techniques**, conducted at the **NUST Chip Design Centre (NCDC)**.

---

### 🎯 Objective

The goal of this lab was to apply **data wrangling and pattern extraction techniques** using Bash scripting, regular expressions (regex), and core UNIX utilities. Two main tasks were tackled:

1. Interactive Regex practice and validation
2. Extraction and transformation of real-world data from text files

---

### 🛠 Tools & Environment

* **Shell scripting** (Bash)
* **Regex** (via `grep`, `awk`, `tr`)
* Linux CLI utilities (`sort`, `uniq`, `wc`, `cat`, etc.)

---

## 📂 Task Overview

### ✅ Task 1: Interactive Regex Tutorial

A set of 15 regex-based exercises completed through an online interactive tutorial, focused on mastering:

* Literal and special characters
* Character classes and quantifiers
* Word boundaries and anchors
* Capturing groups and repetition patterns

📸 Screenshots of each completed step are included in the report (not shown in this README).

---

### ✅ Task 2: Word & Instruction Pattern Extraction

#### 🔍 Part A: Extracting Assembly Instructions from a Log File

A Bash script to extract instructions from a log file (`core.txt`) based on a given **Program Counter (PC)** value.

**Sample Usage:**

```bash
./extract_instruction.sh 0x00400084
```

If the PC is found, the corresponding instruction is displayed. Otherwise, the script notifies that the instruction is missing.

---

#### 📑 Part B: Processing Words in `article.txt`

A comprehensive text processing pipeline to:

* Convert the article to lowercase
* Extract words containing **at least one 'a'**, but **not ending in 'i'**
* Identify the **3 most common two-letter suffixes**
* Count total **unique** two-letter suffixes
* List all **missing** two-letter suffixes from the alphabetic possibilities (`aa` to `zz`)

**Output Includes:**

* Sorted counts of two-letter suffixes
* Number of unique suffixes found
* A list of combinations that did **not** appear

---

### 🧠 What I Learned

* Effective use of regular expressions for pattern extraction
* Chaining Unix tools to process and analyze raw text
* Scripting logic to solve real-world data parsing problems
* Debugging and validating script behavior using different input conditions

---

**Author:** Ahmad Mukhtar
