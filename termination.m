function [isLooping,solusi] = termination(populasi)

    [the_best_solution,~] = selection(populasi);
    %clc
    %the_best_solution.gen
    %the_best_solution.fitness

    if the_best_solution.fitness == 100
        isLooping = false;
        disp('ketemu jawabannya nih');
    else
        isLooping = true;
    end
    
    solusi = the_best_solution;
end