function avgScore = simpleBlackjack(limit, trials)
%
% This function simulates playing many hands of
% Simple Blackjack where the player continually
% hits up to a given limit. Final score for each
% hand is computed, and the average score over all
% hands is returned.
%
% INPUT limit – The player always hits if their
% hand value is less than limit
% INPUT trials – The number of hands to simulate
%
% OUTPUT avgScore – The average final score of
% all hands.

&&
%%
function avgScore = simpleBlackjack(limit, trials)
    % Initialize total score to accumulate the scores of all hands
    totalScore = 0;

    % Loop over the number of trials
    for t = 1:trials
        handValue = 0;
        
        % Simulate drawing cards until the hand value reaches the limit
        while handValue < limit
            card = randi([1, 11]); % Randomly draw a card between 1 and 11
            handValue = handValue + card;
        end
        
        % Add the hand value to the total score
        totalScore = totalScore + handValue;
    end

    % Calculate the average score
    avgScore = totalScore / trials;
end

%%input: avgScore = simpleBlackjack(limit ,trials )
