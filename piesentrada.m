clc
clear all
close all


i1=imread('p1.png');
i2=imread('p2.png');
i3=imread('p3.png');
i4=imread('p4.png');
i5=imread('p5.png');
i6=imread('p6.png');
i7=imread('p7.png');
i8=imread('p8.png');
i9=imread('p9.png');
i10=imread('p10.png');
i11=imread('p11.png');
i12=imread('p12.png');
i13=imread('p13.png');
i14=imread('p14.png');
i15=imread('p15.png');
i16=imread('p16.png');
i17=imread('p17.png');
i18=imread('p18.png');
% imshow(i1) Mostrar imagen de carga
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Tamaños de imagenes, parte 1
ir1=imresize(i1,[640, 480]);   ir2=imresize(i2,[640, 480]);
ir3=imresize(i3,[640, 480]);   ir4=imresize(i4,[640, 480]);
ir5=imresize(i5,[640, 480]);   ir6=imresize(i6,[640, 480]);

%Tamaños parte2
ir7=imresize(i7,[640, 480]); ir8=imresize(i8,[640, 480]); 
ir9=imresize(i9,[640, 480]); ir10=imresize(i10,[640, 480]);
ir11=imresize(i11,[640, 480]); ir12=imresize(i12,[640, 480]);

%Tamaños parte3
ir13=imresize(i13,[640, 480]); ir14=imresize(i14,[640, 480]); 
ir15=imresize(i15,[640, 480]); ir16=imresize(i16,[640, 480]); 
ir17=imresize(i17,[640, 480]); ir18=imresize(i18,[640, 480]);
%imshow(ir1); Re escalamiento
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Consersion a blanco y negro

% imshow(ig1) %De grises

