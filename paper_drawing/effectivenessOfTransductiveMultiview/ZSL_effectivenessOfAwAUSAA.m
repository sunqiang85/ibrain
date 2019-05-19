%ZSL_result comparison: to show the Effectiveness of Transductive Multi-view Embedding

% AwA dataset:

awaeachview=[42.9,44.5,38.4, 40.5, 45.2, 49.0];

subplot(231)

bar(awaeachview);
axis([0,7,30,50]);
%set(gca,'xtick',[1:3]);

w{1}='V';  w{2}='\Gamma(X+V)'; w{3}='A'; w{4}='\Gamma(X+A)';  w{5}='[V,A]';w{6}='\Gamma(X+V+A)';
% legend('with self-training','without self-training');
%legend('W->V','W->W','W->A','A->V','A->W','A->A');
%legend('Query by word prototype','Query by attribute prototype')
%set(gca,'xticklabel',w);
h=my_xticklabels(gca,[1:6],w);
title('ZSL of AwA (hand-crafted features)');

% xlabel('Different Spaces')
ylabel('Accuracy (%)');


subplot(232)

% AwA dataset:
awaeachview=[42.9,38.4, 65.9,55.2, 46.4,41.2, 81.5, 74.9];

bar(awaeachview);
axis([0,9,30,85]);
%set(gca,'xtick',[1:3]);

w{1}='V_{H}'; 
w{2}='A_{H}';
w{3}='V_{O}';
w{4}='A_{O}';
w{5}='V_{D}';
w{6}='A_{D}';
w{7}='\Gamma(X+V+A)_{O,D}';
w{8}='\Gamma(X+V+A)_{H,O,D}';

h=my_xticklabels(gca,[1:8],w);
title('ZSL of AwA(hand-crafted and deep features)');

ylabel('Accuracy (%)');

% nice_plot;

subplot(233);

usaaeachview=[36.2, 43, 35.5, 42.3, 46.2, 50.4];
bar(usaaeachview);
axis([0,7,30,51]);
w{1}='V';  w{2}='\Gamma(X+V)'; w{3}='A'; w{4}='\Gamma(X+A)';  w{5}='[V,A]';w{6}='\Gamma(X+V+A)';

h=my_xticklabels(gca,[1:6],w);
title('Zero-shot learning of USAA');
% xlabel('Different Spaces')
ylabel('Accuracy (%)');

% nice_plot;