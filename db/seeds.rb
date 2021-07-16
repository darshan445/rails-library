created tution recoreds using seed 
Tution.find_or_create_by(name: 'n1', address: 'address1')
Tution.find_or_create_by(name: 'n5', address: 'address5')
Tution.find_or_create_by(name: 'n2', address: 'address2')
Tution.find_or_create_by(name: 'n1', address: 'address1')
Tution.find_or_create_by(name: 'n6', address: 'address6')

Subject.create(name: 'English', connected_by: Tution.first)

Subject.find_or_create_by(name: 'Science', connected_by: Tution.find(15))
Subject.find_or_create_by(name: 'mat', connected_by: Tution.find(15))


Subject.find_or_create_by(name: 'ss', connected_by: Tution.find(16))
Subject.find_or_create_by(name: 'physics', connected_by: Tution.find(16))


Subject.find_or_create_by(name: 'gujarati', connected_by: Tution.find(17))
Subject.find_or_create_by(name: 'sanskrit', connected_by: Tution.find(17))
