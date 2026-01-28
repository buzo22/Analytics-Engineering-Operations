# Analytics Data Model

This document describes the analytics data model used in the Operations Analytics Engineering Pipeline.

---

## Data Layers

### 1. Raw Layer
Contains source-aligned operational data ingested without transformation.

### 2. Staging Layer
Standardizes schemas, enforces data types, and prepares clean data for analytics modeling.

### 3. Analytics Layer
Contains fact and dimension tables optimized for analytics and BI consumption.

### 4. Metrics Layer
Defines centralized KPI logic to ensure consistent metric calculations across tools and teams.

---

## Fact Tables

### fact_operations
Represents operational events at the asset level.

**Grain:** One row per operation event.

**Key Metrics:**
- Moves per operation
- Total operational activity

---

## Dimension Tables

### dim_assets
Describes terminal assets used in operations.

**Attributes:**
- Asset type
- Asset status

---

## Metrics

### Operational Productivity
- Total Moves
- Total Operations
- Average Moves per Operation
