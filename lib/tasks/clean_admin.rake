desc '####################### Clean'
task clean_admin: :environment do
  puts 'Executing...'

  now = Time.now
  
  Project.where(:user_id => 1).all.each do |p|
 #   if p.session		 
 #     d = now - p.session.updated_at
 #     if d > 24 * 60 * 60 * 2
        puts "Deleting #{p.key}..."
        ProjectsController.new.delete_project(p)
 #     else
 #	puts "Keep project #{p.key}"
 #     end
 #   else
 #     puts "No session for #{p.key} => delete"
 #     ProjectsController.new.delete_project(p)  	   
 #   end
   
  end
  
end
