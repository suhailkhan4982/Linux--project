# OSS Capstone Audit: Mozilla Firefox

This repository contains a comprehensive technical audit of **Mozilla Firefox** conducted within an Open Source environment. The project validates the transparency, security, and integrity of the software using automated Linux-based shell scripts.

## 📂 Project Structure
* **/report**: Contains the final 16-page technical audit report (PDF).
* **/scripts**: Contains the Bash (.sh) scripts used for automated verification:
    * `system_identity.sh`: Verifies OS and Kernel versions.
    * `package_inspector.sh`: Checks for Firefox installation status.
    * `disk_auditor.sh`: Audits file permissions and storage.
    * `log_analyzer.sh`: Previews system logs for environment health.
    * `manifesto_gen.sh`: Generates a digital audit certificate.

## 🛠️ Technology Stack
* **OS**: Ubuntu 24.04.4 LTS (via WSL2)
* **Language**: Bash (Shell Scripting)
* **Audit Target**: Mozilla Firefox (MPL 2.0 License)

## 🚀 How to Run the Scripts
To replicate this audit, run the scripts in your Ubuntu terminal:
```bash
bash scripts/system_identity.sh
