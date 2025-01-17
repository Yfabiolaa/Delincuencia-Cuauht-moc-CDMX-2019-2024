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
      graph [label = 'Enero ??? Febrero (2023)', labelloc = 't', fontsize=20]
      
      # Definir los nodos como c�rculos
      node [shape = circle]
      
      B -> B [label = '0']
      B -> M [label = '0']
      B -> A [label = '1']
      
      M -> M [label = '0']
      M -> B [label = '0']
      M -> A [label = '1']
      
      A -> A [label = '1/3']
      A -> M[label = '0']
      A -> B[label = '2/3']
      }
      ")

   
