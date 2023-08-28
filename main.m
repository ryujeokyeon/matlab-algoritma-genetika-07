clear
clc

target = 'ryujeokyeon';
besar_populasi = 10;
laju_mutasi = 0.2;
% laju mutasi berpengaruh terhadap yang termutasi

%LOOPING
populasi = create_population(target,besar_populasi);
isLooping = true;

while isLooping
    
    % SELECTION (seleksi individu terbaik) 
    [parent1,parent2] = selection(populasi);

    % CROSSOVER
    [child1,child2] = crossover(parent1,parent2);

    % MUTASI
    mutant1 = mutation(child1,laju_mutasi);
    mutant2 = mutation(child2,laju_mutasi);

    % hitung fitness mutant
    mutant1.fitness = calculate_fitness(mutant1.gen,target);
    mutant2.fitness = calculate_fitness(mutant2.gen,target);

    % REGENERASI
    % calon anggota
    children = [mutant1, mutant2];
    populasi = regeneration(children, populasi);
    
% selection -> crossover -> mutasi -> regenerasi -> sudah atau belum? (TERMINASI)
% yes => SELESAI, no => ULANG LAGI/LOOPING
    
    [isLooping,solusi] = termination(populasi)
end