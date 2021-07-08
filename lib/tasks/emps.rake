namespace :emps do
  desc "Employees list"
  task seed_emps: :environment do
    Emp.create([{
        name: 'darshan'
    },
    {
      name: 'san'
    }
    ])

    p "#{Emp.count} movies created"
  end
end
