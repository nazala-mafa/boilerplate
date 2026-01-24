# Laravel + Nuxt Boilerplate

A minimal boilerplate for building a **Nuxt.js frontend** connected to a **Laravel API** using **stateful authentication** via **Laravel Sanctum (session cookie based)**.

Designed for local development with Docker and Traefik.

---

## Tech Stack

### Frontend (Nuxt.js)

* Pinia
* pinia-plugin-persistedstate
* TypeScript
* Sass

### Backend (Laravel)

* Laravel Sanctum
* Laravel Breeze (API authentication scaffold)

### Infrastructure (Docker)

* MySQL
* phpMyAdmin
* FrankenPHP
* Traefik

---

## Installation Guide

1. **Pull repository and all submodules**

   ```bash
   git submodule update --init --recursive
   ```

2. **Install Laravel dependencies**

   ```bash
   cd laravel
   composer install
   ```

3. **Install Nuxt dependencies**

   ```bash
   cd nuxt
   npm install
   ```

4. **Setup local DNS**

   Add the following entries to your `/etc/hosts` file:

   ```
   127.0.0.1 app.boilerplate.local
   127.0.0.1 api.boilerplate.local
   127.0.0.1 pma.boilerplate.local
   ```

5. **Run the project**

   ```bash
   make up
   ```

---

## Notes

* Uses **stateful Sanctum authentication** (session cookies, not token-based)
* Traefik handles local domain routing
* Suitable as a starting point for full-stack Laravel + Nuxt applications
