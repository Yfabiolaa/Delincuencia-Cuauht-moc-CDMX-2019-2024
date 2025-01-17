install.packages("installr")
library(installr)
version
updateR()

# Instalar y cargar el paquete DiagrammeR
install.packages("DiagrammeR")
library(DiagrammeR)

# Gr�fico de la cadena de Markov con t�tulo
grViz("
      digraph Markov {
      # Definir el t�tulo
      graph [label = 'Enero ??? Febrero (2024)', labelloc = 't', fontsize=20]
      
      # Definir los nodos como c�rculos
      node [shape = circle]
      
      B -> B [label = '1']
      B -> M [label = '0']
      B -> A [label = '0']
      
      M -> M [label = '1/3']
      M -> B [label = '1/3']
      M -> A [label = '1/3']
      
      A -> A [label = '1']
      A -> B [label = '0']
      A -> M [label = '0']
      }
      ")
