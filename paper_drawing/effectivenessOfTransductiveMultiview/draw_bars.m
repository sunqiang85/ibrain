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

awaeachview=[33,28;38,36;  36, 33; 42,38];

bar(awaeachview);
axis([0,5,25,45]);
%set(gca,'xtick',[1:3]);
w{1}='V'; w{2}='A';  w{3}='\Gamma(X+V)'; w{4}='\Gamma(X+V+A)'; 
legend('with self-training','without self-training');
%legend('W->V','W->W','W->A','A->V','A->W','A->A');
%legend('Query by word prototype','Query by attribute prototype')
%set(gca,'xticklabel',w);
h=my_xticklabels(gca,[1:4],w);

xlabel('Different Spaces')
ylabel('Accuracy (%)');
%title('AwA ZSL Comparison on Spaces')
nice_plot;

% 

awaeachview=[37.4,38.3,37,41.6,43,40.5;0,0,0,0,0,0];
bar(awaeachview);
axis([0.5,1.5,25,46]);
%set(gca,'xtick',[1]);  \mathrm{Proj_{\Gamma}}\boldsymbol{\Phi}_{\boldsymbol{v}_{z}}{}^{(i)}
% w{1}='V+W+A';    \mathbf{v}_{z}             {\boldsymbol{v}_{z}}^{(x)}
 h=legend('$\mathbf{v}_{z},\,\mathrm{Proj_{\Gamma}}{\Phi}_{\mathbf{v}_{z}}{}^{x}$', ...
'$\mathbf{v}_{z},\,\mathrm{Proj_{\Gamma}}{\Phi}_{\mathbf{v}_{z}}{}^{v}$', ...
'$\mathbf{v}_{z},\,\mathrm{Proj_{\Gamma}}{\Phi}_{\mathbf{v}_{z}}{}^{a}$', ...
'$\mathbf{a}_{z},\,\mathrm{Proj_{\Gamma}}{\Phi}_{\mathbf{a}_{z}}{}^{x}$', ...
'$\mathbf{a}_{z},\,\mathrm{Proj_{\Gamma}}{\Phi}_{\mathbf{a}_{z}}{}^{v}$',...
'$\mathbf{a}_{z},\,\mathrm{Proj_{\Gamma}}{\Phi}_{\mathbf{a}_{z}}{}^{a}$'  );
  set(h,'Interpreter','latex')
% %legend('Query by word prototype','Query by attribute prototype')
set(gca,'xtick',[1]);
set(gca,'xticklabel',{});
xlabel('\Gamma(X+V+A)')
ylabel('Accuracy (%)');
title('AwA ZSL of each(prototype,Projections)')
nice_plot([],[],16);


%% AwA directly comparison vs. word similarity, CCA and ect.
% awazsl=[34;36.4;43;];
% bar(awazsl);
% axis([0,5,25,46]);
% set(gca,'xtick',[1:4]);
% w{1}='W'; w{2} ='DirectSim'; w{3}= 'V+W+A';
% set(gca,'xticklabel',w);
% xlabel('Different Spaces Combination')
% ylabel('Accuracy (%)');
% title('AwA ZSL Comparison')

%% USAA ZSL majority voting vs. PAMI results:
clear
usaares= [45.2,  33.3 , 41.9];

bar(usaares);
axis([0,4,25,50]);
%set(gca,'xtick',[1:5]);
w{1} ='\Gamma(X+V+A)'; w{2} ='[V,A]'; w{3}='Fu et al';
%legend('W->V','W->W','W->A','A->V','A->W','A->A');
%h=set(gca,'xticklabel',w);
h=my_xticklabels(gca,[1:3],w);
xlabel('Different Methods')
ylabel('Accuracy (%)');
title('USAA ZSL comparison on Spaces')
nice_plot


%% USAA ZSL majority voting vs. PAMI results:
usaares= [33,27;40,33.6; 34,28; 46.2,43];

bar(usaares);
axis([0,5,20,50]);
%set(gca,'xtick',[1:5]);
w{1} ='V'; w{2} ='A'; w{3}='\Gamma(X+V)'; w{4}='\Gamma(X+V+A)'; 
legend('with self-traing', 'without self-traing');
%legend('W->V','W->W','W->A','A->V','A->W','A->A');
%h=set(gca,'xticklabel',w);
h=my_xticklabels(gca,[1:4],w);
xlabel('Different Spaces')
ylabel('Accuracy (%)');
title('USAA ZSL comparison on Spaces')
nice_plot

