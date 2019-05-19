% Comparison alternative label propagation:
% comparing Zhou's work

% subplot(221)
% AwAeachcomp=[41.7, 42.2, 42.2, 0, 0; 42.8, 43.0, 43.0,47.7, 49.0];
% bar(AwAeachcomp);
% axis([0.5,2.5,40,50]);
% w{1} = 'Before T-embed'; w{2} ='After T-embed';
% %legend('Zhou','Robrbach on V','Robrbach on A','Our multi-view randomwalk');
% 
% h=my_xticklabels(gca,[1:2],w);
% title('Comparing Alternative-LP on AwA');
% % xlabel('Different Spaces')
% ylabel('Accuracy (%)');
% nice_plot;
% 
% 
% subplot(222)
% AwAeachcomp=[42.7, 43.2, 43.4, 0,0; 43.8, 44.0, 44.5,48.2,50.4];
% bar(AwAeachcomp);
% axis([0.5,2.5,40,51]);
% w{1} = 'Before T-embed'; w{2} ='After T-embed';
% legend('C-MG','PST on V','PST on A','TMV-BLP','Hypergraph');
% 
% h=my_xticklabels(gca,[1:2],w);
% title('Comparing Alternative-LP on USAA');
% % xlabel('Different Spaces')
% ylabel('Accuracy (%)');
% nice_plot;


%%-----------------------------------------------------------------------

%%-----------------------------------------------------------------------
%  subplot(221)
% % AwAeachcomp=[42.7, 43.2, 42.2, 0, 0, 0; 42.8, 44.0, 43.0, 45.3, 47.7, 49.0];
% 
% AwAeachcomp=[43.2, 42.2, 42.7, 0; 44.0, 45.3, 47.7, 49.0];
% 
% bar(AwAeachcomp);
% axis([0.5,2.5,40,50]);
% w{1} = 'Before T-embed'; w{2} ='After T-embed';
% %legend('Zhou','Robrbach on V','Robrbach on A','Our multi-view randomwalk');
% 
% h=my_xticklabels(gca,[1:2],w);
% title('Comparing Alternative-LP on AwA');
% % xlabel('Different Spaces')
% ylabel('Accuracy (%)');
% nice_plot;
% 
% 
% subplot(222)
% % AwAeachcomp=[43.7, 44.2, 43.4, 0,0, 0; 44.8, 45.0, 44.5, 46.2, 48.2,50.4];
% AwAeachcomp=[44.2, 43.4, 43.7,  0;  45.0,  46.2, 48.2,50.4];
% 
% bar(AwAeachcomp);
% axis([0.5,2.5,40,51]);
% w{1} = 'Before T-embed'; w{2} ='After T-embed';
% % legend('C-MG','PST on V','PST on A','Hyper-view','2-graph','TMV-HLP');
% legend('PST','Hyper-view','C-MG','TMV-HLP');
% 
% 
% h=my_xticklabels(gca,[1:2],w);
% title('Comparing Alternative-LP on USAA');
% % xlabel('Different Spaces')
% ylabel('Accuracy (%)');
% nice_plot;

%%
subplot(221)

% AwAeachcomp=[43.2, 42.2, 42.7, 0; 44.0, 45.3, 47.7, 49.0];
AwAeachcomp=[43.2, 45.6; ...  %homo-hypergraph
        43.9, 47.1; ...  % 2-graph
        38.3, 47.9; ...  % hete-hypergraph
        44.0, 47.2; ...  % homo+2-graph
        42.1, 49.0; ... % hete+2-graph
        ];

bar(AwAeachcomp);
axis([0.5,5.5,35,50]);
% w{1} = 'Before T-embed'; w{2} ='After T-embed';
%legend('Zhou','Robrbach on V','Robrbach on A','Our multi-view randomwalk');


 w{1}='Homo-hyper'; w{2}='C-MG'; w{3}='Hete-hyper';  w{4}='Homo-hyper+C-MG';w{5}='Hete-hyper+C-MG';
set(gca,'xticklabel',w);
rotateticklabel(gca,30);
title('Comparing Alternative-LP on AwA');
% xlabel('Different Spaces')
ylabel('Accuracy (%)');
nice_plot;
subplot(222)
% AwAeachcomp=[43.7, 44.2, 43.4, 0,0, 0; 44.8, 45.0, 44.5, 46.2, 48.2,50.4];
% AwAeachcomp=[44.2, 43.4, 43.7,  0;  45.0,  46.2, 48.2,50.4];
AwAeachcomp=[  37.3, 44.5; ... %homo-hypergraph
            40.2, 47.8; ... % 2-graph
            31.2, 48.2; ... % hete-hypergraph
            41.0, 47.8; ... % 2-graph+homo
            37.2, 50.4; ... % hete+2-graph
            ];
bar(AwAeachcomp);
axis([0.5,5.5,30,51]);
 w{1}='Homo-hyper'; w{2}='C-MG'; w{3}='Hete-hyper';  w{4}='Homo-hyper+C-MG';w{5}='Hete-hyper+C-MG';

% legend('C-MG','PST on V','PST on A','Hyper-view','2-graph','TMV-HLP');
legend('Before T-embed','After T-embed');


set(gca,'xticklabel',w);
rotateticklabel(gca,30);

title('Comparing Alternative-LP on USAA');
% xlabel('Different Spaces')
ylabel('Accuracy (%)');
 nice_plot;