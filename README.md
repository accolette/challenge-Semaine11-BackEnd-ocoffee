# O'Coffee

## A propros du projet :
A venir

## Project Management
- User stories : [Lien ici](./project-management/user-stories.md)
- Backlog : [Lien ici](./project-management/backlog.md)
- Daily Tracking Day 1 : [Lien ici](./project-management/daily-tracking-d1.md)
- Daily Tracking Day 2 : [Lien ici](./project-management/daily-tracking-d2.md)
- Daily Tracking Day 3 : [Lien ici](./project-management/daily-tracking-d3.md)

## Prerequisites
- Node.js
- PostgreSQL
- npm

## Installation
```bash
npm install
```
```bash
cp .env.example .env
```
```bash
psql -U USER -d DATABASE -f ./data/create_db.sql
```
```bash
psql -U USER -d DATABASE -f ./data/datas_db.sql
```
```bash
npm run dev
```