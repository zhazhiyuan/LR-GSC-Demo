clc
clear
m_10_1=0; 
m_10_2=0; 
m_10_3=0; 
m_20_1=0; 
m_20_2=0; 
m_20_3=0; 
m_30_1=0; 
m_30_2=0; 
m_30_3=0; 
m_40_1=0;
m_40_2=0; 
m_40_3=0; 
m_50_1=0;
m_50_2=0; 
m_50_3=0; 
m_75_1=0;
m_75_2=0; 
m_75_3=0; 
m_100_1=0;
m_100_2=0; 
m_100_3=0; 

All_data_Results_10_1 = cell(1,200);
All_data_Results_10_2 = cell(1,200);
All_data_Results_10_3 = cell(1,200);

All_data_Results_20_1 = cell(1,200);
All_data_Results_20_2 = cell(1,200);
All_data_Results_20_3 = cell(1,200);

All_data_Results_30_1 = cell(1,200);
All_data_Results_30_2 = cell(1,200);
All_data_Results_30_3 = cell(1,200);

All_data_Results_40_1 = cell(1,200);
All_data_Results_40_2 = cell(1,200);
All_data_Results_40_3 = cell(1,200);

All_data_Results_50_1 = cell(1,200);
All_data_Results_50_2 = cell(1,200);
All_data_Results_50_3 = cell(1,200);

All_data_Results_75_1 = cell(1,200);
All_data_Results_75_2 = cell(1,200);
All_data_Results_75_3 = cell(1,200);

All_data_Results_100_1 = cell(1,200);
All_data_Results_100_2 = cell(1,200);
All_data_Results_100_3 = cell(1,200);



for i = 1:3
ImageNum =i;

switch ImageNum
          case 1
                filename = 'Barbara256';
            case 2
                filename = 'House256';
            case 3
                filename = 'Leaves256';

end

for j  =  1:7
    

filename    

randn ('seed',0);

Sigma_Num         =       [10, 20, 30, 40, 50, 75, 100]; 

