namespace :first do
  desc "changing the titles"
  task titlechange: :environment do
    titles = Article.where(title: ['abcd'])
    titles.each do |cng|
      cng.update!(title: 'done!')
    end
  end
  printf("\n")
  puts "Done"
end