fprintf('Que ciclo de marcha quieres ver')
elige=input(' ingrese \n1 para talon normal, \n2 para un talon anormal y \n3 contacto medio   ');
%elige=1
%%%%NORMAL
if elige==1
    fprintf('Eligio plantilla normal');
    
 
    
    %Parte 1 de grises
    
        ig1=rgb2gray(ir1); ig2=rgb2gray(ir2);
        ig3=rgb2gray(ir3); ig4=rgb2gray(ir4);
        ig5=rgb2gray(ir5); ig6=rgb2gray(ir6);  
           figure(1)
        subplot(2,6,1), imshow(ir1); title('t=0.000seg');
        subplot(2,6,2), imshow(ir2); title('t=0.010seg');  
        subplot(2,6,3), imshow(ir3); title('t=0.020seg');
        subplot(2,6,4), imshow(ir4); title('t=0.030seg');
        subplot(2,6,5), imshow(ir5); title('t=0.040seg');
        subplot(2,6,6), imshow(ir6); title('t=0.050seg');
        
        
        subplot(2,6,7), imshow(ig1); title('t=0.000seg');
        subplot(2,6,8), imshow(ig2); title('t=0.010seg');  
        subplot(2,6,9), imshow(ig3); title('t=0.020seg');
        subplot(2,6,10), imshow(ig4); title('t=0.030seg');
        subplot(2,6,11), imshow(ig5); title('t=0.040seg');
        subplot(2,6,12), imshow(ig6); title('t=0.050seg');
    %%%%%%%%%%%%%%%% Contacto 1
    %AREAS DE CORTE ciz=cordenada izquierda sup cde=cordenada derecha inf
    
    %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];
    
    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300,426];
    
    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
        %PARA CORTAR LA FIGURA ct=corte Nuemro de corte 
       ct11=ig1(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
            [m11 n11]=size(ct11);
            pix(1,1)=m11*n11;
            aver(1,1)=sum(sum(ct11))/pix(1,1);
       
       ct12=ig1(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m12 n12]=size(ct12);
            pix(1,2)=m12*n12;
            aver(2,1)=sum(sum(ct12))/pix(1,2);
            
       ct13=ig1(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m13 n13]=size(ct13);
            pix(1,3)=m13*n13;
            aver(3,1)=sum(sum(ct13))/pix(1,3);
            
       ct14=ig1(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
            [m14 n14]=size(ct14);
            pix(1,4)=m14*n14;
            aver(4,1)=sum(sum(ct14))/pix(1,4);
       
       ct15=ig1(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m15 n15]=size(ct15);
            pix(1,5)=m15*n15;
            aver(5,1)=sum(sum(ct15))/pix(1,5);
       
       ct16=ig1(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1)); 
            [m16 n16]=size(ct16);
            pix(1,6)=m16*n16;
            aver(6,1)=sum(sum(ct16))/pix(1,6);
       
       %PARA MOSTRAR EL CORTE
       figure(2)
        subplot(3,2,1), imshow(ct11); title('Contacto inicial');
        subplot(3,2,2), imshow(ct12); title('Contacto inicial');  
        subplot(3,2,3), imshow(ct13); title('Contacto inicial');
        subplot(3,2,4), imshow(ct14); title('Contacto inicial');
        subplot(3,2,5), imshow(ct15); title('Contacto inicial');
        subplot(3,2,6), imshow(ct16); title('Contacto inicial');
        
        %%%%%%%%%%%%%%%%%%CONTACTO 2
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct21=ig2(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m21 n21]=size(ct21);
            pix(2,1)=m21*n21;
            aver(1,2)=sum(sum(ct21))/pix(2,1);
       
       ct22=ig2(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m22 n22]=size(ct22);
            pix(2,2)=m22*n22;
            aver(2,2)=sum(sum(ct22))/pix(2,2);
            
       ct23=ig2(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m23 n23]=size(ct23);
            pix(2,3)=m23*n23;
            aver(3,2)=sum(sum(ct23))/pix(2,3);
            
       ct24=ig2(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m24 n24]=size(ct24);
            pix(2,4)=m24*n24;
            aver(4,2)=sum(sum(ct21))/pix(2,4);
       
       ct25=ig2(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m25 n25]=size(ct25);
            pix(2,5)=m25*n25;
            aver(5,2)=sum(sum(ct25))/pix(2,5);
            
       ct26=ig2(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m26 n26]=size(ct26);
            pix(2,6)=m26*n26;
            aver(6,2)=sum(sum(ct26))/pix(2,6);
       
        %PARA MOSTRAR EL CORTE
        figure(3)
        subplot(3,2,1), imshow(ct21); title('t=0.010seg');
        subplot(3,2,2), imshow(ct22); title('t=0.010seg');  
        subplot(3,2,3), imshow(ct23); title('t=0.010seg');
        subplot(3,2,4), imshow(ct24); title('t=0.010seg');
        subplot(3,2,5), imshow(ct25); title('t=0.010seg');
        subplot(3,2,6), imshow(ct26); title('t=0.010seg');
       
        
        %%%%%%%%%%%%%%%%%%CONTACTO 3
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct31=ig3(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m31 n31]=size(ct31);
            pix(3,1)=m31*n31;
            aver(1,3)=sum(sum(ct31))/pix(3,1);
  
       ct32=ig3(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m32 n32]=size(ct32);
            pix(3,2)=m32*n32;
            aver(2,3)=sum(sum(ct22))/pix(2,2);
            
       ct33=ig3(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m33 n33]=size(ct33);
            pix(3,3)=m33*n33;
            aver(3,3)=sum(sum(ct33))/pix(3,3);
            
       ct34=ig3(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m34 n34]=size(ct34);
            pix(3,4)=m34*n34;
            aver(4,3)=sum(sum(ct31))/pix(3,4);
       
       ct35=ig3(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m35 n35]=size(ct35);
            pix(3,5)=m35*n35;
            aver(5,3)=sum(sum(ct35))/pix(3,5);
            
       ct36=ig3(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m36 n36]=size(ct36);
            pix(3,6)=m36*n36;
            aver(6,3)=sum(sum(ct36))/pix(3,6);    
         %PARA MOSTRAR EL CORTE
        figure(4)
        subplot(3,2,1), imshow(ct31); title('t=0.020seg');
        subplot(3,2,2), imshow(ct32); title('t=0.020seg');  
        subplot(3,2,3), imshow(ct33); title('t=0.020seg');
        subplot(3,2,4), imshow(ct34); title('t=0.020seg');
        subplot(3,2,5), imshow(ct35); title('t=0.020seg');
        subplot(3,2,6), imshow(ct36); title('t=0.020seg');       
       
    %%%%%%%%%%%%%%%%%%CONTACTO 4
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct41=ig4(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m41 n41]=size(ct41);
            pix(4,1)=m41*n41;
            aver(1,4)=sum(sum(ct41))/pix(4,1);
            
       ct42=ig4(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m42 n42]=size(ct42);
            pix(4,2)=m42*n42;
            aver(2,4)=sum(sum(ct42))/pix(4,2);%%%
            
       ct43=ig4(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m43 n43]=size(ct43);
            pix(4,3)=m43*n43;
            aver(3,4)=sum(sum(ct43))/pix(4,3);
            
       ct44=ig4(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m44 n44]=size(ct44);
            pix(4,4)=m44*n44;
            aver(4,4)=sum(sum(ct41))/pix(4,4);
       
       ct45=ig4(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m45 n45]=size(ct45);
            pix(4,5)=m45*n45;
            aver(5,4)=sum(sum(ct45))/pix(4,5);
            
       ct46=ig4(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m46 n46]=size(ct46);
            pix(4,6)=m46*n46;
            aver(6,4)=sum(sum(ct46))/pix(4,6);

                    figure(5)
        subplot(3,2,1), imshow(ct41); title('t=0.030seg');
        subplot(3,2,2), imshow(ct42); title('t=0.030seg');  
        subplot(3,2,3), imshow(ct43); title('t=0.030seg');
        subplot(3,2,4), imshow(ct44); title('t=0.030seg');
        subplot(3,2,5), imshow(ct45); title('t=0.030seg');
        subplot(3,2,6), imshow(ct46); title('t=0.030seg');  
     
        %%%%%%%%%%%%%%%%%%CONTACTO 5
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct51=ig5(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m51 n51]=size(ct51);
            pix(5,1)=m51*n51;
            aver(1,5)=sum(sum(ct51))/pix(5,1);
            
       ct52=ig5(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m52 n52]=size(ct52);
            pix(5,2)=m52*n52;
            aver(2,5)=sum(sum(ct52))/pix(5,2);%%%
            
       ct53=ig5(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m53 n53]=size(ct53);
            pix(5,3)=m53*n53;
            aver(3,5)=sum(sum(ct53))/pix(5,3);
            
       ct54=ig5(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m54 n54]=size(ct54);
            pix(5,4)=m54*n54;
            aver(4,5)=sum(sum(ct51))/pix(5,4);
       
       ct55=ig5(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m55 n55]=size(ct55);
            pix(5,5)=m55*n55;
            aver(5,5)=sum(sum(ct55))/pix(5,5);
            
       ct56=ig5(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m56 n56]=size(ct56);
            pix(5,6)=m56*n56;
            aver(6,5)=sum(sum(ct56))/pix(5,6);
                        figure(6)
        subplot(3,2,1), imshow(ct51); title('t=0.040seg');
        subplot(3,2,2), imshow(ct52); title('t=0.040seg');  
        subplot(3,2,3), imshow(ct53); title('t=0.040seg');
        subplot(3,2,4), imshow(ct54); title('t=0.040seg');
        subplot(3,2,5), imshow(ct55); title('t=0.040seg');
        subplot(3,2,6), imshow(ct56); title('t=0.040seg');    
        
        
                %%%%%%%%%%%%%%%%%%CONTACTO 6
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct61=ig6(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m61 n61]=size(ct61);
            pix(6,1)=m61*n61;
            aver(1,6)=sum(sum(ct61))/pix(6,1);
            
       ct62=ig6(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m62 n62]=size(ct62);
            pix(6,2)=m62*n62;
            aver(2,6)=sum(sum(ct62))/pix(6,2);%%%
            
       ct63=ig6(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m63 n63]=size(ct63);
            pix(6,3)=m63*n63;
            aver(3,6)=sum(sum(ct63))/pix(6,3);
            
       ct64=ig6(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m64 n64]=size(ct64);
            pix(6,4)=m64*n64;
            aver(4,6)=sum(sum(ct64))/pix(6,4);
      
       ct65=ig6(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m65 n65]=size(ct55);
            pix(6,5)=m65*n65;
            aver(5,6)=sum(sum(ct65))/pix(6,5);
            
       ct66=ig6(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m66 n66]=size(ct66);
            pix(6,6)=m66*n66;
            aver(6,6)=sum(sum(ct66))/pix(6,6);
                        figure(7)
        subplot(3,2,1), imshow(ct61); title('t=0.050seg');
        subplot(3,2,2), imshow(ct62); title('t=0.050seg');  
        subplot(3,2,3), imshow(ct63); title('t=0.050seg');
        subplot(3,2,4), imshow(ct64); title('t=0.050seg');
        subplot(3,2,5), imshow(ct65); title('t=0.050seg');
        subplot(3,2,6), imshow(ct66); title('t=0.050seg'); 
        
        
        
elseif elige==2
    fprintf('Eligio talon anormal');
    %Parte 2 de grises----CAMBIA EL NOMBRE A IG1,IG2 BLABLA
    ig1=rgb2gray(ir7); ig2=rgb2gray(ir8);
    ig3=rgb2gray(ir9); ig4=rgb2gray(ir10);
    ig5=rgb2gray(ir11); ig6=rgb2gray(ir12);
        
       
    
     %Parte 1 de grises
           figure(1)
        subplot(2,6,1), imshow(ir7); title('t=0.000seg');
        subplot(2,6,2), imshow(ir8); title('t=0.010seg');  
        subplot(2,6,3), imshow(ir9); title('t=0.020seg');
        subplot(2,6,4), imshow(ir10); title('t=0.030seg');
        subplot(2,6,5), imshow(ir11); title('t=0.040seg');
        subplot(2,6,6), imshow(ir12); title('t=0.050seg');
        
        
        subplot(2,6,7), imshow(ig1); title('t=0.000seg');
        subplot(2,6,8), imshow(ig2); title('t=0.010seg');  
        subplot(2,6,9), imshow(ig3); title('t=0.020seg');
        subplot(2,6,10), imshow(ig4); title('t=0.030seg');
        subplot(2,6,11), imshow(ig5); title('t=0.040seg');
        subplot(2,6,12), imshow(ig6); title('t=0.050seg');
    %%%%%%%%%%%%%%%% Contacto 1
    %AREAS DE CORTE ciz=cordenada izquierda sup cde=cordenada derecha inf
    
    %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];
    
    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300,426];
    
    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
        %PARA CORTAR LA FIGURA ct=corte Nuemro de corte 
       ct11=ig1(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
            [m11 n11]=size(ct11);
            pix(1,1)=m11*n11;
            aver(1,1)=sum(sum(ct11))/pix(1,1);
       
       ct12=ig1(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m12 n12]=size(ct12);
            pix(1,2)=m12*n12;
            aver(2,1)=sum(sum(ct12))/pix(1,2);
            
       ct13=ig1(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m13 n13]=size(ct13);
            pix(1,3)=m13*n13;
            aver(3,1)=sum(sum(ct13))/pix(1,3);
            
       ct14=ig1(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
            [m14 n14]=size(ct14);
            pix(1,4)=m14*n14;
            aver(4,1)=sum(sum(ct14))/pix(1,4);
       
       ct15=ig1(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m15 n15]=size(ct15);
            pix(1,5)=m15*n15;
            aver(5,1)=sum(sum(ct15))/pix(1,5);
       
       ct16=ig1(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1)); 
            [m16 n16]=size(ct16);
            pix(1,6)=m16*n16;
            aver(6,1)=sum(sum(ct16))/pix(1,6);
       
       %PARA MOSTRAR EL CORTE
       figure(2)
        subplot(3,2,1), imshow(ct11); title('Contacto inicial');
        subplot(3,2,2), imshow(ct12); title('Contacto inicial');  
        subplot(3,2,3), imshow(ct13); title('Contacto inicial');
        subplot(3,2,4), imshow(ct14); title('Contacto inicial');
        subplot(3,2,5), imshow(ct15); title('Contacto inicial');
        subplot(3,2,6), imshow(ct16); title('Contacto inicial');
        
         %%%%%%%%%%%%%%%%%%CONTACTO 2
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct21=ig2(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m21 n21]=size(ct21);
            pix(2,1)=m21*n21;
            aver(1,2)=sum(sum(ct21))/pix(2,1);
       
       ct22=ig2(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m22 n22]=size(ct22);
            pix(2,2)=m22*n22;
            aver(2,2)=sum(sum(ct22))/pix(2,2);
            
       ct23=ig2(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m23 n23]=size(ct23);
            pix(2,3)=m23*n23;
            aver(3,2)=sum(sum(ct23))/pix(2,3);
            
       ct24=ig2(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m24 n24]=size(ct24);
            pix(2,4)=m24*n24;
            aver(4,2)=sum(sum(ct21))/pix(2,4);
       
       ct25=ig2(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m25 n25]=size(ct25);
            pix(2,5)=m25*n25;
            aver(5,2)=sum(sum(ct25))/pix(2,5);
            
       ct26=ig2(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m26 n26]=size(ct26);
            pix(2,6)=m26*n26;
            aver(6,2)=sum(sum(ct26))/pix(2,6);
       
        %PARA MOSTRAR EL CORTE
        figure(3)
        subplot(3,2,1), imshow(ct21); title('t=0.010seg');
        subplot(3,2,2), imshow(ct22); title('t=0.010seg');  
        subplot(3,2,3), imshow(ct23); title('t=0.010seg');
        subplot(3,2,4), imshow(ct24); title('t=0.010seg');
        subplot(3,2,5), imshow(ct25); title('t=0.010seg');
        subplot(3,2,6), imshow(ct26); title('t=0.010seg');
       
        
        %%%%%%%%%%%%%%%%%%CONTACTO 3
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct31=ig3(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m31 n31]=size(ct31);
            pix(3,1)=m31*n31;
            aver(1,3)=sum(sum(ct31))/pix(3,1);
  
       ct32=ig3(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m32 n32]=size(ct32);
            pix(3,2)=m32*n32;
            aver(2,3)=sum(sum(ct22))/pix(2,2);
            
       ct33=ig3(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m33 n33]=size(ct33);
            pix(3,3)=m33*n33;
            aver(3,3)=sum(sum(ct33))/pix(3,3);
            
       ct34=ig3(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m34 n34]=size(ct34);
            pix(3,4)=m34*n34;
            aver(4,3)=sum(sum(ct31))/pix(3,4);
       
       ct35=ig3(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m35 n35]=size(ct35);
            pix(3,5)=m35*n35;
            aver(5,3)=sum(sum(ct35))/pix(3,5);
            
       ct36=ig3(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m36 n36]=size(ct36);
            pix(3,6)=m36*n36;
            aver(6,3)=sum(sum(ct36))/pix(3,6);    
         %PARA MOSTRAR EL CORTE
        figure(4)
        subplot(3,2,1), imshow(ct31); title('t=0.020seg');
        subplot(3,2,2), imshow(ct32); title('t=0.020seg');  
        subplot(3,2,3), imshow(ct33); title('t=0.020seg');
        subplot(3,2,4), imshow(ct34); title('t=0.020seg');
        subplot(3,2,5), imshow(ct35); title('t=0.020seg');
        subplot(3,2,6), imshow(ct36); title('t=0.020seg');       
       
    %%%%%%%%%%%%%%%%%%CONTACTO 4
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct41=ig4(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m41 n41]=size(ct41);
            pix(4,1)=m41*n41;
            aver(1,4)=sum(sum(ct41))/pix(4,1);
            
       ct42=ig4(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m42 n42]=size(ct42);
            pix(4,2)=m42*n42;
            aver(2,4)=sum(sum(ct42))/pix(4,2);%%%
            
       ct43=ig4(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m43 n43]=size(ct43);
            pix(4,3)=m43*n43;
            aver(3,4)=sum(sum(ct43))/pix(4,3);
            
       ct44=ig4(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m44 n44]=size(ct44);
            pix(4,4)=m44*n44;
            aver(4,4)=sum(sum(ct41))/pix(4,4);
       
       ct45=ig4(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m45 n45]=size(ct45);
            pix(4,5)=m45*n45;
            aver(5,4)=sum(sum(ct45))/pix(4,5);
            
       ct46=ig4(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m46 n46]=size(ct46);
            pix(4,6)=m46*n46;
            aver(6,4)=sum(sum(ct46))/pix(4,6);

                    figure(5)
        subplot(3,2,1), imshow(ct41); title('t=0.030seg');
        subplot(3,2,2), imshow(ct42); title('t=0.030seg');  
        subplot(3,2,3), imshow(ct43); title('t=0.030seg');
        subplot(3,2,4), imshow(ct44); title('t=0.030seg');
        subplot(3,2,5), imshow(ct45); title('t=0.030seg');
        subplot(3,2,6), imshow(ct46); title('t=0.030seg');  
     
        %%%%%%%%%%%%%%%%%%CONTACTO 5
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct51=ig5(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m51 n51]=size(ct51);
            pix(5,1)=m51*n51;
            aver(1,5)=sum(sum(ct51))/pix(5,1);
            
       ct52=ig5(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m52 n52]=size(ct52);
            pix(5,2)=m52*n52;
            aver(2,5)=sum(sum(ct52))/pix(5,2);%%%
            
       ct53=ig5(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m53 n53]=size(ct53);
            pix(5,3)=m53*n53;
            aver(3,5)=sum(sum(ct53))/pix(5,3);
            
       ct54=ig5(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m54 n54]=size(ct54);
            pix(5,4)=m54*n54;
            aver(4,5)=sum(sum(ct51))/pix(5,4);
       
       ct55=ig5(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m55 n55]=size(ct55);
            pix(5,5)=m55*n55;
            aver(5,5)=sum(sum(ct55))/pix(5,5);
            
       ct56=ig5(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m56 n56]=size(ct56);
            pix(5,6)=m56*n56;
            aver(6,5)=sum(sum(ct56))/pix(5,6);
                        figure(6)
        subplot(3,2,1), imshow(ct51); title('t=0.040seg');
        subplot(3,2,2), imshow(ct52); title('t=0.040seg');  
        subplot(3,2,3), imshow(ct53); title('t=0.040seg');
        subplot(3,2,4), imshow(ct54); title('t=0.040seg');
        subplot(3,2,5), imshow(ct55); title('t=0.040seg');
        subplot(3,2,6), imshow(ct56); title('t=0.040seg');    
        
        
                %%%%%%%%%%%%%%%%%%CONTACTO 6
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct61=ig6(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m61 n61]=size(ct61);
            pix(6,1)=m61*n61;
            aver(1,6)=sum(sum(ct61))/pix(6,1);
            
       ct62=ig6(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m62 n62]=size(ct62);
            pix(6,2)=m62*n62;
            aver(2,6)=sum(sum(ct62))/pix(6,2);%%%
            
       ct63=ig6(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m63 n63]=size(ct63);
            pix(6,3)=m63*n63;
            aver(3,6)=sum(sum(ct63))/pix(6,3);
            
       ct64=ig6(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m64 n64]=size(ct64);
            pix(6,4)=m64*n64;
            aver(4,6)=sum(sum(ct64))/pix(6,4);
      
       ct65=ig6(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m65 n65]=size(ct55);
            pix(6,5)=m65*n65;
            aver(5,6)=sum(sum(ct65))/pix(6,5);
            
       ct66=ig6(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m66 n66]=size(ct66);
            pix(6,6)=m66*n66;
            aver(6,6)=sum(sum(ct66))/pix(6,6); %%%%%AVER FINAL DE PARTE2
                        figure(7)
        subplot(3,2,1), imshow(ct61); title('t=0.050seg');
        subplot(3,2,2), imshow(ct62); title('t=0.050seg');  
        subplot(3,2,3), imshow(ct63); title('t=0.050seg');
        subplot(3,2,4), imshow(ct64); title('t=0.050seg');
        subplot(3,2,5), imshow(ct65); title('t=0.050seg');
        subplot(3,2,6), imshow(ct66); title('t=0.050seg'); 
        
        
elseif elige==3
    fprintf('Eligio contacto medio');
    %parte3
        ig1=rgb2gray(ir13); ig2=rgb2gray(ir14);
        ig3=rgb2gray(ir15); ig4=rgb2gray(ir16);
        ig5=rgb2gray(ir17); ig6=rgb2gray(ir18);
        
             %Parte 1 de grises
           figure(1)
        subplot(2,6,1), imshow(ir13); title('t=0.000seg');
        subplot(2,6,2), imshow(ir14); title('t=0.010seg');  
        subplot(2,6,3), imshow(ir15); title('t=0.020seg');
        subplot(2,6,4), imshow(ir16); title('t=0.030seg');
        subplot(2,6,5), imshow(ir17); title('t=0.040seg');
        subplot(2,6,6), imshow(ir18); title('t=0.050seg');
        
        
        subplot(2,6,7), imshow(ig1); title('t=0.000seg');
        subplot(2,6,8), imshow(ig2); title('t=0.010seg');  
        subplot(2,6,9), imshow(ig3); title('t=0.020seg');
        subplot(2,6,10), imshow(ig4); title('t=0.030seg');
        subplot(2,6,11), imshow(ig5); title('t=0.040seg');
        subplot(2,6,12), imshow(ig6); title('t=0.050seg');

        
        %%%%%%%%%%%%%%%% Contacto 1------p3
    %AREAS DE CORTE ciz=cordenada izquierda sup cde=cordenada derecha inf
    
    %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];
    
    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];
    
    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
        %PARA CORTAR LA FIGURA ct=corte Nuemro de corte 
       ct11=ig1(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
            [m11 n11]=size(ct11);
            pix(1,1)=m11*n11;
            aver(1,1)=sum(sum(ct11))/pix(1,1);
       
       ct12=ig1(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m12 n12]=size(ct12);
            pix(1,2)=m12*n12;
            aver(2,1)=sum(sum(ct12))/pix(1,2);
            
       ct13=ig1(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m13 n13]=size(ct13);
            pix(1,3)=m13*n13;
            aver(3,1)=sum(sum(ct13))/pix(1,3);
            
       ct14=ig1(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
            [m14 n14]=size(ct14);
            pix(1,4)=m14*n14;
            aver(4,1)=sum(sum(ct14))/pix(1,4);
       
       ct15=ig1(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m15 n15]=size(ct15);
            pix(1,5)=m15*n15;
            aver(5,1)=sum(sum(ct15))/pix(1,5);
       
       ct16=ig1(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1)); 
            [m16 n16]=size(ct16);
            pix(1,6)=m16*n16;
            aver(6,1)=sum(sum(ct16))/pix(1,6);
       
       %PARA MOSTRAR EL CORTE
       figure(2)
        subplot(3,2,1), imshow(ct11); title('Contacto inicial');
        subplot(3,2,2), imshow(ct12); title('Contacto inicial');  
        subplot(3,2,3), imshow(ct13); title('Contacto inicial');
        subplot(3,2,4), imshow(ct14); title('Contacto inicial');
        subplot(3,2,5), imshow(ct15); title('Contacto inicial');
        subplot(3,2,6), imshow(ct16); title('Contacto inicial');
        
         %%%%%%%%%%%%%%%%%%CONTACTO 2---p3
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170-10, 205];  cde(1,:)=[220-10,245];   ciz(2,:)=[261-10, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188-10, 388];  cde(3,:)=[235-10,426];   ciz(4,:)=[264-10, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187-10, 515];  cde(5,:)=[245-10,584];   ciz(6,:)=[271-10, 515];  cde(6,:)=[340-10,580];
       
         %%%SE CORTA
       ct21=ig2(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m21 n21]=size(ct21);
            pix(2,1)=m21*n21;
            aver(1,2)=sum(sum(ct21))/pix(2,1);
       
       ct22=ig2(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m22 n22]=size(ct22);
            pix(2,2)=m22*n22;
            aver(2,2)=sum(sum(ct22))/pix(2,2);
            
       ct23=ig2(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m23 n23]=size(ct23);
            pix(2,3)=m23*n23;
            aver(3,2)=sum(sum(ct23))/pix(2,3);
            
       ct24=ig2(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m24 n24]=size(ct24);
            pix(2,4)=m24*n24;
            aver(4,2)=sum(sum(ct21))/pix(2,4);
       
       ct25=ig2(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m25 n25]=size(ct25);
            pix(2,5)=m25*n25;
            aver(5,2)=sum(sum(ct25))/pix(2,5);
            
       ct26=ig2(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m26 n26]=size(ct26);
            pix(2,6)=m26*n26;
            aver(6,2)=sum(sum(ct26))/pix(2,6);
       
        %PARA MOSTRAR EL CORTE
        figure(3)
        subplot(3,2,1), imshow(ct21); title('t=0.010seg');
        subplot(3,2,2), imshow(ct22); title('t=0.010seg');  
        subplot(3,2,3), imshow(ct23); title('t=0.010seg');
        subplot(3,2,4), imshow(ct24); title('t=0.010seg');
        subplot(3,2,5), imshow(ct25); title('t=0.010seg');
        subplot(3,2,6), imshow(ct26); title('t=0.010seg');
       
        
        %%%%%%%%%%%%%%%%%%CONTACTO 3---p3
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct31=ig3(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m31 n31]=size(ct31);
            pix(3,1)=m31*n31;
            aver(1,3)=sum(sum(ct31))/pix(3,1);
  
       ct32=ig3(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m32 n32]=size(ct32);
            pix(3,2)=m32*n32;
            aver(2,3)=sum(sum(ct22))/pix(2,2);
            
       ct33=ig3(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m33 n33]=size(ct33);
            pix(3,3)=m33*n33;
            aver(3,3)=sum(sum(ct33))/pix(3,3);
            
       ct34=ig3(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m34 n34]=size(ct34);
            pix(3,4)=m34*n34;
            aver(4,3)=sum(sum(ct31))/pix(3,4);
       
       ct35=ig3(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m35 n35]=size(ct35);
            pix(3,5)=m35*n35;
            aver(5,3)=sum(sum(ct35))/pix(3,5);
            
       ct36=ig3(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m36 n36]=size(ct36);
            pix(3,6)=m36*n36;
            aver(6,3)=sum(sum(ct36))/pix(3,6);    
         %PARA MOSTRAR EL CORTE
        figure(4)
        subplot(3,2,1), imshow(ct31); title('t=0.020seg');
        subplot(3,2,2), imshow(ct32); title('t=0.020seg');  
        subplot(3,2,3), imshow(ct33); title('t=0.020seg');
        subplot(3,2,4), imshow(ct34); title('t=0.020seg');
        subplot(3,2,5), imshow(ct35); title('t=0.020seg');
        subplot(3,2,6), imshow(ct36); title('t=0.020seg');       
       
    %%%%%%%%%%%%%%%%%%CONTACTO 4---p3
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct41=ig4(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m41 n41]=size(ct41);
            pix(4,1)=m41*n41;
            aver(1,4)=sum(sum(ct41))/pix(4,1);
            
       ct42=ig4(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m42 n42]=size(ct42);
            pix(4,2)=m42*n42;
            aver(2,4)=sum(sum(ct42))/pix(4,2);%%%
            
       ct43=ig4(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m43 n43]=size(ct43);
            pix(4,3)=m43*n43;
            aver(3,4)=sum(sum(ct43))/pix(4,3);
            
       ct44=ig4(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m44 n44]=size(ct44);
            pix(4,4)=m44*n44;
            aver(4,4)=sum(sum(ct41))/pix(4,4);
       
       ct45=ig4(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m45 n45]=size(ct45);
            pix(4,5)=m45*n45;
            aver(5,4)=sum(sum(ct45))/pix(4,5);
            
       ct46=ig4(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m46 n46]=size(ct46);
            pix(4,6)=m46*n46;
            aver(6,4)=sum(sum(ct46))/pix(4,6);

                    figure(5)
        subplot(3,2,1), imshow(ct41); title('t=0.030seg');
        subplot(3,2,2), imshow(ct42); title('t=0.030seg');  
        subplot(3,2,3), imshow(ct43); title('t=0.030seg');
        subplot(3,2,4), imshow(ct44); title('t=0.030seg');
        subplot(3,2,5), imshow(ct45); title('t=0.030seg');
        subplot(3,2,6), imshow(ct46); title('t=0.030seg');  
     
        %%%%%%%%%%%%%%%%%%CONTACTO 5---p3
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct51=ig5(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m51 n51]=size(ct51);
            pix(5,1)=m51*n51;
            aver(1,5)=sum(sum(ct51))/pix(5,1);
            
       ct52=ig5(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m52 n52]=size(ct52);
            pix(5,2)=m52*n52;
            aver(2,5)=sum(sum(ct52))/pix(5,2);%%%
            
       ct53=ig5(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m53 n53]=size(ct53);
            pix(5,3)=m53*n53;
            aver(3,5)=sum(sum(ct53))/pix(5,3);
            
       ct54=ig5(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m54 n54]=size(ct54);
            pix(5,4)=m54*n54;
            aver(4,5)=sum(sum(ct51))/pix(5,4);
       
       ct55=ig5(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m55 n55]=size(ct55);
            pix(5,5)=m55*n55;
            aver(5,5)=sum(sum(ct55))/pix(5,5);
            
       ct56=ig5(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m56 n56]=size(ct56);
            pix(5,6)=m56*n56;
            aver(6,5)=sum(sum(ct56))/pix(5,6);
                        figure(6)
        subplot(3,2,1), imshow(ct51); title('t=0.040seg');
        subplot(3,2,2), imshow(ct52); title('t=0.040seg');  
        subplot(3,2,3), imshow(ct53); title('t=0.040seg');
        subplot(3,2,4), imshow(ct54); title('t=0.040seg');
        subplot(3,2,5), imshow(ct55); title('t=0.040seg');
        subplot(3,2,6), imshow(ct56); title('t=0.040seg');    
        
        
                %%%%%%%%%%%%%%%%%%CONTACTO 6---p3
        %AREAS DE CORTE
        %%LADO IZQUIERDO                          %LADO DERECHO
    ciz(1,:)=[170, 205];  cde(1,:)=[220,245];   ciz(2,:)=[261, 201];  cde(2,:)=[320,252];

    ciz(3,:)=[188, 388];  cde(3,:)=[235,426];   ciz(4,:)=[264, 388];  cde(4,:)=[300-10,426];

    ciz(5,:)=[187, 515];  cde(5,:)=[245,584];   ciz(6,:)=[271, 515];  cde(6,:)=[340,580];
       
         %%%SE CORTA
       ct61=ig6(ciz(1,2):cde(1,2),ciz(1,1):cde(1,1));
           [m61 n61]=size(ct61);
            pix(6,1)=m61*n61;
            aver(1,6)=sum(sum(ct61))/pix(6,1);
            
       ct62=ig6(ciz(2,2):cde(2,2),ciz(2,1):cde(2,1));
            [m62 n62]=size(ct62);
            pix(6,2)=m62*n62;
            aver(2,6)=sum(sum(ct62))/pix(6,2);%%%
            
       ct63=ig6(ciz(3,2):cde(3,2),ciz(3,1):cde(3,1));
            [m63 n63]=size(ct63);
            pix(6,3)=m63*n63;
            aver(3,6)=sum(sum(ct63))/pix(6,3);
            
       ct64=ig6(ciz(4,2):cde(4,2),ciz(4,1):cde(4,1));
           [m64 n64]=size(ct64);
            pix(6,4)=m64*n64;
            aver(4,6)=sum(sum(ct64))/pix(6,4);
      
       ct65=ig6(ciz(5,2):cde(5,2),ciz(5,1):cde(5,1));
            [m65 n65]=size(ct55);
            pix(6,5)=m65*n65;
            aver(5,6)=sum(sum(ct65))/pix(6,5);
            
       ct66=ig6(ciz(6,2):cde(6,2),ciz(6,1):cde(6,1));
            [m66 n66]=size(ct66);
            pix(6,6)=m66*n66;
            aver(6,6)=sum(sum(ct66))/pix(6,6);%%%%AVER FINAL PARTE3
            
                        figure(7)
        subplot(3,2,1), imshow(ct61); title('t=0.050seg');
        subplot(3,2,2), imshow(ct62); title('t=0.050seg');  
        subplot(3,2,3), imshow(ct63); title('t=0.050seg');
        subplot(3,2,4), imshow(ct64); title('t=0.050seg');
        subplot(3,2,5), imshow(ct65); title('t=0.050seg');
        subplot(3,2,6), imshow(ct66); title('t=0.050seg')
                
