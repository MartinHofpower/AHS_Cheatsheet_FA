# Application: "FA-Cheatsheet" - SERVER
# Version: 1.0.0
# Author: Martin Hofbauer
# Contact: hofi.at@me.com

library('ggplot2')
library('MASS')

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  #--------------------FA2----------------------
  output$fa2_out_equation <- renderUI({
    k <- input$fa2_slider_k
    d <- input$fa2_slider_d
    if(k==0){
      withMathJax(sprintf('$$ f(x)= %.01f $$', d))
    }
    else{
      if(d>0){
        withMathJax(sprintf('$$ f(x)= %.01f \\cdot x + %.01f $$', k, d))
      }
      else if(d==0){
        withMathJax(sprintf('$$ f(x)= %.01f \\cdot x $$', k))
      }
      else if(d<0){
        withMathJax(sprintf('$$ f(x)= %.01f \\cdot x - %.01f $$', k, abs(d)))
      }
    }
  })
  output$fa2_out_equation_frac <- renderUI({
    k <- input$fa2_slider_k
    d <- input$fa2_slider_d
    # Prüfe ob k vielleicht gar kein Bruch ist:
    if(floor(k)==k){
      if(k==0){
        withMathJax(sprintf('$$ f(x)= %.01f $$', d))
      }
      else{
        if(d>0){
          withMathJax(sprintf('$$ f(x)= %.01f \\cdot x + %.01f $$', k, d))
        }
        else if(d==0){
          withMathJax(sprintf('$$ f(x)= %.01f \\cdot x $$', k))
        }
        else if(d<0){
          withMathJax(sprintf('$$ f(x)= %.01f \\cdot x - %.01f $$', k, abs(d)))
        }
      }
    }
    else{
      abs_k <- abs(k)
      frac <- as.character(fractions(abs_k))
      location_of_slash <- gregexpr("/", frac)[[1]][1]
      z <- as.numeric(substr(frac, 1, location_of_slash-1))
      n <- as.numeric(substr(frac, location_of_slash+1, nchar(frac)))
      if(k==0){
        withMathJax('$$ f(x)= %.01f $$', d)
      }
      else{
        if(d>0){
          if(k>=0){
            withMathJax(sprintf('$$ f(x)= \\frac{%.00f}{%.00f} \\cdot x + %.01f $$', z, n, d))
          }
          else{
            withMathJax(sprintf('$$ f(x)= - \\frac{%.00f}{%.00f} \\cdot x + %.01f $$', z, n, d))
          }
        }
        else if(d==0){
          if(k>=0){
            withMathJax(sprintf('$$ f(x)= \\frac{%.00f}{%.00f} \\cdot x $$', z, n))
          }
          else{
            withMathJax(sprintf('$$ f(x)= - \\frac{%.00f}{%.00f} \\cdot x $$', z, n))
          }
        }
        else if(d<0){
          if(k>=0){
            withMathJax(sprintf('$$ f(x)= \\frac{%.00f}{%.00f} \\cdot x - %.01f $$', z, n, abs(d)))
          }
          else{
            withMathJax(sprintf('$$ f(x)= - \\frac{%.00f}{%.00f} \\cdot x - %.01f $$', z, n, abs(d)))
          }
        }
      }
    }
  })
  
  output$fa2_out_plot <- renderPlot({
    k <- input$fa2_slider_k
    d <- input$fa2_slider_d
    ggplot() + 
      scale_x_continuous(name='x', 
                         limits=c(-10,10), 
                         minor_breaks=c(seq(-10,10, by=1))) +
      scale_y_continuous(name='y', 
                         limits=c(-10,10), 
                         minor_breaks=c(seq(-10,10, by=1))) +
      geom_hline(yintercept=0) +
      geom_vline(xintercept=0) +
      geom_abline(slope=k, intercept=d, col='green4')
  })
  #---------------------------------------------
  
  #--------------------FA3----------------------
  output$fa3_out_equation <- renderUI({
    z <- input$fa3_slider_z
    a <- input$fa3_slider_a
    b <- input$fa3_slider_b
    if(z==0 || a==0){
      if(a==0){
        withMathJax(sprintf('$$ f(x) = %.01f $$', b))
      }
      else{
        withMathJax(sprintf('$$ f(x) = %.01f $$', a+b))
      }
    }
    else{
      if(b>0){
        withMathJax(sprintf('$$ f(x) = %.01f \\cdot x^{%d} + %.01f $$', a, z, b))
      }
      else if(b==0){
        withMathJax(sprintf('$$ f(x) = %.01f \\cdot x^{%d} $$', a, z))
      }
      else if(b<0){
        withMathJax(sprintf('$$ f(x) = %.01f \\cdot x^{%d} - %.01f $$', a, z, abs(b)))
      }
    }
  })
  
  output$fa3_out_plot <- renderPlot({
    z <- input$fa3_slider_z
    a <- input$fa3_slider_a
    b <- input$fa3_slider_b
    f <- function(x){a*x^z + b}
    
    ggplot() +
      scale_x_continuous(name='x', 
                         limits=c(-10,10), 
                         oob=scales::squish_infinite, 
                         minor_breaks=c(seq(-10,10, by=1))) +
      scale_y_continuous(name='y', 
                         limits=c(-10,10), 
                         oob=scales::squish_infinite, 
                         minor_breaks=c(seq(-10,10, by=1))) +
      geom_hline(yintercept=0) +
      geom_vline(xintercept=0) +
      geom_function(fun=f, col='green4') 
  })
  #---------------------------------------------
  
  #--------------------FA4----------------------
  output$fa4_out_plot <- renderPlot({
    a0 <- input$fa4_a0
    a1 <- input$fa4_a1
    a2 <- input$fa4_a2
    f <- function(x){a0+a1*x+a2*x^2}
    if(input$fa4_grad == 3){
      a3 <- input$fa4_a3
      f <- function(x){a0+a1*x+a2*x^2+a3*x^3}
    }
    if(input$fa4_grad == 4){
      a3 <- input$fa4_a3
      a4 <- input$fa4_a4
      f <- function(x){a0+a1*x+a2*x^2+a3*x^3+a4*x^4}
    }
    if(input$fa4_grad == 5){
      a3 <- input$fa4_a3
      a4 <- input$fa4_a4
      a5 <- input$fa4_a5
      f <- function(x){a0+a1*x+a2*x^2+a3*x^3+a4*x^4+a5*x^5}
    }
    
    ggplot() +
      scale_x_continuous(name='x', 
                         limits=c(-10,10), 
                         oob=scales::squish_infinite, 
                         minor_breaks=c(seq(-10,10, by=1))) +
      scale_y_continuous(name='y', 
                         limits=c(-10,10), 
                         oob=scales::squish_infinite, 
                         minor_breaks=c(seq(-10,10, by=1))) +
      geom_hline(yintercept=0) +
      geom_vline(xintercept=0) +
      geom_function(fun=f, col='green4') 
  })
  #---------------------------------------------
  
  #--------------------FA5----------------------
  output$fa5_out_equation <- renderUI({
    if(input$fa5_radio == 'b'){
      a <- input$fa5_slider_a
      b <- input$fa5_slider_b
      withMathJax(sprintf('$$ f(x) = %.01f \\cdot %.02f ^{x} $$', a, b))
    }
    else{
      if(input$fa5_radio == 'lambda'){
        a <- input$fa5_slider_a
        lambda <- input$fa5_slider_lambda
        withMathJax(sprintf('$$ f(x) = %.01f \\cdot e^{%.02f \\cdot x} $$', a, lambda))
      }
    }
  })
  
  output$fa5_out_plot <- renderPlot({
    if(input$fa5_radio == 'b'){
      a <- input$fa5_slider_a
      b <- input$fa5_slider_b
      f <- function(x){a*b^x}
      
      ggplot() +
        scale_x_continuous(name='x', 
                           limits=c(-10,10), 
                           oob=scales::squish_infinite, 
                           minor_breaks=c(seq(-10,10, by=1))) +
        scale_y_continuous(name='y', 
                           limits=c(-10,10), 
                           oob=scales::squish_infinite, 
                           minor_breaks=c(seq(-10,10, by=1))) +
        geom_hline(yintercept=0) +
        geom_vline(xintercept=0) +
        geom_function(fun=f, col='green4') 
    }
    else{
      if(input$fa5_radio == 'lambda'){
        a <- input$fa5_slider_a
        lambda <- input$fa5_slider_lambda
        f <- function(x){a*exp(lambda*x)}
        
        ggplot() +
          scale_x_continuous(name='x', 
                             limits=c(-10,10), 
                             oob=scales::squish_infinite, 
                             minor_breaks=c(seq(-10,10, by=1))) +
          scale_y_continuous(name='y', 
                             limits=c(-10,10), 
                             oob=scales::squish_infinite, 
                             minor_breaks=c(seq(-10,10, by=1))) +
          geom_hline(yintercept=0) +
          geom_vline(xintercept=0) +
          geom_function(fun=f, col='green4') 
      }
    }
  })
  #---------------------------------------------
  
  #--------------------FA6----------------------
  output$fa6_out_equation <- renderUI({
    a <- input$fa6_slider_a
    b <- input$fa6_slider_b
    withMathJax(sprintf('$$ f(x) = %.01f \\cdot \\sin \\left( %.01f \\cdot x \\right) $$', a, b))
  })
  
  output$fa6_out_plot <- renderPlot({
    a <- input$fa6_slider_a
    b <- input$fa6_slider_b
    f <- function(x){a*sin(b*x)}
    
    ggplot() +
      scale_x_continuous(name='x', 
                         limits=c(-6*pi,6*pi), 
                         oob=scales::squish_infinite, 
                         breaks=c(seq(-6*pi,6*pi, by=pi)), 
                         labels=paste0(seq(-6,6,by=1), ' \u03c0'),
                         minor_breaks=c(seq(-6*pi,6*pi, by=pi/2))) +
      scale_y_continuous(name='y', 
                         limits=c(-5,5), 
                         oob=scales::squish_infinite,
                         breaks=seq(-5,5,by=1),
                         minor_breaks=c(seq(-5,5, by=0.5))) +
      geom_hline(yintercept=0) +
      geom_vline(xintercept=0) +
      stat_function(fun=f, col='green4', n=1000)
  })
  #---------------------------------------------
  
})
