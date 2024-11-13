namespace :backfill do
    desc "Backfill category descriptions for existing categories"
    task :category_descriptions => :environment do
      # Loop through each category
      Category.find_each do |category|
        # Check if the description is blank or missing
        if category.description.blank?
          # Update the description with a default value (or any logic you need)
          category.update(description: "This is a default description for the category.")
          puts "Backfilled description for category #{category.name}"
        end
      end
    end
  end