%% USAA zero-shot learning:
for i=1 
% awazsl=[35.9;42;43.5;];
% bar(awazsl);
% axis([0,4,25,46]);
% set(gca,'xtick',[1:3]);
% w{1}='W';  w{2}='V+W'; w{3}= 'V+W+A';
% set(gca,'xticklabel',w);
% xlabel('Different Spaces Combination')
% ylabel('Accuracy (%)');
% title('USAA ZSL Comparison')
% 
% nice_plot;
end



awaeachview=[28.4,32.5,34,47.9,43.2,50;0,0,0,0,0,0];

bar(awaeachview);
axis([0.5,1.5,20,52]);
%set(gca,'xtick',[1:2:8]);
%w{1}='W'; w{2} ='A'; w{3}='V+W'; w{4}='V+W+A';
%legend('W->V','W->W','W->A','A->V','A->W','A->A');
h=legend('$\mathbf{v}_{z},\,\mathrm{Proj_{\Gamma}}{\Phi}_{\mathbf{v}_{z}}{}^{x}$', ...
'$\mathbf{v}_{z},\,\mathrm{Proj_{\Gamma}}{\Phi}_{\mathbf{v}_{z}}{}^{v}$', ...
'$\mathbf{v}_{z},\,\mathrm{Proj_{\Gamma}}{\Phi}_{\mathbf{v}_{z}}{}^{a}$', ...
'$\mathbf{a}_{z},\,\mathrm{Proj_{\Gamma}}{\Phi}_{\mathbf{a}_{z}}{}^{x}$', ...
'$\mathbf{a}_{z},\,\mathrm{Proj_{\Gamma}}{\Phi}_{\mathbf{a}_{z}}{}^{v}$',...
'$\mathbf{a}_{z},\,\mathrm{Proj_{\Gamma}}{\Phi}_{\mathbf{a}_{z}}{}^{a}$'  );
  set(h,'Interpreter','latex')

%legend('Query by word prototype','Query by attribute prototype')
%set(gca,'xticklabel',w);
set(gca,'xtick',[1]);
set(gca,'xticklabel',{});
xlabel('\Gamma(V+W+A)')
ylabel('Accuracy (%)');
title('USAA ZSL of each (prototype, projections)')
nice_plot([],[],16);


%% AwA vs. USAA dataset comparison:

awauass=[43.5, 31.4;43, 12];

bar(awauass);
axis([0,3,10,46]);
legend('Cosine distance','Euclidean distance');
set(gca,'xtick',[1:2]);
w{1}='USAA';  w{2}='AwA'; 
set(gca,'xticklabel',w);
xlabel('Dataset')
ylabel('Accuracy (%)');
title('Cosine Vs. Euclidean on CCA')
nice_plot;




%% USAA supervised learning:
uass=[66,63,65.8, 69.4, 69.7];
bar(uass);
axis([0,6,55,75]);
%legend('Cosine distance','Euclidean distance');
%set(gca,'xtick',[1:5]);
w{1}='X'; w{2} ='V';w{3} ='A'; w{4}='\Gamma(X+V)'; w{5}= '\Gamma(X+V+A)';% w{6} = 'Fu';
%set(gca,'xticklabel',w);
h=my_xticklabels(gca,[1:5],w);
xlabel('Different Spaces/methods comparison')
ylabel('Accuracy (%)');
title('Supervised Learning on USAA')

nice_plot;

%% supervised learning of cos vs Euc. on USAA

% awauass=[69.4,42.3; 69.7,45; 0,68;0,65.6];
% 
% bar(awauass);
% axis([0.5,5,40,72]);
% legend('Cosine distance','Euclidean distance');
% %set(gca,'xtick',[1:4]);
% w{1}='\Gamma(X+V)';  w{2}='\Gamma(X+V+A)'; w{3}='[V,W]'; w{4}='Fu et al';
% %set(gca,'xticklabel',w);
% h=my_xticklabels(gca,[1:4],w);
% xlabel('CCA spaces')
% ylabel('Accuracy (%)');
% title('Supervised Learning on USAA')
% 
% nice_plot;
awauass=[ 69.7; 68;65.6];

bar(awauass);
axis([0,4,60,72]);
%legend('Cosine distance','Euclidean distance');
%set(gca,'xtick',[1:4]);
 w{1}='\Gamma(X+V+A)'; w{2}='[X,V,A]'; w{3}='Fu et al';
%set(gca,'xticklabel',w);
h=my_xticklabels(gca,[1:3],w);
xlabel('CCA spaces')
ylabel('Accuracy (%)');
title('Supervised Learning on USAA')

nice_plot;