Sigma             =       Sigma_Num(j)


 if  Sigma ==10
     
     
     gamma = 0.1; lambda = 0.1;  mu = 0.06;  c1 = 1.2;  c2 = 0.6;
     
 elseif  Sigma ==20


     gamma = 0.09; lambda = 0.04;  mu = 0.1; c1 = 1;  c2 = 1.2;
          
 elseif Sigma ==30
     
          gamma = 0.09; lambda = 0.09;  mu = 0.009;  c1 = 1;  c2 = 0.1;
            
 elseif Sigma ==40
     
          gamma = 0.08; lambda = 0.08;  mu = 0.006; c1 = 1;  c2 = 0.3;
             
 elseif  Sigma ==50
     

          gamma = 0.09; lambda = 0.08;  mu = 0.004;  c1 = 1;  c2 = 1.7;
                 
 elseif  Sigma == 75
     
           gamma = 0.1; lambda = 0.08;  mu = 0.002;   c1 = 1;  c2 = 1.7;
 else
     
          gamma = 0.08; lambda = 0.03;  mu = 0.007;   c1 = 1;  c2 = 0.4;
 end



 if  Sigma== 10
     
     

  [filename, Sigma,   PSNR,FSIM,SSIM, Time_s, jj, Err_or]     =  LR_GSC_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
     

 m_10_1= m_10_1+1;
 
 s=strcat('A',num2str(m_10_1));
 
 All_data_Results_10_1{m_10_1}= {filename, Sigma,  PSNR,FSIM,SSIM,Time_s, jj, Err_or};
 
 {filename, Sigma, gamma, lambda, mu, c1, c2,  PSNR,FSIM,SSIM,Time_s, jj, Err_or};
 xlswrite('LR_GSC_Sigma_10_Final.xls', All_data_Results_10_1{m_10_1},'sheet1',s);
 
 

 
 
 
 
 elseif  Sigma==20
     

     
 [filename, Sigma,   PSNR,FSIM,SSIM, Time_s, jj, Err_or]     =  LR_GSC_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
 
 m_20_1= m_20_1+1;
 
 s=strcat('A',num2str(m_20_1));
 
 All_data_Results_20_1{m_20_1}= {filename, Sigma,  PSNR,FSIM,SSIM,Time_s, jj, Err_or};
 
 xlswrite('LR_GSC_Sigma_20_Final.xls', All_data_Results_20_1{m_20_1},'sheet1',s);
 
 
 


 
 
  elseif  Sigma==30

     
 [filename, Sigma,   PSNR,FSIM,SSIM, Time_s, jj, Err_or]     =  LR_GSC_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
 
 m_30_1= m_30_1+1;
 
 s=strcat('A',num2str(m_30_1));
 
 All_data_Results_30_1{m_30_1}= {filename, Sigma,   PSNR,FSIM,SSIM,Time_s, jj, Err_or};
 
 xlswrite('LR_GSC_Sigma_30_Final.xls', All_data_Results_30_1{m_30_1},'sheet1',s);
 
 



   elseif  Sigma==40
     

 [filename, Sigma,   PSNR,FSIM,SSIM, Time_s, jj, Err_or]     =  LR_GSC_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
 
 m_40_1= m_40_1+1;
 
 s=strcat('A',num2str(m_40_1));
 
 All_data_Results_40_1{m_40_1}= {filename, Sigma, PSNR,FSIM,SSIM,Time_s, jj, Err_or};
 
 xlswrite('LR_GSC_Sigma_40_Final.xls', All_data_Results_40_1{m_40_1},'sheet1',s);




 elseif  Sigma==50
     

 [filename, Sigma,   PSNR,FSIM,SSIM, Time_s, jj, Err_or]     =  LR_GSC_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
 
 m_50_1= m_50_1+1;
 
 s=strcat('A',num2str(m_50_1));
 
 All_data_Results_50_1{m_50_1}= {filename, Sigma,  PSNR,FSIM,SSIM,Time_s, jj, Err_or};
 
 xlswrite('LR_GSC_Sigma_50_Final.xls', All_data_Results_50_1{m_50_1},'sheet1',s);
 
 



 
 
 elseif  Sigma==75
     

     
 [filename, Sigma,   PSNR,FSIM,SSIM, Time_s, jj, Err_or]     =  LR_GSC_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
 
 m_75_1= m_75_1+1;
 
 s=strcat('A',num2str(m_75_1));
 
 All_data_Results_75_1{m_75_1}= {filename, Sigma, PSNR,FSIM,SSIM,Time_s, jj, Err_or};
 
 xlswrite('LR_GSC_Sigma_75_Final.xls', All_data_Results_75_1{m_75_1},'sheet1',s);
 



 else
     

     
 [filename, Sigma,   PSNR,FSIM,SSIM, Time_s, jj, Err_or]     =  LR_GSC_Denoising_Test (filename, Sigma, gamma, lambda, mu, c1, c2);
 
 m_100_1= m_100_1+1;
 
 s=strcat('A',num2str(m_100_1));
 
 All_data_Results_100_1{m_100_1}= {filename, Sigma,  PSNR,FSIM,SSIM,Time_s, jj, Err_or};
 
 xlswrite('LR_GSC_Sigma_100_Final.xls', All_data_Results_100_1{m_100_1},'sheet1',s);
 



 end

clearvars -except filename i m_10_1 m_10_2 m_10_3 m_20_1 m_20_2 m_20_3 m_30_1 m_30_2 m_30_3 m_40_1 m_40_2 m_40_3...
m_50_1 m_50_2 m_50_3 m_75_1 m_75_2 m_75_3 m_100_1 m_100_2 m_100_3 All_data_Results_10_1...
All_data_Results_10_2 All_data_Results_10_3 All_data_Results_20_1 All_data_Results_20_2...
All_data_Results_20_3 All_data_Results_30_1 All_data_Results_30_2 All_data_Results_30_3...
All_data_Results_40_1 All_data_Results_40_2 All_data_Results_40_3 All_data_Results_50_1...
All_data_Results_50_2 All_data_Results_50_3 All_data_Results_75_1 All_data_Results_75_2...
All_data_Results_75_3 All_data_Results_100_1 All_data_Results_100_2 All_data_Results_100_3
end
clearvars -except filename m_10_1 m_10_2 m_10_3 m_20_1 m_20_2 m_20_3 m_30_1 m_30_2 m_30_3 m_40_1 m_40_2 m_40_3...
m_50_1 m_50_2 m_50_3 m_75_1 m_75_2 m_75_3 m_100_1 m_100_2 m_100_3 All_data_Results_10_1...
All_data_Results_10_2 All_data_Results_10_3 All_data_Results_20_1 All_data_Results_20_2...
All_data_Results_20_3 All_data_Results_30_1 All_data_Results_30_2 All_data_Results_30_3...
All_data_Results_40_1 All_data_Results_40_2 All_data_Results_40_3 All_data_Results_50_1...
All_data_Results_50_2 All_data_Results_50_3 All_data_Results_75_1 All_data_Results_75_2...
All_data_Results_75_3 All_data_Results_100_1 All_data_Results_100_2 All_data_Results_100_3
end






         