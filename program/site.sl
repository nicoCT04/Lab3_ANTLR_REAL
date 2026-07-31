# Define your site below.
# Run the compiler and it will generate HTML, create a GitHub repo, and deploy to Vercel.

site "lab3-antlr-real" {
  title       = "Nicolás Concuá — UVG 2026"
  description = "Estudiante de CS construyendo compiladores en la Universidad del Valle de Guatemala"
  theme       = "dark"

  page "index" {
    hero    = "Hola, construí este sitio con un compilador que yo escribí"
    about   = "Soy estudiante de Ciencias de la Computación en la UVG. Esta página fue generada desde un DSL propio, subida a GitHub y desplegada en Vercel — todo por mi compilador de ANTLR."
    contact = "nicolasconcua@gmail.com"
  }
}
