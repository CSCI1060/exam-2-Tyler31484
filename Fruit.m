function [] = fruit(N)
    for i = 1:N
        if mod(i, 2) == 0 && mod(i, 5) == 0
            disp('applebanana');
        elseif mod(i, 2) == 0
            disp('apple');
        elseif mod(i, 5) == 0
            disp('banana');
        else
            disp(i);
        end
    end
end
&&
input : fruit(n)
