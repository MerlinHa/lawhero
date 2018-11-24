
Lawyer.destroy_all
User.destroy_all
LawyerProperty.destroy_all
Language.destroy_all
Communication.destroy_all
PaymentType.destroy_all
LawField.destroy_all
Case.destroy_all
Review.destroy_all

user_d = User.create!(
  first_name: "Michel",
  last_name: "Martin",
  lawyer: false,
  email: "michel@martin.com",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542964404/u3na34cwuah8yhjk2gcg.jpg"
  )

user_e = User.create!(
  first_name: "Shawkat",
  last_name: "Sami",
  lawyer: false,
  email: "shawkat@sami.com",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1543021392/Capture_d_e%CC%81cran_2018-11-24_a%CC%80_09.01.32.png"
  )

user_z = User.create!(
  first_name: "Dr",
  last_name: "Dre",
  lawyer: false,
  email: "dr@dre.com",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1543027346/Capture_d_e%CC%81cran_2018-11-24_a%CC%80_10.42.06.png"
  )

puts "Creating languages"

Language.create([
  {content: "English"},
  {content: "French"},
  {content: "German"},
  {content: "Spanish"},
  {content: "Arabic"},
  {content: "Russian"},
])

puts "Creating Communications"
Communication.create([
  {content: "Skype"},
  {content: "Whatsapp"},
  {content: "Telegram"},
  {content: "Email"},
  {content: "Chat"},
  {content: "Dropbox"},
  {content: "Google Drive"},
  {content: "Meeting only"},
  {content: "Mail only"},
  {content: "Phone only"},
  {content: "LawHero Messages"},
  {content: "LawHero Documents"},
])

puts "Creating payment types"
PaymentType.create([
  {content: "Fixed"},
  {content: "Hourly"},
  {content: "Success-based"},
])

puts "Creating Lawfields"
LawField.create([
  {content: "Banking Law"},
  {content: "Competition Law"},
  {content: "Corporate Law"},
  {content: "Employment Law"},
  {content: "Environmental Law"},
  {content: "Family Law"},
  {content: "Immigration Law"},
  {content: "Restructuring Law"},
  {content: "M & A Law"},
  {content: "Real Estate Law"},
  {content: "Tax Law"},
  {content: "Transport Law"},
])

puts "Creating users"
user_a = User.create!(
  first_name: "Dereck",
  last_name: "Jones",
  lawyer: true,
  email: "dereck@jones.com",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542251451/law%20seeds/user_a.jpg"
  )

puts "Creating lawyers"

lawyer_a = Lawyer.create!(
  user: user_a,
  short_desc: "Dereck is a senior family law lawyer, having practiced exclusively in this area since being called to the Alberta Bar in 1995. Dereck holds a B.A. (Hons.) from McGill University followed by his L..L.B. from the University of Alberta.",
  long_desc: "Dereck is a senior family law lawyer, having practiced exclusively in this area since being called to the Alberta Bar in 1995. Dereck holds a B.A. (Hons.) from McGill University followed by his L..L.B. from the University of Alberta.
  As a skilled litigator, he has appeared successfully at all levels of court in Alberta as well as in numerous arbitrations. Dereck also has extensive experience in negotiating settlements and drafting agreements. He applies a reasoned approach to his files and endeavours to assist his clients in achieving a resolution that addresses their issues in a sensitive, timely and cost-effective manner. Dereck has been involved in numerous mediations and arbitrations and has completed the arbitration certification program through ADRIA (the Alternative Dispute Resolution (ADR) Institute of Alberta).
  Dereck is a sought after speaker and has delivered a number of lectures and contributed to panels focused around family law for the Legal Education Society of Alberta, the University of Calgary and the Calgary Board of Education.
  Dereck has also authored a number of publications, including an article for Lawyers Weekly entitled “Retroactive Child Support.”
  Finally, Dereck is proud to contribute his time as a volunteer with several noteworthy organizations, including the Honens International Piano Competition.",
  email: "dereck@jonesdivorcelaw.com",
  phone: "0343543235325",
  city: "Berlin",
  price_cents: 10000,
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542251451/law%20seeds/user_a.jpg",
  digital_lawyer: false
  )

