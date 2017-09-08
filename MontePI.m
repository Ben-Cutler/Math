%% Monte Carlo Method of finding Pi

n=1e6;
hits = 0;
for i=1:1:n
    if ( sqrt(rand^2 + rand^2)<=1)
        hits = hits+ 1;
    end
    
end
ratio = (hits/n) *4