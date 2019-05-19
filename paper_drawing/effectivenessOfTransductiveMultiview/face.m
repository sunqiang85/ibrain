% addpath('/homes/yf300/Researchfile/Lib/MATLAB_util/')

% % % % %% AwA results comparison
% % % % awazsl=[0,38;34,0; 36.4,0;39,43;];
% % % % bar(awazsl);
% % % % axis([0,5,25,46]);
% % % % set(gca,'xtick',[1:4]);
% % % % w{1}='V'; w{2} ='W'; w{3}='V+W'; w{4}= 'V+W+A';
% % % % legend('Query by word prototype','Query by attribute prototype')
% % % % set(gca,'xticklabel',w);
% % % % xlabel('Different Spaces Combination')
% % % % ylabel('Accuracy (%)');
% % % % title('AwA ZSL Comparison')
% % % % nice_plot;

%% AwA results comparison: (W,A)-->Query(V,W,A) spaces:

% awaeachview=[38,34,31.8,36.4,37.4,37,38.3,41.6,43.1,40.5];
% bar(awaeachview);
% axis([0,11,25,46]);
% set(gca,'xtick',[1:10]);
% w{1}='A'; w{2} ='W'; w{3}='V+W(W->V)'; w{4} ='V+W(W->W)'; w{5} ='V+W+A(W->V)';
% w{6}='V+W+A (W->A)'; w{7}='V+W+A(W->W)'; w{8} ='V+W+A(A->V)';w{9} ='V+W+A(A->W)';
% w{10}= 'V+W+A(A->A)';
% %legend('Query by word prototype','Query by attribute prototype')
% set(gca,'xticklabel',w);
% xlabel('Different Spaces Combination')
% ylabel('Accuracy (%)');
% title('AwA ZSL Query->CCA spaces comparison')
% nice_plot;



% awaeachview=[33,38.3,35,42];
% 
% bar(awaeachview);
% axis([0,5,25,45]);
% set(gca,'xtick',[1:4]);
% w{1}='W'; w{2} ='A'; w{3}='V+W'; w{4}='V+W+A';
% %legend('W->V','W->W','W->A','A->V','A->W','A->A');
% %legend('Query by word prototype','Query by attribute prototype')
% set(gca,'xticklabel',w);
% xlabel('Different Methods')
% ylabel('Accuracy (%)');
% title('AwA ZSL Comparison')
% nice_plot;

awaeachview=[47508;49156;  74986; 48534];

bar(awaeachview);
axis([0,5,0,80000]);
%set(gca,'xtick',[1:3]);
w{1}='left'; w{2}='right';  w{3}='front'; w{4}='birdview'; 
legend('images');
%legend('W->V','W->W','W->A','A->V','A->W','A->A');
%legend('Query by word prototype','Query by attribute prototype')
%set(gca,'xticklabel',w);
h=my_xticklabels(gca,[1:4],w);

xlabel('Pose')
ylabel('Number of images');
%title('AwA ZSL Comparison on Spaces')
nice_plot;

