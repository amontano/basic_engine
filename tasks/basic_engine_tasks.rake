namespace :basic_engine do
   desc "Syncronize extra files for basic engine."
   task :sync do
     system "rsync -ruv --exclude '.*' vendor/plugins/basic_engine/public ."
   end
   
   desc "Installs dependent plugins for basic engine."
   task :install_dependencies do
     # SVN externals
     svn_option = File.exists?(File.join(RAILS_ROOT, '.svn')) ? '-x' : '-e'
     ['http://repo.pragprog.com/svn/Public/plugins/annotate_models',
       'https://ndlb.svn.sourceforge.net/svnroot/ndlb/portal/ror/plugins/authenticated_system/trunk',
       'http://ndlb.svn.sourceforge.net/svnroot/ndlb/portal/ror/plugins/complex_scripts/trunk',
       'http://dev.rubyonrails.org/svn/rails/plugins/in_place_editing'].each{ |plugin| system "script/plugin install #{svn_option} #{plugin}"}
     # git
     ['git://github.com/joshmh/globalize2.git',
       'git://github.com/rails/open_id_authentication.git',
       'git://github.com/technoweenie/restful-authentication.git'].each{ |plugin| system "script/plugin install #{plugin}"}
   end

   desc "Copies necessary migrations and public files of dependencies."   
   task :deploy_dependencies do
     ['authenticated_system', 'basic_engine', 'complex_scripts'].each{|plugin|  system "rake #{plugin}:sync" }
   end   
end