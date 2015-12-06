%erzeugt ein Sierspinski-Dreieck; Argumente >4000 empfohlen

function Sierpinski (n)

%Definition der Startwerte
p1=[0,0];
p2=[2,0];
p3=[1,1];
%Setzen des ersten Punktes
a(1,:)=p1;
%Berechnung der einzelnen Folgenglieder und Abspeichern in Matrix
for k=2:1:n
%Berechnung der Zufallszahl, auch randn möglich
  t=rand;
%Verzweigung je nach dem, welcher Wert gewählt wurde
  if t<(1/3)
    punkt2=p1;
  elseif t<(2/3) && t>=(1/3)
    punkt2=p2;
  else
    punkt2=p3;
  end
%Berechnung   
  a(k,:) = (a(k-1,:)+punkt2)/2;
end
%Visualisierung
scatter(a(:,1), a(:,2),6,"filled");

  
end
  
%by Niklas Götz