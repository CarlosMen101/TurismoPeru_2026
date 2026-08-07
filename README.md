# 🏔️ Sistema de Gestión Turismo Perú 2026

## 📘 Descripción General
Este proyecto es una aplicación web desarrollada con **Python** y **Flask** basada en la arquitectura MVC (Modelo-Vista-Controlador). Permite gestionar personas y clientes conectándose a una base de datos **SQL Server** mediante procedimientos almacenados (*Stored Procedures*), facilitando operaciones CRUD como el registro, listado y consulta de datos.

## 🚀 Lo que se está desarrollando
Actualmente se está implementando un sistema de gestión que contempla:
- **Control de Personas y Clientes:** Registro y consulta de datos generales y específicos para clientes.
- **Conexión Eficiente a Base de Datos:** Uso de `pyodbc` y variables de entorno para una integración segura con SQL Server.
- **Lógica de Negocio y Controladores:** Procesamiento de solicitudes HTTP con Flask y separación de la arquitectura en controladores y modelos.
- **Interfaz de Usuario:** Renderizado de plantillas HTML dinámicas con Jinja2 para la navegación e inserción de datos.

## 🗂️ Estructura del Proyecto
```bash
TURISMOPERU_2026/
├── controllers/
│   ├── listar_controller.py
│   └── persona_controller.py
├── database/
│   └── conexion.py
├── models/
│   ├── cliente.py
│   └── persona.py
├── procedures/
├── scripts/
│   └── create_files.py
├── static/
├── templates/
│   ├── index.html
│   └── insertar.html
├── venv/
├── .env
├── .env.example
├── .gitignore
├── app.py
├── config.py
├── README.md
└── requirements.txt

 👨‍🏫 Autor

Proyecto desarrollado aplicando conceptos de Python y bases de datos SQL.
Carlos Méndez
Fecha: 07.08.2026
