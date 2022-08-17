function [filename, Sigma, PSNR_Final,FSIM_Final,SSIM_Final, Time_s, iter, Err_or]     =  LR_GSC_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2)


randn ('seed',0);

time0         =   clock;

fn               =     [filename, '.tif'];

I                =     imread(fn);

[~, ~, kk]       =     size (I);

if kk==3
    
    I     = rgb2gray (I);
       
end


par.I            =     double(I);



par              =    LR_GSC_Para_Set (Sigma,I, gamma, lambda, mu, c1, c2);

par.nim          =    par.I + par.nSig* randn(size( par.I ));

 

[Denoising ,  iter,Err_or]             =    LR_GSC_Denoising( par);

   Time_s =(etime(clock,time0));

im  = Denoising{iter-1};


PSNR_Final       =   csnr (im, par.I,0,0);
FSIM_Final       =   FeatureSIM(im, par.I);
SSIM_Final       =   cal_ssim (im, par.I,0,0);



if Sigma==10

Final_denoisng= strcat(filename,'_LR_GSC','_sigma_',num2str(Sigma),'_PSNR_',num2str(PSNR_Final),'_FSIM_',num2str(FSIM_Final),'_SSIM_',num2str(SSIM_Final),'.png');

imwrite(uint8(im),strcat('./10_Result/',Final_denoisng));


elseif Sigma==20

Final_denoisng= strcat(filename,'_LR_GSC','_sigma_',num2str(Sigma),'_PSNR_',num2str(PSNR_Final),'_FSIM_',num2str(FSIM_Final),'_SSIM_',num2str(SSIM_Final),'.png');

imwrite(uint8(im),strcat('./20_Result/',Final_denoisng));

elseif Sigma==30
    
Final_denoisng= strcat(filename,'_LR_GSC','_sigma_',num2str(Sigma),'_PSNR_',num2str(PSNR_Final),'_FSIM_',num2str(FSIM_Final),'_SSIM_',num2str(SSIM_Final),'.png');

imwrite(uint8(im),strcat('./30_Result/',Final_denoisng));

elseif Sigma==40
    
Final_denoisng= strcat(filename,'_LR_GSC','_sigma_',num2str(Sigma),'_PSNR_',num2str(PSNR_Final),'_FSIM_',num2str(FSIM_Final),'_SSIM_',num2str(SSIM_Final),'.png');

imwrite(uint8(im),strcat('./40_Result/',Final_denoisng));

elseif Sigma==50
    
Final_denoisng= strcat(filename,'_LR_GSC','_sigma_',num2str(Sigma),'_PSNR_',num2str(PSNR_Final),'_FSIM_',num2str(FSIM_Final),'_SSIM_',num2str(SSIM_Final),'.png');

imwrite(uint8(im),strcat('./50_Result/',Final_denoisng));

elseif Sigma==75
    
Final_denoisng= strcat(filename,'_LR_GSC','_sigma_',num2str(Sigma),'_PSNR_',num2str(PSNR_Final),'_FSIM_',num2str(FSIM_Final),'_SSIM_',num2str(SSIM_Final),'.png');

imwrite(uint8(im),strcat('./75_Result/',Final_denoisng));

else
    
Final_denoisng= strcat(filename,'_LR_GSC','_sigma_',num2str(Sigma),'_PSNR_',num2str(PSNR_Final),'_FSIM_',num2str(FSIM_Final),'_SSIM_',num2str(SSIM_Final),'.png');

imwrite(uint8(im),strcat('./100_Result/',Final_denoisng));
end



end

