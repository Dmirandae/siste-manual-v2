(TeX-add-style-hook
 "ManualFilog2Ed2016"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "12pt" "openany")))
   (TeX-run-style-hooks
    "latex2e"
    "./formato/preaMuyBreve"
    "./formato/separar"
    "./formato/macros"
    "./formato/macro-preguntas"
    "./intro/intro"
    "./caracteres/caracteres"
    "./matrices/matrices"
    "./arboles/arboles"
    "./busquedas/busquedas"
    "./pesaje/pesaje"
    "./alinear/alinear"
    "./modelos/modelos"
    "./ml/ml"
    "./consenso/consenso"
    "./soporte/soporteBootJackBremer"
    "./soporte/soporteParamBoot"
    "./bayes/bayes"
    "./apendice/programas"
    "./apendice/formatos"
    "./apendice/usoPOY"
    "book"
    "bk12")
   (LaTeX-add-bibliographies
    "./bib/manual"))
 :latex)

