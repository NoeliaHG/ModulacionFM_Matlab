%El siguiente programa sirve para realizar la modulacion y demodulacion 

fprintf('\nSeleccione entre las siguientes opciones para realizar la modulacion y demodulacion:\n');
fprintf('\n1.Tonos \n2.Audio \n3.FM de Banda Ancha \n4.FM de Banda Angosta\n');
sel1 = input('\nSu eleccion es: ');

switch sel1
    case 1
        %MODULACION Y DEMODULACION DE TONOS
        %Solicitud de ingresar datos
              
        %Se le solicita al usuario escoger una de las funciones para la modulacion
        fprintf('\nSeleccione entre las siguientes opciones para realizar la modulacion y demodulacion:\n');
        fprintf('\n1.Senoidal \n2.Diente de Sierra \n3.Cuadrada \n');
        sel2 = input('\nSu eleccion es: ');
        
        Am = input('Ingrese el valor de la amplitud del mensaje: ');
        Ac = input('Ingrese el valor de la amplitud de la portadora: ');
        fm = input('Ingrese el valor de la frecuencia del mensaje: ');
        fc = input('Ingrese el valor de la frecuencia de la portadora: ');
        b= input('Ingrese el valor del indice de modulacion: ');
        Fs=input('Ingrese la frecuencia de muestreo: ')
        t = 0:1/Fs:1; %1000 muestras
        
        switch sel2
            case 1
                %Modulacion y Demodulacion de una señal senoidal
                msg = Am*sin(2*pi*fm*t); %Mensaje
                subplot(4,1,1); 
                plot(t,msg);
                xlabel('Tiempo');
                ylabel('Amplitud');
                title('Mensaje');
                
                carrier = Ac*sin(2*pi*fc*t); %Portadora
                subplot(4,1,2);
                plot(t,carrier);
                xlabel('Tiempo');
                ylabel('Amplitud');
                title('Señal Portadora');
                
                y = Ac*sin(2*pi*fc*t+b*cos(2*pi*fm*t)); %Señal Modulada
                subplot(4,1,3)
                plot(t,y);
                xlabel('Tiempo');
                ylabel('Amplitud');
                title('Señal Modulada');      
                
                z=fmdemod(y,fc,Fs,b*fm);
                subplot(4,1,4);
                plot(t,z);
                xlabel('Tiempo');
                ylabel('Amplitud');
                title('Señal Demodulada');
            
            case 2
                %Modulacion y Demodulacion de una señal diente de sierra
                msg = Am*sawtooth(2*pi*fm*t); %Mensaje
                subplot(3,1,1);
                plot(t,msg);
                xlabel('Tiempo');
                ylabel('Amplitud');
                title('Mensaje');           
                
                carrier = Ac*sin(2*pi*fc*t); %Portadora
                subplot(3,1,2);
                plot(t,carrier);
                xlabel('Tiempo');
                ylabel('Amplitud');
                title('Señal Portadora');
                
                y = Ac*sin(2*pi*fc*t+b*cos(2*pi*fm*t)); %Señal Modulada
                z=fmmod(msg,fc,Fs,b/fm)
                subplot(3,1,3);
                plot(t,z);
                xlabel('Tiempo');
                ylabel('Amplitud');
                title('Señal Modulada');
            
            case 3
                %Modulacion y Demodulacion de una cuadrada
                msg = Am*square(2*pi*fm*t); %Mensaje
                subplot(3,1,1);
                plot(t,msg);
                xlabel('Tiempo');
                ylabel('Amplitud');
                title('Mensaje');
                
                carrier = Ac*sin(2*pi*fc*t); %Portadora
                subplot(3,1,2);
                plot(t,carrier);
                xlabel('Tiempo');
                ylabel('Amplitud');
                title('Señal Portadora');
                
                y = Ac*sin(2*pi*fc*t+b*cos(2*pi*fm*t)); %Señal Modulada
                subplot(3,1,3);
                plot(t,y);
                xlabel('Tiempo');
                ylabel('Amplitud');
                title('Señal Modulada');
        end
    case 2
        %MODULACION Y DEMODULACION DE UNA SEÑAL DE AUDIO REAL
        
    case 3
        %MODULACION Y DEMODULACION FM DE BANDA ANCHA
        
    case 4
        %MODULACION Y DEMODULACION FM DE BANDA ANGOSTA
        
        Ac = input('Ingrese el valor de la amplitud de la portadora: ');
        fm = input('Ingrese el valor de la frecuencia del mensaje: ');
        fc = input('Ingrese el valor de la frecuencia de la portadora: ');
        b = input('Ingrese el valor del indice de modulacion: ');
        Fs = input('Ingrese la frecuencia de muestreo: ');
        t = 0:1/Fs:1; %1000 muestras
        
        s = Ac*cos(2*pi*fc*t)-b*Ac*sin(s*pi*fc*t)*sin(2*pi*fm*t);
        subplot(2,1,1);
        plot(t,s);

end

                