puts "create Dereck's cases and reviews.."

Case.create!({
  user: user_d,
  lawyer: lawyer_a,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Divorce",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "very good lawyer",
    content: "Dereck was instrumental in achieving a great estate settlement for me. He is most professional and ethical. He maintained an excellent line of communication. His explanations of legal jargon were appreciated. The best attorney I have ever come in contact with.",
    stars: 5
  })
Case.create!({
  user: user_e,
  lawyer: lawyer_a,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Errors in public records",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "Not recommended",
    content: "Very personable and knowledgeable. His staff could do a better job of proofing documents before submitting them to clients. My wife was working with them on a trust for her father and found obvious grammar/spelling errors, along with some factual errors, on various documents given to her for approval.",
    stars: 2
  })
Case.create!({
  user: user_z,
  lawyer: lawyer_a,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Unknown liens",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})

Review.create!({
  case: Case.last,
    title: "thank you Dereck!!!",
    content: "Dereck is an excellent civil defense attorney. Most importantly, he seeks resolutions that are fair to the parties. This is a trait not often found in litigation matters. Given that Dereck and I were on opposite sides of the fence in a recent case, my comments stem from personal knowledge of this gentleman.",
    stars: 4
  })




user_b = User.create!(
  first_name: "Lindsay",
  last_name: "Ewens-Jones",
  lawyer: true,
  email: "lindsay@ewens-jones.com",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542261759/law%20seeds/user_b.jpg"
  )

lawyer_b = Lawyer.create!(
  user: user_b,
  short_desc: "Divorce is one of the most difficult and stressful events anyone can experience. Lindsay’s passion is assisting people through this tumultuous experience in a manner that allows them to remain in control of their solution.",
  long_desc: "Divorce is one of the most difficult and stressful events anyone can experience. Lindsay’s passion is assisting people through this tumultuous experience in a manner that allows them to remain in control of their solution, minimize the conflict to which they and their children are exposed, preserve their assets and improve communication. Using mediation techniques tailored to client’s particular conflict level and matters in dispute, Lindsay maximizes the prospect for a mutually agreeable resolution. She works diligently to achieve efficient, effective and constructive results.
  As a lawyer, Lindsay is a skilled litigator with extensive experience and success in chambers and trial advocacy. Lindsay prides herself on her client-centered approach and aims to ensure clients have the information they require regarding resolution options, relevant legal principles and procedures so that clients are able to make informed, educated and well analyzed decisions. Clients are able to actively participate in every aspect of their matter because they are kept fully informed through regular, prompt communication.",
  email: "lindsay@jonesdivorcelaw.com",
  phone: "0343543235325",
  city: "Paris",
  price_cents: 30000,
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542261759/law%20seeds/user_b.jpg",
  digital_lawyer: true
  )
puts "create Lindsay's cases and reviews.."

Case.create!({
  user: user_d,
  lawyer: lawyer_b,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: " Illegal deeds",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "very good lawyer",
    content: "Lindsay was instrumental in achieving a great estate settlement for me. He is most professional and ethical. He maintained an excellent line of communication. His explanations of legal jargon were appreciated. The best attorney I have ever come in contact with.",
    stars: 4
  })
Case.create!({
  user: user_e,
  lawyer: lawyer_b,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Missing heirs",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "Not recommended",
    content: "Very personable and knowledgeable. His staff could do a better job of proofing documents before submitting them to clients. My wife was working with them on a trust for her father and found obvious grammar/spelling errors, along with some factual errors, on various documents given to her for approval.",
    stars: 1
  })
Case.create!({
  user: user_z,
  lawyer: lawyer_b,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Forgeries",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "thank you Lindsay!!!",
    content: "Lindsay is an excellent civil defense attorney. Most importantly, he seeks resolutions that are fair to the parties. This is a trait not often found in litigation matters. Given that Lindsay and I were on opposite sides of the fence in a recent case, my comments stem from personal knowledge of this gentleman.",
    stars: 4
  })




user_c = User.create!(
  first_name: "Edward",
  last_name: "Barnes",
  lawyer: true,
  email: "edward@barnes.com",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542261885/law%20seeds/user_c.jpg"
  )

lawyer_c = Lawyer.create!(
  user: user_c,
  short_desc: "Edward D. Barnes is Founder & President of Barnes & Diehl, P.C., the largest Firm in Virginia devoted to Family Law. In 2008, he received the Virginia State Bar Family Law Section, Lifetime Achievement Award.",
  long_desc: "Edward D. Barnes is Founder & President of Barnes & Diehl, P.C., the largest Firm in Virginia devoted to Family Law. In 2008, he received the Virginia State Bar Family Law Section, Lifetime Achievement Award. He is a Fellow of the American Academy of Matrimonial Lawyers (Chicago). He is listed in Best Lawyers in America, and has been Virginia Legal Elite list published by Virginia Business Magazine. Richmond Business Magazine named him Top Family Lawyer in the City of Richmond and the Region in 2001.",
  email: "ebarnes@barnesfamilylaw.com",
  phone: "0343543235325",
  city: "Los Angeles",
  price_cents: 25000,
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542261885/law%20seeds/user_c.jpg",
  digital_lawyer: true
  )
puts "create Edward's cases and reviews.."

Case.create!({
  user: user_d,
  lawyer: lawyer_c,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Undiscovered encumbrances",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "very good lawyer",
    content: "Edward was instrumental in achieving a great estate settlement for me. He is most professional and ethical. He maintained an excellent line of communication. His explanations of legal jargon were appreciated. The best attorney I have ever come in contact with.",
    stars: 5
  })
Case.create!({
  user: user_e,
  lawyer: lawyer_c,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Unknown easements",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "Not recommended",
    content: "Very personable and knowledgeable. His staff could do a better job of proofing documents before submitting them to clients. My wife was working with them on a trust for her father and found obvious grammar/spelling errors, along with some factual errors, on various documents given to her for approval.",
    stars: 2
  })
Case.create!({
  user: user_z,
  lawyer: lawyer_c,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Boundary/survey disputes",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "thank you Edward!!!",
    content: "Edward is an excellent civil defense attorney. Most importantly, he seeks resolutions that are fair to the parties. This is a trait not often found in litigation matters. Given that Edward and I were on opposite sides of the fence in a recent case, my comments stem from personal knowledge of this gentleman.",
    stars: 4
  })


user_g = User.create!(
  first_name: "Michel",
  last_name: "Martinez",
  lawyer: true,
  email: "michel@martinez.com",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1543021798/vfkuc5hpk4zqv0fr60rp.jpg"
  )

lawyer_g = Lawyer.create!(
  user: user_g,
  short_desc: "Nukk-Freeman & Cerra, P.C. is a dynamic Employment Law Firm providing counsel to industry leaders. From start-ups and mid-size enterprises to Fortune 50 clients",
  long_desc: "We represent clients in a diverse group of industries, ranging in size from start-ups to Fortune 50 companies. Our clients include leaders in the insurance, financial, health care, medical products, retail, construction and engineering industries. The firm is complemented by a roster of talented and experienced attorneys who have dedicated their careers exclusively to employment law issues and litigation.",
  email: "michel@micheldivorcelaw.com",
  phone: "0343543235325",
  city: "Paris",
  price_cents: 30000,
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1543021798/vfkuc5hpk4zqv0fr60rp.jpg",
  digital_lawyer: true
  )
puts "create Martinez's cases and reviews.."

Case.create!({
  user: user_d,
  lawyer: lawyer_g,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Undiscovered will",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "very good lawyer",
    content: "Martinez was instrumental in achieving a great estate settlement for me. He is most professional and ethical. He maintained an excellent line of communication. His explanations of legal jargon were appreciated. The best attorney I have ever come in contact with.",
    stars: 5
  })
Case.create!({
  user: user_e,
  lawyer: lawyer_g,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "False impersonation of previous owner",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "Not recommended",
    content: "Very personable and knowledgeable. His staff could do a better job of proofing documents before submitting them to clients. My wife was working with them on a trust for her father and found obvious grammar/spelling errors, along with some factual errors, on various documents given to her for approval.",
    stars: 2
  })
Case.create!({
  user: user_z,
  lawyer: lawyer_g,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Fired for extra hours",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "thank you Martinez!!!",
    content: "Martinez is an excellent civil defense attorney. Most importantly, he seeks resolutions that are fair to the parties. This is a trait not often found in litigation matters. Given that Martinez and I were on opposite sides of the fence in a recent case, my comments stem from personal knowledge of this gentleman.",
    stars: 4
  })

user_h = User.create!(
  first_name: "Hector",
  last_name: "Patator",
  lawyer: true,
  email: "hector@patator.com",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542261759/law%20seeds/user_b.jpg"
  )

lawyer_h = Lawyer.create!(
  user: user_h,
  short_desc: "Divorce is one of the most difficult and stressful events anyone can experience. Lindsay’s passion is assisting people through this tumultuous experience in a manner that allows them to remain in control of their solution, minimize the conflict to which they and their children are exposed, preserve their assets and improve communication.",
  long_desc: "Divorce is one of the most difficult and stressful events anyone can experience. Lindsay’s passion is assisting people through this tumultuous experience in a manner that allows them to remain in control of their solution, minimize the conflict to which they and their children are exposed, preserve their assets and improve communication. Using mediation techniques tailored to client’s particular conflict level and matters in dispute, Lindsay maximizes the prospect for a mutually agreeable resolution. She works diligently to achieve efficient, effective and constructive results.",
  email: "hector@hectordivorcelaw.com",
  phone: "0343543235325",
  city: "Paris",
  price_cents: 30000,
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1543022672/sage-kirk-485982-unsplash.jpg",
  digital_lawyer: true
  )

puts "create Hector's cases and reviews.."

Case.create!({
  user: user_d,
  lawyer: lawyer_h,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Car accident suit",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "very good lawyer",
    content: "Hector was very patient and explains me in details all the steps",
    stars: 5
  })
Case.create!({
  user: user_e,
  lawyer: lawyer_h,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Stolen car",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "highly recommended",
    content: "Hector saved my life!!",
    stars: 4
  })
Case.create!({
  user: user_z,
  lawyer: lawyer_h,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Bank refuse loan",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "thank you Hector!!!",
    content: "I was desperate and Jules changed my life",
    stars: 4
  })

puts "Creating lawyer properties"
# 20.times do
# LawyerProperty.create!({lawyer: Lawyer.all.sample, property: Language.all.sample})
# LawyerProperty.create!({lawyer: Lawyer.all.sample, property: Communication.all.sample})
# LawyerProperty.create!({lawyer: Lawyer.all.sample, property: PaymentType.all.sample})
# LawyerProperty.create!({lawyer: Lawyer.all.sample, property: LawField.all.sample})
# end

Lawyer.all.each do |lawyer|
  3.times do
    LawyerProperty.create!({lawyer: lawyer, property: Language.all.sample})
    LawyerProperty.create!({lawyer: lawyer, property: Communication.all.sample})
    LawyerProperty.create!({lawyer: lawyer, property: PaymentType.all.sample})
    LawyerProperty.create!({lawyer: lawyer, property: LawField.all.sample})
  end
end



# adding Jules specific seeds

puts "Creating Jules"

user_aa = User.create!(
  first_name: "Jules",
  last_name: "Jamet",
  lawyer: true,
  email: "jules@jamet.com",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542881156/hmhwmfzjj3181fgrvqvn.png"
  )

lawyer_aa = Lawyer.create!(
  user: user_aa,
  short_desc: "Severance, Unpaid Wages/Overtime, Discrimination, Retaliation. We handle all employment law matters",
  long_desc: "I am dedicated to providing exceptional service to individuals and businesses throughout Paris and its area.  My  employment law practice encompasses all areas of employment law including discrimination, harassment, hostile work environment, retaliation, wrongful termination, wage and hour, overtime...",
  email: "jules@julesemploymentlaw.com",
  phone: "0343543235325",
  city: "Paris",
  price_cents: 25000,
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542881156/hmhwmfzjj3181fgrvqvn.png",
  digital_lawyer: true
  )


LawyerProperty.create!({lawyer: Lawyer.last, property: Language.find_by(content: "French") })
LawyerProperty.create!({lawyer: Lawyer.last, property: Language.find_by(content: "English") })
# LawyerProperty.create!({lawyer: Lawyer.last, property_id: 3 })

LawyerProperty.create!({lawyer: Lawyer.last, property: Communication.find_by(content: "Skype")})
LawyerProperty.create!({lawyer: Lawyer.last, property: Communication.find_by(content: "Whatsapp")})
LawyerProperty.create!({lawyer: Lawyer.last, property: Communication.find_by(content: "LawHero Messages")})
LawyerProperty.create!({lawyer: Lawyer.last, property: Communication.find_by(content: "LawHero Documents")})
LawyerProperty.create!({lawyer: Lawyer.last, property: Communication.find_by(content: "Google Drive")})
LawyerProperty.create!({lawyer: Lawyer.last, property: Communication.find_by(content: "Dropbox")})

LawyerProperty.create!({lawyer: Lawyer.last, property: PaymentType.find_by(content: "Hourly")})
LawyerProperty.create!({lawyer: Lawyer.last, property: PaymentType.find_by(content: "Fixed")})
LawyerProperty.create!({lawyer: Lawyer.last, property: PaymentType.find_by(content: "Success-based")})

LawyerProperty.create!({lawyer: Lawyer.last, property: LawField.find_by(content: "Employment Law")})
LawyerProperty.create!({lawyer: Lawyer.last, property: LawField.find_by(content: "Family Law")})

puts "create Jules's cases and reviews.."

Case.create!({
  user: user_d,
  lawyer: lawyer_aa,
  financial_cost: 30,
  overall_length: 10,
  odds_success:70,
  status: "Accepted",
  title: "Divorce for cheating reasons",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})

Review.create!({
  case: Case.last,
    title: "very good lawyer",
    content: "Jules is an exceptional lawyer in the truest sense of the word -- he understands the law and loves providing legal expertise to his clients. His judgment is always ethically sound and his analytical, communication and writing skills are outstanding. His clients are lucky to have him represent them.",
    stars: 5
  })
Case.create!({
  user: user_e,
  lawyer: lawyer_aa,
  financial_cost: 30,
  overall_length: 10,
  odds_success:70,
  status: "Pending",
  title: "Not paid since 3 months",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "highly recommended",
    content: "Jules was instrumental in achieving a great estate settlement for me. He is most professional and ethical. He maintained an excellent line of communication. His explanations of legal jargon were appreciated. The best attorney I have ever come in contact with",
    stars: 4
  })

Case.create!({
  user: user_z,
  lawyer: lawyer_aa,
  financial_cost: 30,
  overall_length: 10,
  odds_success:70,
  status: "Accepted",
  title: "They took back my promotion",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "thank you Jules!!!",
    content: "Jules is both intelligent and creative. It is his creativity that allows him to think outside the box to come up with solutions to difficult problems and issues. It is a pleasure working to complete transactions as a counterparty attorney.",
    stars: 4
  })





# adding booking, review for Jules...





# 20.times do

# Review.create!({
#   case: Case.all.sample,
#   title: "Location, atmosphere, facilities, speed, service, security Everything is over five stars.",
#   content: "The location of Connections at Trafalgar Square is right next to the National Gallery. And it is located in the West End, home of the musical. Connections at Trafalgar Square was perfectly systematic. Club membership includes a desk and meeting room in the hotel's lounge, where all facilities are available and drinks and food are available. In addition to working in the luxurious hotel lounge, the hotel restaurant and bar are available at a reduced cost. Everything was perfect and the most important Internet speed was over 200MB download. Location, atmosphere, facilities, speed, service, security Everything is over five stars.",
#   stars: rand(1..5)
# })
# end

puts "Creating Merlin"

user_bb = User.create!(
  first_name: "Merlin",
  last_name: "Ha",
  lawyer: true,
  email: "merlin@m.m",
  password: "helloworld",
  phone: "01235235693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542958107/Merlin.jpg"
  )

lawyer_bb = Lawyer.create!(
  user: user_bb,
  short_desc: "Severance, Unpaid Wages/Overtime, Discrimination, Retaliation. We handle all employment law matters",
  long_desc: "I am dedicated to providing exceptional service to individuals and businesses throughout Paris and its area.  My  employment law practice encompasses all areas of employment law including discrimination, harassment, hostile work environment, retaliation, wrongful termination, wage and hour, overtime...",
  email: "lindsay@jonesdivorcelaw.com",
  phone: "0343543235325",
  city: "Paris",
  price_cents: 50000,
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542958107/Merlin.jpg",
  digital_lawyer: false
  )


LawyerProperty.create!({lawyer: Lawyer.last, property: Language.find_by(content: "German") })
LawyerProperty.create!({lawyer: Lawyer.last, property: Language.find_by(content: "English") })
# LawyerProperty.create!({lawyer: Lawyer.last, property_id: 3 })

LawyerProperty.create!({lawyer: Lawyer.last, property: Communication.find_by(content: "Meeting only")})
LawyerProperty.create!({lawyer: Lawyer.last, property: Communication.find_by(content: "Mail only")})
LawyerProperty.create!({lawyer: Lawyer.last, property: Communication.find_by(content: "Phone only")})

LawyerProperty.create!({lawyer: Lawyer.last, property: PaymentType.find_by(content: "Hourly")})
LawyerProperty.create!({lawyer: Lawyer.last, property: PaymentType.find_by(content: "Fixed")})


LawyerProperty.create!({lawyer: Lawyer.last, property: LawField.find_by(content: "Employment Law")})
LawyerProperty.create!({lawyer: Lawyer.last, property: LawField.find_by(content: "Tax Law")})

puts "create Merlin's cases and reviews.."

Case.create!({
  user: user_d,
  lawyer: lawyer_bb,
  financial_cost: 40,
  overall_length: 11,
  odds_success:70,
  status: "Accepted",
  title: "Harrassment",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "very good lawyer",
    content: "Merlin is an exceptional lawyer in the truest sense of the word -- he understands the law and loves providing legal expertise to his clients. His judgment is always ethically sound and his analytical, communication and writing skills are outstanding. His clients are lucky to have him represent them.",
    stars: 5
  })

Case.create!({
  user: user_e,
  lawyer: lawyer_bb,
  financial_cost: 50,
  overall_length: 12,
  odds_success:70,
  status: "Pending",
  title: "Not paid since 3 months",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "highly recommended",
    content: "Merlin was instrumental in achieving a great estate settlement for me. He is most professional and ethical. He maintained an excellent line of communication. His explanations of legal jargon were appreciated. The best attorney I have ever come in contact with",
    stars: 3
  })

Case.create!({
  user: user_z,
  lawyer: lawyer_bb,
  financial_cost: 30,
  overall_length: 15,
  odds_success:70,
  status: "Accepted",
  title: "They took back my promotion",
  description: "Need help to defend my interests and negotiate a package to leave my company",
})
Review.create!({
  case: Case.last,
    title: "thank you Merlin!!!",
    content: "Merlin is both intelligent and creative. It is his creativity that allows him to think outside the box to come up with solutions to difficult problems and issues. It is a pleasure working to complete transactions as a counterparty attorney.",
    stars: 5
  })









# adding booking, review for Jules...


