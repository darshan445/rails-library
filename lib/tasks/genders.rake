namespace :genders do
  desc "TODO"
  task seed_genders: :environment do
    authors=Author.where(gender: nil)
    authors.each do |author|
      puts "#{author.id}"
      author.update_attributes(gender: 'female')
    end
    p "---------#{authors.count} authors updated---------"
  end
end
