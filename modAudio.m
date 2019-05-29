function modAudio

  disp('*******************************************************');
  disp('Digitel el nombre del archivo de audio');
  audioFile=input('Nombre: ','s');
  
  [y,Fs]=audioread(audioFile);
  disp('La frecuencia de muestreo es:');
  Fs
  plot(y)
 