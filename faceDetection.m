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
                'seurat_sundey_afternoon_on_la_grande_jatte_parody',...
                'randomImages'};
            
imds = imageDatastore(fullfile('C:\Users\Cagla Aksoy\Desktop\Bitirme Projesi\Classifier-mark1\data',categories), 'LabelSource', 'foldernames');
idx = [1 4 7 10];

for i = 1:numel(idx)
    I = readimage(imds,idx(i));
    detectFaces(I);
end 

%imds.ReadFcn = @(filename)detectFaces(filename);

  