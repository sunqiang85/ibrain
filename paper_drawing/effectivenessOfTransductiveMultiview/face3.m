subplot(211)

% AwAeachcomp=[43.2, 42.2, 42.7, 0; 44.0, 45.3, 47.7, 49.0];
AwAeachcomp=[5642;3721;2725;3228;4388;3842;2572;4546;3728;4156;3343;4649;3537;3452;4099;3185;3360;4480;3860;3867;3485;4430;3764;4402;3875;3298;3764;4029;4317;3426;3407;3451;3693;2855;3892;3899;8547;3831;5225;4800;4008;4655;5014;5242;3375;5324;4497;5977;2831;4073;4527;4073;4264;3104;
        ];

bar(AwAeachcomp);
axis([0.5,54.5,0,10000]);
%w{1} = 'Before T-embed'; w{2} ='After T-embed';
%legend('Zhou','Robrbach on V','Robrbach on A','Our multi-view randomwalk');


w{1}='Acceptance';w{2}='Admiration';w{3}='Aggressiveness';w{4}='Angry';w{5}='Annoyance';w{6}='Anticipation';w{7}='Apprehension';w{8}='Awe';w{9}='Boastfulness';w{10}='Boredom';w{11}='Bravery';w{12}='Calm';w{13}='Conflict';w{14}='Contempt';w{15}='Cowardice';w{16}='Deceptiveness';w{17}='Defiance';w{18}='Depression';w{19}='Desire';w{20}='Disapproval';w{21}='Disgust';w{22}='Distraction';w{23}='Embarrassed';w{24}='Envy';w{25}='Fatigue';w{26}='Fear';w{27}='Gratitude';w{28}='Grievance';w{29}='Harmony';w{30}='Hate';w{31}='Insincerity';w{32}='Insult';w{33}='Interest';w{34}='Joy';w{35}='Love';w{36}='Neglect';w{37}='Neutral';w{38}='Optimism';w{39}='Passiveness';w{40}='Pessimism';w{41}='Pride';w{42}='Puzzlement';w{43}='Remorse';w{44}='Sadness';w{45}='Serenity';w{46}='Shame';w{47}='Sincerity';w{48}='Submission';w{49}='Surprise';w{50}='Suspicion';w{51}='Tension';w{52}='Trust';w{53}='Uneasiness';w{54}='Vitality';
set(gca,'xticklabel',w);
%h=my_xticklabels(gca,[1:54],w);
a=get(gca,'XTickLabel');
b=get(gca,'XTick');
b=1:54
c=get(gca,'YTick');
%rotateticklabel(h,90);
set(gca,'XTickLabel',[]);
th=text(b,repmat(c(1)-1.1*(c(2)-c(1)),length(b),1),a,'HorizontalAlignment','right','rotation',90);
%title('Comparing Alternative-LP on AwA');
% xlabel('Different Spaces')
ylabel('Number of Images');
nice_plot;