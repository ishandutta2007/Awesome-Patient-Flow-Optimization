<p align="center">
  <img src="assets/banner.svg" alt="Awesome Patient Flow Optimization Banner" width="100%">
</p>

# 🏥 Awesome-Patient-Flow-Optimization
<a href="https://github.com/ishandutta2007/Awesome-Awesome-Awesome"><img src="https://img.shields.io/badge/Awesome-%E2%9C%94-blueviolet?style=flat-square&logo=github" alt="Awesome"/></a><a href="https://discord.gg/jc4xtF58Ve"><img src="https://img.shields.io/badge/Discord-5865F2?style=for-the-badge&logo=discord&logoColor=white" alt="Discord" /></a><a href="https://github.com/ishandutta2007"><img alt="GitHub followers" src="https://img.shields.io/github/followers/ishandutta2007?label=Follow" /></a>

## 🔍 Similar Projects to Patient Flow Optimization Platforms

<p align="left">
  <strong>Patient flow optimization, healthcare capacity management, hospital bed availability, emergency department throughput, operating room scheduling, and AI predictive analytics in healthcare.</strong> A comprehensive and curated list of commercial tools and open-source alternatives for health information systems, EMR, and HMIS.
</p>

**Patient Flow Optimization** platforms help hospitals manage capacity, bed availability, operating room (OR) scheduling, emergency department (ED) throughput, patient transport, discharge planning, and real-time command-center visibility. Leading commercial tools include LeanTaaS, Qventus, TeleTracking, Hospital IQ, Care Logistics, Central Logic, PerfectServe, GE Command Centre, Medworxx, and TeleTracking Operations IQ.

Below is a **curated list** of notable platforms and their open-source equivalents. True end-to-end commercial-grade predictive optimization engines are rare in open source, so the emphasis is on **open-source Hospital Information Systems (HIS/HMIS)** with strong bed management and patient flow features, plus predictive analytics and simulation tools.

## 🏢 SaaS / Hosted Platforms

