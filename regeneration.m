function new_populasi = regeneration(children, populasi)

    % 1. ambil fitness
    fitness = zeros(1,length(populasi));
    for i=1:length(fitness)
        fitness(i) = populasi(i).fitness;
    end
    % populasi.gen

    % 2. remove berdasarkan fitness paling minimum
    for i=1:length(children)
        [~,index] = min(fitness);
        populasi(index) = [];
        fitness(index) = [];
    end

    % 3. tambah anggota (add member)
    for i=1:length(children)
        n = length(populasi) +1;
        populasi(n) = children(i);
    end
    % disp('=====populasi baru=====')
    % populasi.gen

    new_populasi = populasi;

end