function[label] = get_label(s, t)
    if(s == 1)
        load('data_stream_1.mat');
        label = labels1(t, :);
    else if(s == 2)
        load('data_stream_2.mat');
        label = labels2(t, :);
        else
            fprintf('Error : Incorrect value for the first argument s\n');
        end
    end
end