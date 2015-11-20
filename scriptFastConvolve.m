tic; fast_convolve(x2,h); f2 = toc;
tic; fast_convolve(x3,h); f3 = toc;
tic; fast_convolve(x4,h); f4 = toc;
tic; fast_convolve(x5,h); f5 = toc;
tic; fast_convolve(x6,h); f6 = toc;
tic; fast_convolve(x7,h); f7 = toc;
tic; fast_convolve(x8,h); f8 = toc;
tic; fast_convolve(x9,h); f9 = toc;

tic; convolve(x9,h); t9 = toc;
tic; convolve(x8,h); t8 = toc;
tic; convolve(x7,h); t7 = toc;
tic; convolve(x6,h); t6 = toc;
tic; convolve(x5,h); t5 = toc;
tic; convolve(x4,h); t4 = toc;
tic; convolve(x3,h); t3 = toc;
tic; convolve(x2,h); t2 = toc;
tic; convolve(x1,h); t1 = toc;

plot([f1 f2 f3 f4 f5 f6 f7 f8 f9])
hold on
plot([t1 t2 t3 t4 t5 t6 t7 t8 t9], 'r')