%% Monte Carlo Method

U = zeros(25,25);
U(:,1) = 1;
precision = 100;


for x =2:1:length(U(:,1)) -1
    for y = 2:1:length(U(1,:)) -1
        reward = 0;
        for walk = 1:1:precision
            i = x; % x position
            j = y; % Y position

            while true
                monte = 4*rand;
                if monte >=3
                    i = i+1;
                elseif monte >=2
                    i = i-1;
                elseif monte >=1
                    j = j+1;
                elseif monte >=0
                    j = j-1;
                end
                if i==1 || i == length(U(:,1)) || j== 1 || j ==length(U(1,:))
                    reward = reward + U(i,j);
                    break
                end
            end

        end
         U(x,y) = reward/precision;
    end
end
X = 1:1:length(U(1,:));
Y = 1:1:length(U(:,1));
surf(X,Y,U)