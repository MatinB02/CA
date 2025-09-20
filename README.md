# CA
Computer Architecture course, instructed by Dr. Hossein Asadi, in Spring (1404)

---

# Project: Floating Point Unit (FPU) Design

## 📘 Project Overview

This project was developed as part of the **Computer Architecture** course (Spring 1404) under the supervision of **Dr. Hossein Asadi**.
The goal was to design and implement a **Floating Point Unit (FPU)** based on the **IEEE-754 single-precision** standard.

The FPU includes:

* A **Floating Point Register Bank**
* A **Floating Point ALU (FPALU)**
* A **Control Unit**
* Benchmarks and verification tasks

The project was implemented in **Verilog** and simulated using **Logisim** for structural validation.

---

## ⚙️ Features

The FPU supports the following floating-point operations:

* **Addition (`fadd`)**
* **Subtraction (`fsub`)**
* **Multiplication (`fmult`)**
* **Comparison (`fslt`)** → returns 1 if `rs < rt`
* **Absolute Value (`fabs`)**
* **Sine Function (`fsin`)** → implemented using Taylor series approximation
* **Register Transfer Instructions**:

  * `TOcop` (copy integer register → FP register)
  * `FROMcop` (copy FP register → integer register)

The implementation also handles:

* **Subnormal numbers**
* **Special cases** (`NaN`, `Infinity`, `Zero`)
* **Normalization and rounding**

---

## 🏗️ Architecture

1. **Base Circuit** – Derived from a single-cycle MIPS design and extended for floating-point support.
2. **Floating Point Register Bank** – Stores FP operands and results.
3. **FPALU** – Performs arithmetic and logical FP operations.
4. **Control Unit** – Decodes instructions and generates control signals.
5. **Testbench** – Validates correctness of all FP operations.

---

## 🧪 Verification

* A **custom testbench** was written to simulate and verify all FP operations.
* Tasks and functions were defined for IEEE-754 compliant addition and multiplication.
* Edge cases such as **NaN**, **Infinity**, **Zero**, and **Subnormals** were verified.
* Colored terminal outputs were used to improve test readability.

---

## 👩‍💻 Team Members

* Matin Bagheri (402105727)
* Fatima Timarch (402105802)
* Seyyedeh Shaqayeq Mirjalil (402106659)
* Seyed Ahmad Mousavi Aval (402106648)

Instructor: **Dr. Hossein Asadi**
---

## 🚀 How to Run
We basically used the validation methods previously used in practical assignments, available in [this reposityry](https://github.com/MahdiGMK/SUT_CA_4032_ProfAsadi_Judgement_System).
1. Open the project in **ModelSim** or another Verilog simulator.
2. Compile all modules (`RegisterBank`, `FPALU`, `ControlUnit`).
3. Run the **Testbench** to verify FP operations.
4. Observe simulation outputs and correctness for various FP test cases.

---

## 📜 License

This project was created for educational purposes as part of the **Computer Architecture** course.

=