end

clear ct11 ct12 ct13 ct14 ct15 ct16 i1 i2 i3 i4 i5 i6 i7 i8 i9 i10 i11 i12
clear ct21 ct22 ct23 ct24 ct25 ct26 i13 i14 i15 i16 i17 i18 ir1 ir2 ir3
clear ct31 ct32 ct33 ct34 ct35 ct36 ir4 ir5 ir6 ir7 iri ir9 ir10 ir11 ir12 
clear ct41 ct42 ct43 ct44 ct45 ct46 ir13 ir14 ir15 ir16 ir17 ir18 
clear ct51 ct52 ct53 ct54 ct55 ct56 cde ciz pix
clear ct61 ct62 ct63 ct64 ct65 ct66
clear m11 m12 m13 m14 m15 m16
clear m21 m22 m23 m24 m25 m26
clear m31 m32 m33 m34 m35 m36
clear m41 m42 m43 m44 m45 m46
clear m51 m52 m53 m54 m55 m56
clear m61 m62 m63 m64 m65 m66
clear n11 n12 n13 n14 n15 n16
clear n21 n22 n23 n24 n25 n26
clear n31 n32 n33 n34 n35 n36
clear n41 n42 n43 n44 n45 n46
clear n51 n52 n53 n54 n55 n56
clear n61 n62 n63 n64 n65 n66



