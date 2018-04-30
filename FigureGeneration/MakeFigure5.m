%Makes figure 5

varsbefore = who;

figure('units','pixels','outerposition',[0 0 2560 1440])
n = 1;
for x = 1:15
    if x == 11
        x = 14;
    elseif x == 14
        x = 11;
    end
subplot(3,5,n)
    
W = Networks_mwCMC(x);
    
W1 = NullNetworks_mwCMC{x,1};
W2 = NullNetworks_mwCMC{x,2};

Q = NetworksQ(x);

Q1 = NullsQ{x,1};
Q2 = NullsQ{x,2};

l = lines(3);
hold on 

scatter(Q1,W1,36,l(2,:),'filled')
scatter(Q2,W2,36,l(3,:),'filled')
scatter(Q,W,36,l(1,:),'filled')
set(gca,'FontSize',20);
xlabel('Modularity Q','Fontsize',20)
ylabel('Mean Network CMC','Fontsize',20)
title(net_abbrevname{x},'Fontsize',24)
       if x == 15
           legend('show',{'Unconstrained surrogate','Constrained surrogate','Empirical'},'Position', [0.3717    0.0140    0.3098    0.0334],'Orientation','horizontal','Fontsize',20) 
       end  
       n = n + 1;
end

% Removes variables created by this script
varsafter = who; 
varsnew = setdiff(varsafter, varsbefore); 
clear(varsnew{:})