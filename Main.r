library(tuneR)        #import the tuneR library
#This will play phone dial sounds in R
dial <- readline(prompt = "Enter the character/number to be played (0-9, A-D, #, *):")

if(dial = "0")
{
  f=1336                 #frequency of the first sine wave for the digit 0
  sr=8000 
  bits=16
  secs=2                #length of the note is 2
  amp=1
  t=seq(0, secs, 1/sr)
  y= amp*sin(2*pi*f*t)  #make a sine wave with the attributes above
  s=floor(2^(bits-2)*y) #floor it to make it an integer 
  u=Wave(s, samp.rate=sr, bit=bits)  #make the wave  

  
  f1=1336                 #frequency of the second sine wave for the digit 0
  sr1=8000 
  bits1=16
  secs1=2                #length of the note is 2
  amp1=1
  t1=seq(0, secs1, 1/sr1)
  y1= amp1*sin(2*pi*f1*t1)  #make a sine wave with the attributes above
  s1=floor(2^(bits1-2)*y1) #floor it to make it an integer 
  u1=Wave(s1, samp.rate=sr1, bit=bits1)  #make the wave 

  z=u+u1
  w=Wave(z, samp.rate=sr, bit=bits)  
}