- **[LeanTaaS](https://leantaas.com/)** — AI-powered capacity management focused on OR block optimization, infusion centers, and inpatient beds. Strong predictive analytics.
- **[Qventus](https://www.qventus.com/)** — AI-driven patient flow platform that automates operational decisions across ED, inpatient, and perioperative settings.
- **[TeleTracking](https://www.teletracking.com/)** — Real-time patient flow and capacity management with transfer center, bed management, and command center solutions. Includes Operations IQ analytics.
- **[Hospital IQ](https://www.hospitaliq.com/)** — Predictive analytics for capacity, staffing, and patient flow optimization.
- **[Care Logistics](https://www.carelogistics.com/)** — End-to-end patient flow management focusing on care progression and discharge efficiency.
- **[Central Logic](https://www.centrallogic.com/)** — Transfer center and capacity management platform for health systems.
- **[PerfectServe](https://www.perfectserve.com/)** — Clinical communication and care coordination platform that supports flow by reducing delays in provider response.
- **[GE Command Centre](https://www.gehealthcare.com/)** — GE HealthCare’s hospital command center solution for real-time visibility and predictive operations.
- **[Medworxx](https://www.medworxx.com/)** — Clinical utilization and patient flow management tools (now part of larger health IT portfolios).
- **[TeleTracking Operations IQ](https://www.teletracking.com/)** — Advanced analytics layer on top of TeleTracking’s real-time capacity data.

## 🔓 Open-Source Software

### 🏥 Full Hospital Information Systems with Patient Flow & Bed Management
- **[OpenEMR](https://github.com/openemr/openemr)** [![GitHub stars](https://img.shields.io/github/stars/openemr/openemr?style=social&color=white)](https://github.com/openemr/openemr/stargazers) — Most popular open-source EMR/practice management system. Includes scheduling, patient flow elements, and growing inpatient/hospital modules.
- **[CARE (Open Healthcare Network)](https://github.com/coronasafe/care)** [![GitHub stars](https://img.shields.io/github/stars/coronasafe/care?style=social&color=white)](https://github.com/coronasafe/care/stargazers) — Modern open-source Hospital Information System (MIT) with bed management, queues, appointments, wards, live location tracking, and operational dashboards. Used in production across multiple Indian states. FHIR-oriented.
- **[openMAXIMS](https://github.com/IMS-MAXIMS/openMAXIMS)** [![GitHub stars](https://img.shields.io/github/stars/IMS-MAXIMS/openMAXIMS?style=social&color=white)](https://github.com/IMS-MAXIMS/openMAXIMS/stargazers) — Full open-source Patient Administration System (PAS) and EPR with graphical bed management, elective lists, RTT pathways, ED tracking, theatres, and outpatient scheduling. Designed for NHS-style workflows.
- **[VITALIt](https://github.com/basedavishkar/vitalit-os)** [![GitHub stars](https://img.shields.io/github/stars/basedavishkar/vitalit-os?style=social&color=white)](https://github.com/basedavishkar/vitalit-os/stargazers) — Modern self-hostable hospital management system (Next.js + FastAPI) with patient, appointment, bed-related, and operational modules. Explicitly positioned as a free alternative to expensive enterprise software.
- **[OpenMRS + Bed Management Module](https://github.com/openmrs/openmrs-module-bedmanagement)** [![GitHub stars](https://img.shields.io/github/stars/openmrs/openmrs-module-bedmanagement?style=social&color=white)](https://github.com/openmrs/openmrs-module-bedmanagement/stargazers) — Widely deployed open-source EMR platform. The dedicated Bed Management module provides data model, services, and REST APIs for IPD ward and bed allocation (originally from Bahmni).
- **[GNU Health](https://www.gnuhealth.org/)** — Comprehensive Hospital and Health Information System focused on public health, with hospital management, bed, and operational features.
- **[OpenClinic GA](https://sourceforge.net/projects/open-clinic/)** — Integrated open-source hospital information management system covering administrative, clinical, lab, pharmacy, and scheduling functions. Strong in resource-limited settings.

### 📈 Predictive Analytics & Research Tools
- **[patientflow (UCL-CORU)](https://github.com/UCL-CORU/patientflow)** [![GitHub stars](https://img.shields.io/github/stars/UCL-CORU/patientflow?style=social&color=white)](https://github.com/UCL-CORU/patientflow/stargazers) — Python package for real-time short-term prediction of hospital bed demand from current and incoming patients. Designed for bed managers; originally developed with University College London Hospitals data.
- **[OccupyBed AI](https://github.com/f9-o/OccupyBed-Ai)** [![GitHub stars](https://img.shields.io/github/stars/f9-o/OccupyBed-Ai?style=social&color=white)](https://github.com/f9-o/OccupyBed-Ai/stargazers) — AI-powered hospital command center prototype featuring real-time bed tracking, 48-hour occupancy prediction, and interactive visual ward maps.

### ⚙️ Simulation, Optimization & Specialized Tools
- **[SCRIBE](https://github.com/nocomp/scribe)** [![GitHub stars](https://img.shields.io/github/stars/nocomp/scribe?style=social&color=white)](https://github.com/nocomp/scribe/stargazers) — Open-source hospital crisis management platform with multi-site bed occupancy grids, tension levels, and real-time capacity overview (AGPL-3.0).
- **[EDFlowSimulator](https://github.com/VoxDroid/EDFlowSimulator)** [![GitHub stars](https://img.shields.io/github/stars/VoxDroid/EDFlowSimulator?style=social&color=white)](https://github.com/VoxDroid/EDFlowSimulator/stargazers) — Discrete-event simulation (SimPy) for Emergency Department patient flow optimization, analyzing bottlenecks, resource utilization, and waiting times.
- **[PathSimR / patient flow simulation tools](https://www.tandfonline.com/doi/full/10.1080/17477778.2022.2081521)** — Open-source R-based tools for modelling inpatient and outpatient pathways (referenced academic open-source work).
- Various constraint-optimization bed assignment projects using Google OR-Tools (search GitHub for “hospital bed allocation OR-Tools”).

### 🕒 Scheduling & Queue Management
- **[Ottehr](https://github.com/masslight/ottehr)** [![GitHub stars](https://img.shields.io/github/stars/masslight/ottehr?style=social&color=white)](https://github.com/masslight/ottehr/stargazers) — Open-source FHIR-native patient scheduling, registration, and queueing solution. Production-ready and highly customizable.
- **[easpataal](https://github.com/gaureshpai/easpataal)** [![GitHub stars](https://img.shields.io/github/stars/gaureshpai/easpataal?style=social&color=white)](https://github.com/gaureshpai/easpataal/stargazers) — Hospital queue management system focused on reducing wait times with real-time patient tracking and role-based dashboards.

---

**🤝 How to contribute**  
Fork this repository, add a new project (with link + short description + category), and open a pull request.  
Prefer actively maintained open-source projects that address capacity, bed management, scheduling, or predictive patient flow.

**📜 License**  
This list is public domain / CC0. Feel free to copy into your own awesome list or README.

Star the projects you find useful — open-source healthcare operations tooling continues to grow, especially in resource-constrained and research settings! 🏥

##  Star History
<div align="center">
<a href="https://www.star-history.com/?repos=ishandutta2007%2FAwesome-Patient-Flow-Optimization&type=date&legend=bottom-right">
<picture>
<source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/chart?repos=ishandutta2007/Awesome-Patient-Flow-Optimization&type=date&theme=dark&legend=bottom-right" />
<source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/chart?repos=ishandutta2007/Awesome-Patient-Flow-Optimization&type=date&legend=bottom-right" />
<img alt="Star History Chart" src="https://api.star-history.com/chart?repos=ishandutta2007/Awesome-Patient-Flow-Optimization&type=date&legend=bottom-right" />
</picture>
</a>
</div>
