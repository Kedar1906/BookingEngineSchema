# High-Concurrency Movie Booking Engine

A high-performance database schema and concurrency management design built for a movie ticket booking platform (e.g., BookMyShow / Fandango).

## 📌 Features & Design
- **BCNF Compliant**: Fully normalized schema to eliminate redundant data.
- **High Concurrency Management**: Prevents double-booking using a dual-layer strategy: Redis distributed locking (`SETNX`) alongside MySQL pessimistic locking (`SELECT ... FOR UPDATE`).
- **Dynamic Seat Tracking**: Real-time status management (`AVAILABLE`, `LOCKED`, `BOOKED`) with auto-expiry timestamps.

---

## 🛠️ ER Diagram

![ERD Diagram](docs/ERD.png)

```mermaid
erDiagram
    THEATRES ||--|{ SCREENS : "has"
    SCREENS ||--|{ SEATS : "contains"
    SCREENS ||--|{ SHOWS : "hosts"
    MOVIES ||--|{ SHOWS : "featured in"
    SHOWS ||--|{ SHOW_SEATS : "generates inventory"
    SEATS ||--|{ SHOW_SEATS : "mapped to"
    USERS ||--|{ BOOKINGS : "places"
    SHOWS ||--|{ BOOKINGS : "associated with"