%%%%%%%%%%%%%%%%%%%PARA IMPRIMMIR LAS GRAFICAS
fprintf('\nQue tipo de graficas quieres ver?')
grafi=input('\n1 Para todos lo puntos en un solo gráfico, \n2 Para que cada punto tenga un grafico     ');


if grafi==1

        supder=aver(1,:);
        supizq=aver(2,:);

        medder=aver(3,:);
        medizq=aver(4,:);

        infizq=aver(5,:);
        infder=aver(6,:);
        x=0:0.01:0.05;
        %%%%Para las grafica
        figure(8)
        hold on
        plot(x,supder, 'r-*'); 
        plot(x,supizq, 'b-*'); 
        plot(x,medder, 'k-*');
        plot(x,medizq, 'm-*');
        plot(x,infder, 'g-*');
        plot(x,infizq, 'b--*');
        xlabel('Tiempo')
        ylabel('Cambios de presion');
        grid on
        legend({'Superior derecha','Superior izquierda','Medio derecha','Medio izquierda','Medio derecha','Inferioor izquierda','Inferior derecha'},'Location','northwest')
        hold off
elseif grafi==2
        supder=aver(1,:);
        supizq=aver(2,:);

        medder=aver(3,:);
        medizq=aver(4,:);

        infizq=aver(5,:);
        infder=aver(6,:);
        x=0:0.01:0.05;
    figure(8)
        plot(x,supder, 'r-*');
        title('Superior derecha');
        xlabel('Tiempo')
        ylabel('Cambios de presion');
        grid on
     figure(9)
        plot(x,supizq, 'b-*');
        title('Superior izquierda');
        xlabel('Tiempo');
        ylabel('Cambios de presion');
        grid on
      figure(10)  
        plot(x,medder, 'k-*');
        title('Medio derecha');
        xlabel('Tiempo')
        ylabel('Cambios de presion');
        grid on
      figure(11)
        plot(x,medizq, 'm-*');
        title('Medio izquierda');
        xlabel('Tiempo')
        ylabel('Cambios de presion');
        grid on
     figure(12)
        plot(x,infder, 'g-*');
        title('Inferior derecha');
        xlabel('Tiempo')
        ylabel('Cambios de presion');
        grid on
     figure(13)
        plot(x,infizq, 'b--*');
        title('Inferior izquierda');
        xlabel('Tiempo')
        ylabel('Cambios de presion');
        grid on
