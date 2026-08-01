# Lab 3 — SiteLang (GitHub + Vercel)

DSL propio parseado con ANTLR. El compilador lee `site.sl`, genera HTML, crea un repo en GitHub y lo despliega en Vercel.

**Autores:** Esteban Cárcamo · Nicolás Concuá  
**Curso:** Construcción de Compiladores — UVG

## Entregables

- Video: https://youtu.be/wVB0MJ3fZGg
- Informe: [documentation/Informe_Lab3_SiteLang_Vercel.pdf](documentation/Informe_Lab3_SiteLang_Vercel.pdf)
- Sitio desplegado: https://lab3-antlr-real.vercel.app

## Pipeline

```
site.sl → Lexer → Parser → Árbol → Listener → HTML + APIs → URL en Vercel
```

## Estructura

```
├── program/
│   ├── SiteLang.g4      # Gramática del DSL
│   ├── site.sl          # Programa de ejemplo
│   ├── Driver.py        # Entrada del compilador
│   └── SiteListener.py  # Genera HTML y llama a GitHub/Vercel
├── scripts/             # Exploración de APIs con curl
└── documentation/       # Informe escrito
```

## Ejecutar

1. Copia `program/.env.example` → `program/.env` y pon `GITHUB_TOKEN` y `VERCEL_TOKEN`.
2. Edita `program/site.sl` si quieres otro nombre de sitio.
3. Build y run:

```bash
docker build --rm . -t lab3-vercel

docker run --rm --user "$(id -u):$(id -g)" --env-file program/.env \
  -v "$(pwd)/program":/program lab3-vercel \
  bash -c "antlr -Dlanguage=Python3 -listener SiteLang.g4 && python3 Driver.py site.sl"
```
