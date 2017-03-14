jet=imread('jet.bmp');

figure(1);
LUT(jet,kwadratowa)
title('kwadratowa')

figure(2);
LUT(jet,sq)
title('sq')

figure(3);
LUT(jet,sqr)
title('sqr')

figure(4);
LUT(jet,log)
title('log')

figure(5);
LUT(jet,odwlog)
title('odwlog')

figure(6);
LUT(jet,odwrotna)
title('odrwotna')

figure(7);
LUT(jet,pila)
title('pila')
