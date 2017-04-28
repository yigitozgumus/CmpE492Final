categories = {'american_gothic_parody',...
                'arnolfinis_wedding_parody',...
                'birth_of_venus_parody',...
                'death_of_marat_parody',...
                'girl_with_a_pearl_earring_parody',...
                'las_meninas_parody',...
                'last_supper_parody',...
                'melting_watches_the_persistence_of_memory_parody',...
                'mona_lisa_parody',...
                'munch_scream_parody',...
                'seurat_sundey_afternoon_on_la_grande_jatte_parody'};

imds = imageDatastore(fullfile('/Users/yigitozgumus/Desktop/Cmpe492/CmpE492Final/Cmpe 492-Matlab/Classifier-mark1/data',categories), 'LabelSource', 'foldernames');
tbl = countEachLabel(imds);
minSetCount = min(tbl{:,2}); % determine the smallest amount of images in a category
% Use splitEachLabel method to trim the set.
imds = splitEachLabel(imds, minSetCount, 'randomize');

% Notice that each set now has exactly the same number of images.
countEachLabel(imds)

[trainingSet, validationSet] = splitEachLabel(imds, 0.3, 'randomize');

bag = bagOfFeatures(trainingSet);