end
%%%%%%%%%%%%%%%ITERACIÓN MIEDO MIL        
fprintf('\nQUIERES HACER LA ITERACIÓN    ')
iteracion=input('\n1 SI, 2 NO     ');
if iteracion==1
    fprintf('\nGracias, me voy a tardar asi que toma un cafe :D')
  t0=0; t1=0.01; t2=0.02;   t3=0.03;    t4=0.04;    t5=0.05;
  ti=t0:0.001:t5;
  p1=640;
  p2=480;
  kiwi(:,:,1)=ig1(:,:);
  kiwi(:,:,2)=ig2(:,:);
  kiwi(:,:,3)=ig3(:,:);
  kiwi(:,:,4)=ig4(:,:);
  kiwi(:,:,5)=ig5(:,:);
  kiwi(:,:,6)=ig6(:,:);
    
  for i=1:p1
      for j=1:p2
          aux1=[t0 t1 t2 t3 t4 t5];
          aux2=[kiwi(i,j,1),kiwi(i,j,2),kiwi(i,j,3),kiwi(i,j,4),kiwi(i,j,5),kiwi(i,j,6)];
          kawi(i,j,:)=uint8(interp1(aux1,double(aux2),ti,'pchip'));
      end
  end
  
  %%%%%%%video
 fprintf('\nQuieres ver el video    ')
