# Application: "FA-Cheatsheet" - UI
# Version: 1.0.0
# Author: Martin Hofbauer
# Contact: martin@hofeder.solutions

# Note
# 'MathJax' only works when Mac is connected to the internet(?)

library(shiny)
library(bslib)
withMathJax()

# Define UI for application that draws a histogram
shinyUI(navbarPage(
        theme=bs_theme(version=4, bootswatch="spacelab", font_scale=0.8),
        footer=tags$small('V 1.0.0'), 
        title="FA - Funktionale Abhängigkeiten",
        selected="Einleitung",
        
        {
        tabPanel("Einleitung",
                 wellPanel(h3("Disclaimer"),
                           p('Die Inhalte auf dieser Website sind zur Vorbereitung auf die AHS-Reifeprüfung in Österreich gedacht.
                             BHS-Schüler oder Schüler aus anderen Ländern können die Inhalte selbstverständlich auch gerne nutzen, müssen sich aber bewusst sein, dass die Aufbereitung des Stoffes für ein anderes Publikum erstellt wurde.
                             Außerdem sind Formulierungen und der Grad an mathematischer Exaktheit so gewählt, dass das zu erwartende Publikum damit zurecht kommt und davon profitiert. 
                             Mit dieser Aufbereitung der Inhalte ist es nicht das Ziel, die Fields-Medaille zu gewinnen.')),
                 h3('Was kann diese "App"?'),
                 p('Dieses "interaktive Cheatsheet" stellt einen innovativeren Ansatz der Zusammenfassung der Grundkompetenz "Funktionale Abhängigkeiten - FA" im Vergleich zu klassichen Merkzetteln etc. dar. 
                   Bei der Erstellung stand vor allem die Nutzerfreundlichkeit und einfache Verwendbarkeit im Vordergrund. 
                   Ich erhebe aber keineswegs Anspruch darauf, den einzigen richtigen oder besten Weg der Aufbereitung gewählt zu haben. 
                   Über Anmerkungen und konstruktives Feedback bin ich immer dankbar. Nutzen Sie dazu gerne die untenstehenden Kontaktinformationen'),
                 #a(LINK zum Udemy-Kurs)
                 h4("Auszug aus dem Grundkompetenzkatalog"),
                 p('Die Hard Facts - was sagt der Grundkompetenzkatalog über "funktionale Abhängigkeiten"?'),
                 navlistPanel( widths=c(3,9),
                     tabPanel("FA 1 - Der Funktionsbegriff", 
                              h5("FA 1 - Funktionsbegriff, reelle Funktionen, Darstellungsformen und Eigenschaften"),
                              tag("ul", "FA 1.1: für gegebene Zusammenhänge entscheiden können, ob man sie als Funktionen betrachten kann"),
                              tag("ul", "FA 1.2: Formeln als Darstellung von Funktionen interpretieren und dem Funktionstyp zuordnen können"),
                              tag("ul", "FA 1.3: zwischen tabellarischen und grafischen Darstellungen funktionaler Zusammenhänge wechseln können"),
                              tag("ul", "FA 1.4: aus Tabellen, Graphen und Gleichungen von Funktionen Werte(paare) ermitteln und im Kontext deuten können"),
                              tag("ul", "FA 1.5: Eigenschaften von Funktionen erkennen, benennen, im Kontext deuten und zum Erstellen von Funktionsgraphen einsetzen können: Monotonie(wechsel), lokale Extrema, Wendepunkte, Periodizität, Achsensymmetrie, asymptotisches Verhalten, Schnittpunkte mit den Achsen"),
                              tag("ul", "FA 1.6: Schnittpunkte zweier Funktionsgraphen grafisch und rechnerisch ermitteln und im Kontext interpretieren können"),
                              tag("ul", "FA 1.7: Funktionen als mathematische Modelle verstehen und damit verständig arbeiten können"),
                              tag("ul", "FA 1.8: durch Gleichungen (Formeln) gegebene Funktionen mit mehreren Veränderlichen im Kontext deuten können, Funktionswerte ermitteln können"),
                              tag("ul", "FA 1.9: einen Überblick über die wichtigsten (unten angeführten) Typen mathematischer Funktionen geben, ihre Eigenschaften vergleichen können")
                     ),
                     tabPanel("FA 2  - Lineare Funktionen", 
                              h5("FA 2 - Lineare Funktion \\(f(x)=k \\cdot x + d \\)"),
                              tag("ul", "FA 2.1: verbal, tabellarisch, grafisch oder durch eine Gleichung (Formel) gegebene lineare Zusammenhänge als lineare Funktionen erkennen bzw. betrachten können; zwischen diesen Darstellungsformen wechseln können"),
                              tag("ul", "FA 2.2: aus Tabellen, Graphen und Gleichungen linearer Funktionen Werte(paare) sowie die Parameter k und d ermitteln und im Kontext deuten können"),
                              tag("ul", "FA 2.3: die Wirkung der Parameter k und d kennen und die Parameter in unterschiedlichen Kontexten deuten können"),
                              tag("ul", "FA 2.4: wichtige Eigenschaften kennen und im Kontext deuten können:
                              $$f( x+1 ) = f( x ) + k \\text{ und } \\frac{f( x_2 ) - f( x_1 )}{x_2 - x_1} = k =f^{\\prime}( x ) $$"),
                              tag("ul", "FA 2.5: die Angemessenheit einer Beschreibung mittels linearer Funktion bewerten können"),
                              tag("ul", "FA 2.6: direkte Proportionalität als lineare Funktion vom Typ \\( f(x) = k \\cdot x \\) beschreiben können")
                     ),
                     tabPanel("FA 3 - Potenzfunktionen", 
                              h5("FA 3 - Potenzfunktion"),
                              tag("ul", "FA 3.1: verbal, tabellarisch, grafisch oder durch eine Gleichung (Formel) gegebene Zusammenhänge dieser Art als entsprechende Funktionen erkennen bzw. betrachten können; zwischen diesen Darstellungsformen wechseln können"),
                              tag("ul", "FA 3.2: aus Tabellen, Graphen und Gleichungen dieser Funktionen Werte(paare) sowie die Parameter a und b ermitteln und im Kontext deuten können"),
                              tag("ul", "FA 3.3: die Wirkung der Parameter a und b kennen und die Parameter im Kontext deuten können"),
                              tag("ul", "FA 3.4: indirekte Proportionalität als Potenzfunktion vom Typ \\( f(x) = \\frac{a}{x} \\) beschreiben können")
                     ),
                     tabPanel("FA 4 - Polynomfunktionen", 
                              h5("FA 4 - Polynomfunktion"),
                              tag("ul", "FA 4.1: typische Verläufe von Graphen in Abhängigkeit vom Grad der Polynomfunktion (er)kennen"),
                              tag("ul", "FA 4.2: zwischen tabellarischen und grafischen Darstellungen von Zusammenhängen dieser Art wechseln können"),
                              tag("ul", "FA 4.3: aus Tabellen, Graphen und Gleichungen von Polynomfunktionen Funktionswerte, aus Tabellen und Graphen sowie aus einer quadratischen Funktionsgleichung Argumentwerte ermitteln können"),
                              tag("ul", "FA 4.4: den Zusammenhang zwischen dem Grad der Polynomfunktion und der Anzahl der (möglichen) Null-, Extrem- und Wendestellen wissen")
                     ),
                     tabPanel("FA 5 - Exponentialfunktionen", 
                              h5("FA 5 - Exponentialfunktionen"),
                              tag("ul", "FA 5.1: verbal, tabellarisch, grafisch oder durch eine Gleichung (Formel) gegebene exponentielle Zusammenhänge als Exponentialfunktion erkennen bzw. betrachten können; zwischen diesen Darstellungsformen wechseln können"),
                              tag("ul", "FA 5.2: aus Tabellen, Graphen und Gleichungen von Exponentialfunktionen Werte(paare) ermitteln und im Kontext deuten können"),
                              tag("ul", "FA 5.3: die Wirkung der Parameter a und b bzw. \\(\\lambda\\) kennen und die Parameter in unterschiedlichen Kontexten deuten können"),
                              tag("ul", "FA 5.4: wichtige Eigenschaften \\(f(x+1) = b \\cdot f(x) \\text{ und } \\left( e^x \\right)^{\\prime} = e^x \\) kennen und im Kontext deuten können"),
                              tag("ul", "FA 5.5: die Begriffe Halbwertszeit und Verdoppelungszeit kennen, die entsprechenden Werte berechnen und im Kontext deuten können"),
                              tag("ul", "FA 5.6: die Angemessenheit einer Beschreibung mittels Exponentialfunktion bewerten können")
                     ),
                     tabPanel("FA 6 - Winkelfunktionen", 
                              h5("FA 6 - Sinusfunktion, Cosinusfunktion"),
                              tag("ul", "FA 6.1: grafisch oder durch eine Gleichung (Formel) gegebene Zusammenhänge der Art \\(f(x) = a \\cdot \\sin\\left( b \\cdot x \\right)\\) als allgemeine Sinusfunktion erkennen bzw. betrachten können; zwischen diesen Darstellungsformen wechseln können"),
                              tag("ul", "FA 6.2: aus Graphen und Gleichungen von allgemeinen Sinusfunktionen Werte(paare) ermitteln und im Kontext deuten können"),
                              tag("ul", "FA 6.3: die Wirkung der Parameter a und b kennen und die Parameter im Kontext deuten können"),
                              tag("ul", "FA 6.4: Periodizität als charakteristische Eigenschaft kennen und im Kontext deuten können"),
                              tag("ul", "FA 6.5: wissen, dass \\( \\cos(x) = \\sin\\left( x +\\frac{\\pi}{2} \\right) \\)"),
                              tag("ul", "FA 6.6: wissen, dass gilt: \\( \\sin^{\\prime}(x) = \\cos(x) \\text{ und } \\cos^{\\prime} = -\\sin(x) \\)")
                     )),
                 HTML('<p><small> Quelle: https://www.matura.gv.at/downloads/download/mathematische-grundkompetenzen-fuer-die-srp-in-mathematik-ahs </small></p>'),
                 h4("Kontakt"),
                 p("Martin Hofbauer", br("Mail: ", a("martin@hofeder.solutions"), 
                                      br("Web: ", a("www.hofeder.solutions/martin"))))
                 )
        }, # Einleitung
        {
        tabPanel("FA 1 - Der Funktionsbegriff",
               h3('FA 1 - Funktionsbegriff, reelle Funktionen, Darstellungsformen und Eigenschaften'),
               wellPanel(
                       h4('Funktion'),
                       p('Eine Funktion prdnet jedem Element einer Definitionsmenge genau ein Element der Wertemenge zu.'),
                       tag('ul', 'z.B.: jeder Person einer bestimmten Gruppe wird ihr Geburtsdatum zugeordnet.'),
                       tag('ul', 'keine Funktion: Jeder Person werden ihre Geschwister zugeordnet.'),
                       h4('Eigenschaften von Funktionen'),
                       tag('ul', 'Monotonie: gibt für einen bestimmten Bereich an, ob ein Funktionsgraph steigt oder fällt.'),
                       tag('ul', 'Extrempunkte: Hoch oder Tiefpunkte (lokal oder global)'),
                       tag('ul', 'Wendepunkte: Punkt, an dem sich die Krümmung einer FUnktion ändert.'),
                       tag('ul', 'Periodizität: Teile eines Graphen wiederholen sich immer wieder - siehe FA 6.'),
                       tag('ul', 'Symmetrie: Funktionen können etwa achsensymmetrisch zur y-Achse oder punktsymmetrisch bezüglich des Ursprungs sein.'),
                       tag('ul', 'Asymptotisches Verhalten: Verhalten einer Funktion "im Unendlichen". Eine Gerade, der sich eine Funktion immer weiter annähert, diese aber nie berührt, nennt man Asymptote.'),
                       tag('ul', 'Achsenschnittpunkte: Nullstellen bezeichnen Schnittpunkte der Funktion mit der x-Achse. Schnittpunkte mit der y-Achse werden als Ordinatenabschnitt beszeichnet.')
                       # TODO: Skizze mit beispielhaften Eigenschaften einfügen.
               )
        )}, # FA 1
        {
        tabPanel("FA 2 - Lineare Funktionen",
                 h3('FA 2 - Lineare Funktionen \\( \\left[ f(x)=k\\cdot x + d \\right] \\)'),
                 wellPanel(
                 h4('Die Steigung k'), 
                 p('Der Paramter k gibt an um wie viele y-Einheiten der Funktionswert steigt, wenn der x-Wert um eine Einheit erhöht wird. 
                    Veranschaulicht wird das gerne mit Hilfe des Steigungsdreiecks "1 nach rechts, k nach oben (oder unten bei negativem k)". 
                    Für "nicht so schöne" Werte von k, wie etwa \\( \\frac{5}{7} \\), kann ein vergrößertes Steigungsdreieck verwendet werden. 
                    Für dieses Beispiel etwa würde gelten "7 nach rechts, 5 nach oben". 
                    Die eigentliche Formel hinter dieser Logik lautet $$ k = \\frac{\\Delta y}{\\Delta x} $$'),
                 h4('Der Ordinatenabschnitt d'),
                 p('Der Parameter d hat viele Namen. Am "schönsten" und geläufigsten ist wohl Ordinatenabschnitt, manchmal auch einfach als y-Achsenabschnitt bezeichnet (Ordinate = y-Achse). 
                    Die am leichtesten umzusetzende Erklärung hinter d ist aber wohl eher "der Wert, bei dem die Funktion die y-Achse schneidet".'),
                 h5('"Good to know"-Facts:'),
                 tag('ul', 'Eine lineare Funktion mit d=0 (und k>0), also \\( f(x)=k\\cdot x \\), nennt man eine direkte Proportionalität (zwischen x und y).')
                 ),
                 h4('Der Graph linearer Funktionen \\( f(x)=k\\cdot x + d \\)'),
                 sidebarLayout(sidebarPanel(
                     sliderInput(inputId='fa2_slider_k', 
                                 label='Steigung k', 
                                 min=-5, max=5, step=0.1,   
                                 value=2),
                     sliderInput(inputId='fa2_slider_d',
                                 label='Ordinatenabschnitt d',
                                 min=-5, max=5, step=0.1,
                                 value=-1),
                     uiOutput(outputId='fa2_out_equation'),
                     '$$ = $$',
                     uiOutput(outputId='fa2_out_equation_frac')
                     # TODO: Hier könnte noch ein Teil über Differentialquotienten her... (vielleicht auch mit Visualisierung im Bild...)
                 ),
                 mainPanel(
                     plotOutput(outputId='fa2_out_plot', height='800px', width='800px')
                 ))
        )}, # FA 2
        {
        tabPanel("FA 3 - Potenzfunktionen",
                 h3('FA 3 - Potenzfunktionen \\( \\left[ f(x)= a \\cdot x^z + b \\right] \\)'),
                 wellPanel(
                     h4('Der Exponent z'),
                     p('Der Exponent gibt den Grundlegenden Typ der Potenzfunktion an. 
                       Am leichtesten sind die Fälle wohl nachzuvollziehen wenn man entsprechende Beispiele mit dem untenstehenden Tool ausprobiert.
                       Wir unterscheiden dabei zwischen positiven und negtaitven, sowie geraden oder ungeraden Exponenten:'),
                     tag('ul', 'Ist z eine positive und gerade Zahl, dann hat die Funktion f die Form einer Parabel.'),
                     tag('ul', 'Ist z eine positive und ungerade Zahl, dann hat die Funktion f eine typische S-förmige Gestalt mit Sattelpunkt.'),
                     tag('ul', 'Ist z eine negative und gerade Zahl, dann hat die gebrochen rationale Funktion f die Form von zwei "Ästen", die sich auf der gleichen Seite (positiv oder negativ) an die Achsen annähern.'),
                     tag('ul', 'Ist z eine negative und ungerade Zahl, dann hat die gebrochen rationale Funktion f die Form von zwei "Ästen", die sich auf der gleichen Seite (positiv oder negativ) an die Achsen annähern.'),
                     tag('ul', 'Spezialfall: Für \\( z=\\frac{1}{2} \\) ist die Potenzfunktion eien Wurzelfunktion, da \\( x^{\\frac{1}{2}}=\\sqrt{x} \\)'),
                     h4('Der Skalierungsparameter a'), 
                     p('Für eine bestimmte Form von Funktion kann diese durch Manipulation des Parameters a beeinflusst werden.  
                       Meist wird dabei von "schmäleren" und "breiteren" Funktionen bzw. einer Stauchung oder Straffung gesprochen. 
                       Die Änderung des Vorzeichens von a führt jedenfalls zu einer Spiegelung der Funktion entlang der x-Achse. 
                       Ausgehend von a=1 können diese Manipulationen leicht ausprobiert werden.'),
                     h4('Der Lageparameter b'),
                     p('Für eine bestimmte Funktion führt die Manipulation des Parameters b zu einer Verschiebung in y-Richtung, also nach oben oder unten.'),
                     h5('"Good to know"-Facts:'),
                     tag('ul', 'Eine Potenzfunktion mit z=1 und b=0 (und \\(a>0\\)) nennt man indirekte Proportionalität (zwischen x und y). '), 
                     tag('ul', '\\( x^{-n} = \\frac{1}{x^{n}} \\)')
                 ),
                 h4('Der Graph einer Potenzfunktion \\( f(x)= a \\cdot x^z + b \\)'),
                 sidebarLayout(sidebarPanel(
                     sliderInput(inputId='fa3_slider_z', 
                                 label='Exponent z', 
                                 min=-6, max=6, step=1,   
                                 value=2),
                     sliderInput(inputId='fa3_slider_a',
                                 label='Skalierungsparameter a',
                                 min=-3, max=3, step=0.1,
                                 value=1),
                     sliderInput(inputId='fa3_slider_b',
                                 label='Lageparameter b',
                                 min=-5, max=5, step=0.1,
                                 value=0),
                     uiOutput(outputId='fa3_out_equation')
                     # TODO: evtl. noch in die Grafik Linien und Beschriftungen einfügen wo Parameter abgelesen werden können...
                 ),
                 mainPanel(
                     plotOutput(outputId='fa3_out_plot', height='800px', width='800px')
                 )))}, # FA 3
        {
        tabPanel("FA 4 - Polynomfunktionen",
                 h3('FA 4 - Polynomfunktionen \\( \\left[ f(x)= \\sum_{i=0}^{n} a_{i} \\cdot x^{i} \\text{ mit } n \\in \\mathbb{N}^{*} \\right]\\)'),
                 wellPanel(
                     h4('Grad der Polynomfunktion n'),
                     p('Bei dem Paramter n handelt es sich um den sogenannten "Grad" der Funktion. 
                        Er kann leicht als größte vorkommende Potenz abgelesen werden und gibt Auskunft über den typischen Verlauf einer Polynomfunktion.'),
                     h4('Nullstellen'),
                     p('Eine Polynomfunktion n-ten Grades kann maximal n Nullstellen haben.'),
                     h4('Extremstellen'),
                     p('Eine Polynomfunktion n-ten Grades kann maximal n-1 Extremstellen haben.'),
                     h4('Wendestellen'),
                     p('Eine Polynomfunktion n-ten Grades kann maximal n-2 Wendestellen haben.'), 
                     h5('"Good to know"-Facts:'),
                     tag('ul', 'Ist der Grad n der Polynomfunktion gerade, so hat die Funktion mindestens eine Extremstelle.'), 
                     tag('ul', 'Ist der Grad n der Polynomfunktion ungerade, so hat die Funktion mindestens eine Nullstelle und für n > 1 auch mindestens eine Wendestelle.')
                 ), 
                 sidebarLayout(sidebarPanel(
                         sliderInput(inputId='fa4_grad', 
                                     label='Grad der Polynomfunktion',
                                     min=2, max=5, value=2, step=1),
                         sliderInput(inputId='fa4_a0',
                                     label='Parameter \\(a_{0}\\)',
                                     min=-2, max=2, value=1, step=0.01),
                         sliderInput(inputId='fa4_a1',
                                     label='Parameter \\(a_{1}\\)',
                                     min=-2, max=2, value=1, step=0.01),
                         sliderInput(inputId='fa4_a2',
                                     label='Parameter \\(a_{2}\\)',
                                     min=-2, max=2, value=1, step=0.01),
                         conditionalPanel(condition='input.fa4_grad == 2',
                                          p('$$ f(x)= a_{2} \\cdot x^{2} + a_{1}\\cdot x + a_{0} $$')),
                         conditionalPanel(condition='input.fa4_grad == 3',
                                          sliderInput(inputId='fa4_a3',
                                                      label='Parameter \\(a_{3}\\)',
                                                      min=-2, max=2, value=1, step=0.01),
                                          p('$$ f(x)= a_{3}\\cdot x^{3} + a_{2} \\cdot x^{2} + a_{1}\\cdot x + a_{0} $$')),
                         conditionalPanel(condition='input.fa4_grad == 4',
                                          sliderInput(inputId='fa4_a3',
                                                      label='Parameter \\(a_{3}\\)',
                                                      min=-2, max=2, value=1, step=0.01),
                                          sliderInput(inputId='fa4_a4',
                                                      label='Parameter \\(a_{4}\\)',
                                                      min=-2, max=2, value=1, step=0.01),
                                          p('$$ f(x)= a_{4}\\cdot x^{4} + a_{3}\\cdot x^{3} + a_{2} \\cdot x^{2} + a_{1}\\cdot x + a_{0} $$')),
                         conditionalPanel(condition='input.fa4_grad == 5',
                                          sliderInput(inputId='fa4_a3',
                                                      label='Parameter \\(a_{3}\\)',
                                                      min=-2, max=2, value=1, step=0.01),
                                          sliderInput(inputId='fa4_a4',
                                                      label='Parameter \\(a_{4}\\)',
                                                      min=-2, max=2, value=1, step=0.01),
                                          sliderInput(inputId='fa4_a5',
                                                      label='Parameter \\(a_{5}\\)',
                                                      min=-2, max=2, value=1, step=0.01),
                                          p('$$ f(x)= a_{5}\\cdot x^{5} + a_{4}\\cdot x^{4} + a_{3}\\cdot x^{3} + a_{2} \\cdot x^{2} + a_{1}\\cdot x + a_{0} $$'))
                 ),
                 mainPanel(
                         plotOutput(outputId='fa4_out_plot', height='800px', width='800px')
                 ))
                 )}, # FA 4
        {
        tabPanel("FA 5 - Exponentialfunktionen",
                 h3('FA 5 - Exponentialfunktionen \\( \\left[ f(x)= a\\cdot b^x \\text{ bzw. } f(x)= a \\cdot e^{\\lambda\\cdot x} \\text{ mit } a,b\\in \\mathbb{R}^{+}, \\lambda \\in \\mathbb{R}\\setminus\\left\\{ 0 \\right\\} \\right]\\)'),
                 wellPanel(
                     h4('Der Lageparameter a'),
                     p('Der Parameter a einer Exponentialfunktion gibt den Schnittpunkt mit der Ordinate (y-Achse) an.'),
                     h4('Der Formparameter b bzw. \\( \\lambda \\)'),
                     p('Die Parameter b bzw. \\( \\lambda \\) geben beide für ihre Schreibweise der Funktion die Monotonie der Exponentialfunktion an.'),
                     tag('ul', 'Für \\( b>1 \\text{ bzw. } \\lambda >0 \\) ist f eine streng monoton steigende Exponentialfunktion (unter der Voraussetzung a>0).'),
                     tag('ul', 'Für \\( b<1 \\text{ (aber } b>0 \\text{)  bzw. } \\lambda <0 \\) ist f eine streng monoton fallende Exponentialfunktion (unter der Voraussetzung a>0). '),
                     h5('"Good to know"-Facts:'),
                     tag('ul', 'Zwischen den beiden möglichen Darstellungsformen der Exponentialfunktion kann mittels leichter Formeln leicht gewechselt werden: 
                          $$ b=e^{\\lambda} \\lambda = \\ln(b)$$'),
                     tag('ul', 'Die Halbwertszeit ist jene Zeit, in der die Hälfte einer Substanz abnimmt bzw. der Funktionswert einer monoton fallenden Exponentialfunktion jeweils halbiert wird. Die Halbwertszeit kann mit der folgenden Formel leicht bestimmt werden: 
                         $$ \\tau_{\\frac{1}{2}} = \\frac{\\ln(\\frac{1}{2})}{\\ln{b}} = \\frac{\\ln(\\frac{1}{2})}{\\lambda} $$'),
                     tag('ul', 'Die Verdoppelungszeit ist jene Zeit, in der sich eine Substanz verdoppelt bzw. der Funktionswert einer monoton wachsenden Exponentialfunktion jeweils verdoppelt wird. Die Verdoppelungszeit kann mit der folgenden Formel leicht bestimmt werden: 
                         $$ \\tau_{2} = \\frac{\\ln(2)}{\\ln{b}} = \\frac{\\ln(2)}{\\lambda} $$')
                 ),
                 h4('Der Graph einer Exponentialfunktion \\( f(x)= a\\cdot b^x \\text{ bzw. } f(x)= a \\cdot e^{\\lambda\\cdot x} \\)'),
                 sidebarLayout(sidebarPanel(
                     radioButtons(inputId='fa5_radio',
                                  label='Darstellung \\( f(x)= a\\cdot b^x \\text{ oder } f(x)= a \\cdot e^{\\lambda\\cdot x} \\)?',
                                  choiceNames=c('Parameter b', 'Parameter \\( \\lambda \\)'),
                                  choiceValues=c('b', 'lambda'),
                                  selected='b'),
                     sliderInput(inputId='fa5_slider_a', 
                                 label='Lageparameter a', 
                                 min=-5, max=5, step=0.1,   
                                 value=2),
                     conditionalPanel(condition="input.fa5_radio == 'b'",
                                      sliderInput(inputId='fa5_slider_b',
                                                  label='Formparameter b',
                                                  min=0.01, max=3, step=0.01,
                                                  value=2)
                     ),
                     conditionalPanel(condition="input.fa5_radio == 'lambda'",
                                      sliderInput(inputId='fa5_slider_lambda',
                                                  label='Formparameter \\( \\lambda \\)',
                                                  min=-1.5, max=1.5, step=0.01,
                                                  value=0.5)
                     ),
                     uiOutput(outputId='fa5_out_equation')
                 ),
                 mainPanel(
                     plotOutput(outputId='fa5_out_plot', height='800px', width='800px')
                     # TODO: evtl. noch in die Grafik Linien und Beschriftungen einfügen wo Parameter abgelesen werden können...
                 ))
        )}, # FA 5
        {
        tabPanel("FA 6 - Winkelfunktionen",
                 h3('FA 6 - Winkelfunktionen \\( \\left[ f(x)= a \\cdot \\sin(b\\cdot x)\\right] \\)'),
                 wellPanel(
                     h4('Die Amplitude a'),
                     p('Der Parameter a einer Winkelfunktion wird Amplitude genannt und gibt an, wie weit um die x-Achse herum die Funktion schwingt (= maximaler/minimaler Wert der Funktion). '),
                     h4('Die Frequenz b'),
                     p('Der Parameter b einer Winkelfunktion wird Frequenz genannt und gibt an, wie oft eine Schwingung auf einer Länge von \\( 2\\pi \\) stattfindet. '),
                     h4('Die Schwingungsdauer T'),
                     p('Neben der Frequenz b gibt es noch einen weiteren Parameter, der sich um die horizontale Stauchung/Streckung einer Winkelfunktion dreht: die Schwingungsdauer bzw. Periodenlänge T. 
                        Diese Schwingungsdauer T kann mittels \\( T= \\frac{2\\pi}{b} \\) bestimmt werden. '),
                     h5('"Good to know"-Facts:'),
                     tag('ul', 'Die Cosinusfunktion kann durch eine Verschiebung der Sinusfunktion hergeleitet werden: $$ \\cos(x) = \\sin (x+\\frac{\\pi}{2}) $$')
                 ),
                 h4('Der Graph einer Sinusfunktion \\( \\left[ f(x)= a \\cdot \\sin(b\\cdot x)\\right] \\)'),
                 sidebarLayout(sidebarPanel(
                     sliderInput(inputId='fa6_slider_a', 
                                 label='Amplitude a', 
                                 min=-3, max=3, step=0.1,   
                                 value=1),
                     sliderInput(inputId='fa6_slider_b',
                                 label='Frequenz b',
                                 min=-4, max=4, step=0.1,
                                 value=1),
                     uiOutput(outputId='fa6_out_equation')
                 ),
                 mainPanel(
                     plotOutput(outputId='fa6_out_plot', height='800px', width='800px')
                 ))
        )}  # FA 6
))
