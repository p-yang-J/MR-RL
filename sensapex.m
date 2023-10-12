%%
%%���˶�ѧ��֤
clc
clear

%����������ģ��
% theta  d     a     alpha  offset
%L1=Link([0     100     0     -pi/2     0 ],'standard');
%L2=Link([0      0     100     0   0 ],'standard'); %���˵�D-H����
%L1 = Link('d',100 , 'a',0 ,'alpha',-pi/2);
%L2 = Link('d',100 , 'a',100 ,'alpha',0 );
L1 = Link('theta', -pi/2 , 'a',0,'alpha',-pi/2,'offset',0,'qlim',[0,100],'modified');
L2 = Link('theta',pi/2, 'a',0 ,'alpha',-pi/2,'offset',0,'qlim',[0,100],'modified');
L3 = Link('theta', pi/2, 'a',0 ,'alpha',pi/2,'offset',0,'qlim',[0,100],'modified');
L4 = Link('d',0,'a',0,'alpha',pi/2,'offset',pi/2,'qlim',[-pi/2,pi/2],'modified'); 
L5 = Link('theta', pi/2, 'a',0 ,'alpha',pi/2,'offset',100,'qlim',[0,100],'modified');

robot = SerialLink([L1 L2 L3 L4 L5],'name','sensapex');   %�������˻�����

robot.teach()
% n=1
% while true
%     a=textread('shujux.txt')
%     d = a(n,:)
%     robot.plot(d)
%     n = n+1
% end

