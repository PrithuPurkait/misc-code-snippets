
N = 512; % size of image
l = 50; % approximate wavelength
X = rand(N); % starting image
%nexttile;
%imagesc(X);

Y = fft2(X);
%nexttile;
%imagesc(abs(fftshift(Y)));

R1 = N/(l/pi); R2 = R1+1;
[I,J] = ndgrid(1:N,1:N);
M1 = double((I-N/2).^2+(J-N/2).^2>=R1^2);
M2 = double((I-N/2).^2+(J-N/2).^2<=R2^2);
M = M1.*M2;

Y1 = ifftshift(fftshift(Y).*M);

X1 = ifft2(Y1);
nexttile;
imagesc(real(X1)>0);