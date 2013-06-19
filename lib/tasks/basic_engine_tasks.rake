namespace :basic_engine do
   desc "Syncronize extra files for basic engine."
   task :sync do
     system "rsync -ruv --exclude '.*' vendor/plugins/basic_engine/public ."
   end
   
   desc "Installs dependent plugins for basic engine."
   task :install_dependencies do
     if File.exists?(Rails.root.join('.svn'))
       svn_option = '-x' # for external use '-e'
       ['http://repo.pragprog.com/svn/Public/plugins/annotate_models',
        'https://ndlb.svn.sourceforge.net/svnroot/ndlb/portal/ror/plugins/authenticated_system/trunk',
        'http://ndlb.svn.sourceforge.net/svnroot/ndlb/portal/ror/plugins/complex_scripts/trunk',
        'http://dev.rubyonrails.org/svn/rails/plugins/in_place_editing'].each{ |plugin| system "script/plugin install #{svn_option} #{plugin}"}
       # git
       ['git://github.com/joshmh/globalize2.git',
        'git://github.com/rails/open_id_authentication.git',
        'git://github.com/technoweenie/restful-authentication.git'].each{ |plugin| system "script/plugin install #{plugin}"}
     else
       git_installers = { 'annotate_models' => ['git://github.com/amontano/annotate_models.git', 'rails3_0'], 'authenticated_system' => ['git://github.com/thl/authenticated_system.git', 'rails3_0'], 'complex_scripts' => ['git://github.com/thl/complex_scripts.git', 'rails3_0'], 'restful-authentication'  => ['git://github.com/Satish/restful-authentication.git', nil] }
       if File.exists?(File.join(Rails.root.join('.git')))
         git_installers.each do |path, url|
           system "git submodule add #{url[0]} vendor/plugins/#{path}"
           system "cd vendor/plugins/#{path}; git checkout #{url[1]}; cd ../../.." if !url[1].nil?
         end
       else
         git_installers.each{ |path, url| system "script/plugin install #{url}" }
       end
     end
   end

   desc "Copies necessary migrations and public files of dependencies."   
   task :deploy_dependencies do
     ['authenticated_system', 'basic_engine', 'complex_scripts'].each{|plugin|  system "rake #{plugin}:sync" }
   end   
end