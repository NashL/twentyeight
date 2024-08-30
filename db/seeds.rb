states = [
  { name: "Alabama", abbr: "AL", services_offered: true, minimum_age: 18 },
  { name: "Alaska", abbr: "AK", services_offered: true, minimum_age: 18 },
  { name: "Arizona", abbr: "AZ", services_offered: false, minimum_age: 21 },
  { name: "Arkansas", abbr: "AR", services_offered: true, minimum_age: 18 },
  { name: "California", abbr: "CA", services_offered: true, minimum_age: 18 },
  { name: "Colorado", abbr: "CO", services_offered: true, minimum_age: 18 },
  { name: "Connecticut", abbr: "CT", services_offered: false, minimum_age: 21 },
  { name: "Delaware", abbr: "DE", services_offered: true, minimum_age: 18 },
  { name: "Florida", abbr: "FL", services_offered: true, minimum_age: 18 },
  { name: "Georgia", abbr: "GA", services_offered: false, minimum_age: 21 },
  { name: "Hawaii", abbr: "HI", services_offered: true, minimum_age: 18 },
  { name: "Idaho", abbr: "ID", services_offered: true, minimum_age: 18 },
  { name: "Illinois", abbr: "IL", services_offered: false, minimum_age: 21 },
  { name: "Indiana", abbr: "IN", services_offered: true, minimum_age: 18 },
  { name: "Iowa", abbr: "IA", services_offered: true, minimum_age: 18 },
  { name: "Kansas", abbr: "KS", services_offered: true, minimum_age: 18 },
  { name: "Kentucky", abbr: "KY", services_offered: true, minimum_age: 18 },
  { name: "Louisiana", abbr: "LA", services_offered: false, minimum_age: 21 },
  { name: "Maine", abbr: "ME", services_offered: true, minimum_age: 18 },
  { name: "Maryland", abbr: "MD", services_offered: true, minimum_age: 18 },
]

State.create!(states)

products = [
  { name: "Birth Control", identifier: "BC001", quantity: 200, price: 29.99, instructions: "Take one pill daily at the same time." },
  { name: "Emergency Contraception", identifier: "EC001", quantity: 75, price: 39.99, instructions: "Take within 72 hours of unprotected intercourse." },
  { name: "STD Testing Kit", identifier: "STK001", quantity: 150, price: 49.99, instructions: "Follow the instructions in the kit. Return the sample for testing." },
  { name: "Pain Relief (OTC)", identifier: "OTC001", quantity: 300, price: 14.99, instructions: "Take 1-2 tablets every 4-6 hours as needed for pain." },
  { name: "Allergy Relief (OTC)", identifier: "OTC002", quantity: 250, price: 19.99, instructions: "Take one tablet daily to relieve symptoms." },
]
Product.create!(products)

patients = [
  { full_name: "Jane Smith", email: "jane.smith@example.com", date_of_birth: "1985-03-22", state: State.find_by(abbr: "CA") },
  { full_name: "John Doe", email: "john.doe@example.com", date_of_birth: "1990-08-14", state: State.find_by(abbr: "ID") },
  { full_name: "Alice Johnson", email: "alice.johnson@example.com", date_of_birth: "1995-07-30", state: State.find_by(abbr: "IL") },
  { full_name: "Bob Brown", email: "bob.brown@example.com", date_of_birth: "1982-12-11", state: State.find_by(abbr: "FL") },
  { full_name: "Emily Davis", email: "emily.davis@example.com", date_of_birth: "1993-11-19", state: State.find_by(abbr: "AK") },
]

product_restrictions = [
  { product: Product.find_by(identifier: 'BC001'), state: State.find_by(abbr: 'AZ'), restricted: true },
  { product: Product.find_by(identifier: 'EC001'), state: State.find_by(abbr: 'GA'), restricted: true },
  { product: Product.find_by(identifier: 'STK001'), state: State.find_by(abbr: 'LA'), restricted: true },
  { product: Product.find_by(identifier: 'OTC001'), state: State.find_by(abbr: 'IL'), restricted: true },
  { product: Product.find_by(identifier: 'OTC002'), state: State.find_by(abbr: 'GA'), restricted: true },
]

ProductRestriction.create!(product_restrictions)

Patient.create!(patients)