ver=input('\n1 SI, 2 NO     '); 
if ver==1

              for k=1:36
                  figure(14)
                  imshow(kawi(:,:,k))
                  pause(1)
              end
elseif ver==2
    fprintf('\n Okay:(    ')
end
   
elseif iteracion==2
        fprintf('\nGracias :D')
end

%%%%%%%%%%%ENVIO DE DATOS



fprintf('\nComo quieres enviar los datos al arduino')
aver
envio=input('\n 1 Para sistema binario \n 2 Para sistema de 0 a 299 \n');
if envio==1
    clear a
    a=arduino('COM2');
    pinMode(a,8,'output');
    pinMode(a,9,'output');
    pinMode(a,10,'output');
    pinMode(a,11,'output');
    pinMode(a,12,'output');
    pinMode(a,13,'output');
    
    for tpn=1:120
        nre=1:tpn;
        for k=1:6
                VALALT=50;
                VALBAJ=49;

            v1=aver(1,k); %%%Se separa el vector (RENGLON DE AVER, FILA DE AVER)
            v2=aver(2,k);
            v3=aver(3,k);
            v4=aver(4,k);
            v5=aver(5,k);
            v6=aver(6,k);
            pause(1)

            %%%PARA 1
            if v1>VALALT
                %fprintf('d1=1\n');
                d1=1;
                %%%VA UN DITAL PRINT
                digitalWrite(a,8,1);
            elseif v1<VALBAJ
                %fprintf('d1=0\n');
                d1=0;
                %%VA UN DIGITAL PRINT
                digitalWrite(a,8,0);
            end
            
            %PARA VALOR DOS
            if v2>VALALT
                %fprintf('d2=1\n');
                d2=1; 
                %%VA UN DIGITAL PRINT
                digitalWrite(a,9,1);
            elseif v1<VALBAJ
                %fprintf('d2=0\n');
                d2=0;
                %%VA UN DIGITAL PRINT
                digitalWrite(a,9,0);
            end
            
            %PARA VALOR DE TRES
             if v3>VALALT
                %fprintf('d2=1\n');
                d2=1;
                %%VA UN DIGITAL PRINT
                digitalWrite(a,10,1);
            elseif v3<VALBAJ
                %fprintf('d3=0\n');
                d3=0;
                %%VA UN DIGITAL PRINT
                digitalWrite(a,10,0);
            end
            
             %PARA VALOR DE cuatro
             if v4>VALALT
                %fprintf('d4=1\n');
                d4=1;
                %%VA UN DIGITAL PRINT
                digitalWrite(a,11,1);
            elseif v4<VALBAJ
                %fprintf('d4=0\n');
                d4=0;
                %%VA UN DIGITAL PRINT
                digitalWrite(a,11,0);
             end
            
             %PARA VALOR DE CINCO
             if v5>VALALT
                %fprintf('d5=1\n');
                d5=1;
                %%VA UN DIGITAL PRINT
                digitalWrite(a,12,1);
            elseif v5<VALBAJ
                %fprintf('d5=0\n');
                d5=0;
                %%VA UN DIGITAL PRINT
                digitalWrite(a,12,0);
             end
            
            %PARA VALOR DE SEIS
             if v6>VALALT
                %fprintf('d6=1\n');
                d6=1;
                %%VA UN DIGITAL PRINT
                digitalWrite(a,13,1);
            elseif v6<VALBAJ
                %fprintf('d6=0\n');
                d6=0;
                %%VA UN DIGITAL PRINT
                digitalWrite(a,13,0);
            end
            
        end
        
        
        pause(0.5)
    end
          
        
elseif envio==2
    %%%VA otro choro
     clear a
   a=arduino('COM2');
    pinMode(a,8,'output');
    pinMode(a,9,'output');
    pinMode(a,10,'output');
    pinMode(a,11,'output');
    pinMode(a,12,'output');
    pinMode(a,13,'output');
    
    for tpn=1:120
        nre=1:tpn;
        for k=1:6
            aver;%%%%%ENVIO DE DATOS POR TABLA A ARDUINO
            mp1=round(aver(1,k));
            
            mp2=round(aver(2,k));
            
            mp3=round(aver(3,k));
            
            mp4=round(aver(4,k));
            
            mp5=round(aver(5,k));
           
            mp6=round(aver(6,k));
            pause(1)
           analogWrite(a,8,mp1);
           analogWrite(a,9,mp1);
           analogWrite(a,10,mp1);
           analogWrite(a,11,mp1);
           analogWrite(a,12,mp1);
           analogWrite(a,13,mp1);
            
            
        end
        pause(1)
    end
    
        
    
    
    
end
    


