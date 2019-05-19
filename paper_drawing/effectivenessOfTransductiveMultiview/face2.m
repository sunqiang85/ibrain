subplot(121)

numofids=[81;87;  119; 83];

bar(numofids);
axis([0,5,0,150]);
%set(gca,'xtick',[1:3]);
w{1}='half left'; w{2}='half right';  w{3}='front'; w{4}='bird view'; 
%legend('images');
%legend('W->V','W->W','W->A','A->V','A->W','A->A');
%legend('Query by word prototype','Query by attribute prototype')
%set(gca,'xticklabel',w);
h=my_xticklabels(gca,[1:4],w);

xlabel('Pose')
ylabel('Number of Subject ID');
%title('AwA ZSL Comparison on Spaces')
nice_plot;


subplot(122)

awaeachview=[47508;49156;  74986; 48534];

bar(awaeachview);
axis([0,5,0,80000]);
%set(gca,'xtick',[1:3]);
w{1}='half left'; w{2}='half right';  w{3}='front'; w{4}='bird view'; 
%w{1}=''; w{2}='';  w{3}=''; w{4}=''; 
%legend('images');
%legend('W->V','W->W','W->A','A->V','A->W','A->A');
%legend('Query by word prototype','Query by attribute prototype')
%set(gca,'xticklabel',w);
h=my_xticklabels(gca,[1:4],w);

xlabel('Pose')
ylabel('Number of images');
%title('AwA ZSL Comparison on Spaces')
nice_plot;


