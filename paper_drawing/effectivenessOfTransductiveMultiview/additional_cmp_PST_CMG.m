% Comparison alternative label propagation:
% comparing Zhou's work
% 
% subplot(221)
AwAeachcomp=[44.7, 44.0, 42.2, 0; 45.7, 46.2, 43.6,49.0];
bar(AwAeachcomp);
axis([0,3,40,50]);
w{1} = 'Before T-embed'; w{2} ='After T-embed';
legend('Zhou','Robrbach on V','Robrbach on A','Our multi-view randomwalk');

h=my_xticklabels(gca,[1:2],w);
title('Comparing Alternative-LP on AwA');
xlabel('Different Spaces')
ylabel('Accuracy (%)');
nice_plot;


% 
% AwAeachcomp=[42.7, 43.2, 43.4, 0; 43.8, 44.0, 44.5, 50.4];
% bar(AwAeachcomp);
% axis([0,3,40,50]);
% w{1} = 'Before T-embed'; w{2} ='After T-embed';
 legend('C-MG','PST on V','PST on A','TMV-HLP');

% h=my_xticklabels(gca,[1:2],w);
% title('Comparing Alternative-LP on USAA');
% xlabel('Different Spaces')
% ylabel('Accuracy (%)');
%nice_plot;