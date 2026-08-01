# Define your site below.
# Run the compiler and it will generate HTML, create a GitHub repo, and deploy to Vercel.

site "lab3-antlr-real" {
  title       = "Esteban Cárcamo and Nicolas Concuá — UVG 2026"
  description = "Estudiantes de CS construyendo compiladores en la Universidad del Valle de Guatemala"
  theme       = "dark"

  page "index" {
    hero    = "Hola, construimos este sitio con un compilador que nosotros escribimos"
    about   = "Somos estudiantes de Ciencias de la Computación en la UVG. Esta página fue generada desde un DSL propio, subida a GitHub y desplegada en Vercel — todo por nuestro compilador de ANTLR."
    contact = "nicolasconcua@gmail.com"
  }
}
