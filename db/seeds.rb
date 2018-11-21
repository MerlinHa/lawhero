Booking.destroy_all
Lawyer.destroy_all
User.destroy_all
LawyerProperty.destroy_all
Language.destroy_all
Communication.destroy_all
PaymentType.destroy_all
LawField.destroy_all
Case.destroy_all
Review.destroy_all

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
  {content: "Phone"},
  {content: "Email"},
  {content: "Chat"},
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
  email: "a@a.a",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542251451/law%20seeds/user_a.jpg"
)

puts "Creating lawyers"

lawyer_a = Lawyer.create!(
  user: User.all.sample,
  short_desc: "Dereck is a senior family law lawyer, having practiced exclusively in this area since being called to the Alberta Bar in 1995. Dereck holds a B.A. (Hons.) from McGill University followed by his L..L.B. from the University of Alberta.
    As a skilled litigator, he has appeared successfully at all levels of court in Alberta as well as in numerous arbitrations. Dereck also has extensive experience in negotiating settlements...",
  long_desc: "Dereck is a senior family law lawyer, having practiced exclusively in this area since being called to the Alberta Bar in 1995. Dereck holds a B.A. (Hons.) from McGill University followed by his L..L.B. from the University of Alberta.
    As a skilled litigator, he has appeared successfully at all levels of court in Alberta as well as in numerous arbitrations. Dereck also has extensive experience in negotiating settlements and drafting agreements. He applies a reasoned approach to his files and endeavours to assist his clients in achieving a resolution that addresses their issues in a sensitive, timely and cost-effective manner. Dereck has been involved in numerous mediations and arbitrations and has completed the arbitration certification program through ADRIA (the Alternative Dispute Resolution (ADR) Institute of Alberta).
    Dereck is a sought after speaker and has delivered a number of lectures and contributed to panels focused around family law for the Legal Education Society of Alberta, the University of Calgary and the Calgary Board of Education.
    Dereck has also authored a number of publications, including an article for Lawyers Weekly entitled “Retroactive Child Support.”
    Finally, Dereck is proud to contribute his time as a volunteer with several noteworthy organizations, including the Honens International Piano Competition.",
    email: "dereck@jonesdivorcelaw.com",
    phone: "0343543235325",
    city: "berlin",
    price_cents: 10000,
    remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542251451/law%20seeds/user_a.jpg",
    digital_lawyer: false
  )

user_b = User.create!(
  first_name: "Lindsay",
  last_name: "Ewens-Jones",
  lawyer: true,
  email: "b@b.b",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542261759/law%20seeds/user_b.jpg"
)

lawyer_b = Lawyer.create!(
  user: User.all.sample,
  short_desc: "Divorce is one of the most difficult and stressful events anyone can experience. Lindsay’s passion is assisting people through this tumultuous experience in a manner that allows them to remain in control of their solution, minimize the conflict to which they and their children are exposed, preserve their assets and improve communication. Using mediation techniques tailored to client’s particular conflict level and matters in dispute, Lindsay maximizes the prospect for a...",
  long_desc: "Divorce is one of the most difficult and stressful events anyone can experience. Lindsay’s passion is assisting people through this tumultuous experience in a manner that allows them to remain in control of their solution, minimize the conflict to which they and their children are exposed, preserve their assets and improve communication. Using mediation techniques tailored to client’s particular conflict level and matters in dispute, Lindsay maximizes the prospect for a mutually agreeable resolution. She works diligently to achieve efficient, effective and constructive results.
    As a lawyer, Lindsay is a skilled litigator with extensive experience and success in chambers and trial advocacy. Lindsay prides herself on her client-centered approach and aims to ensure clients have the information they require regarding resolution options, relevant legal principles and procedures so that clients are able to make informed, educated and well analyzed decisions. Clients are able to actively participate in every aspect of their matter because they are kept fully informed through regular, prompt communication.
    Lindsay is highly trained in alternative dispute resolutions. She has been a collaborative law lawyer since 2003 and a practicing mediator since 2007. Lindsay completed both her arbitration training and parenting coordination training in 2014. She has been involved in numerous mediations and arbitrations over the years and has trained with some of the best mediators in North America including Bill Eddy, renowned author and cofounder of the High Conflict Institute in California, and most recently with Don Philbin and Douglas Noll at Pepperdine University School of Law.
    Lindsay completed her Bachelor of Arts degree in philosophy at the University of Calgary in 1996 and her Bachelor of Laws degree at the University of Alberta in 1999. Lindsay was called to the Alberta Bar in July 2000 and has practiced exclusively in the area of divorce and family law since. Lindsay was the managing principal of the prestigious boutique family law firm of Daunais McKay Harms + Jones 2008 – 2015. She co-founded Jones Divorce Law LLP in 2016.
    Lindsay volunteers with the Legal Education Society of Alberta as both an instructor of the Bar Admission Course and an evaluator of practical examinations for Bar Admission. Lindsay currently sits on the board of Collaborative Divorce Alberta Association and formerly sat on the board of the Association of Women Lawyers. Lindsay has also volunteered with Calgary Legal Guidance, Student Legal Assistance and the Mustard Seed.
    Aside from the practice of law, Lindsay is a devoted mother who enjoys traveling, skiing, golfing and hiking.",
    email: "lindsay@jonesdivorcelaw.com",
    phone: "0343543235325",
    city: "Paris",
    price_cents: 30000,
    remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542261759/law%20seeds/user_b.jpg",
    digital_lawyer: true
  )

user_c = User.create!(
  first_name: "Edward",
  last_name: "Barnes",
  lawyer: true,
  email: "c@c.c",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542261885/law%20seeds/user_c.jpg"
)

lawyer_c = Lawyer.create!(
  user: User.all.sample,
  short_desc: "Edward D. Barnes is Founder & President of Barnes & Diehl, P.C., the largest Firm in Virginia devoted to Family Law. In 2008, he received the Virginia State Bar Family Law Section, Lifetime Achievement Award. He is a Fellow of the American Academy of Matrimonial Lawyers (Chicago). He is listed in Best Lawyers in America, and has been Virginia Legal Elite list published by Virginia Business Magazine. Richmond Business Magazine named him Top Family Lawyer in the...",
  long_desc: "Edward D. Barnes is Founder & President of Barnes & Diehl, P.C., the largest Firm in Virginia devoted to Family Law. In 2008, he received the Virginia State Bar Family Law Section, Lifetime Achievement Award. He is a Fellow of the American Academy of Matrimonial Lawyers (Chicago). He is listed in Best Lawyers in America, and has been Virginia Legal Elite list published by Virginia Business Magazine. Richmond Business Magazine named him Top Family Lawyer in the City of Richmond and the Region in 2001.",
  email: "ebarnes@barnesfamilylaw.com",
  phone: "0343543235325",
  city: "Los Angeles",
  price_cents: 25000,
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542261885/law%20seeds/user_c.jpg",
  digital_lawyer: true
)

user_d = User.create!(
  first_name: "Jules",
  last_name: "Jamet",
  lawyer: false,
  email: "d@d.d",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542262191/law%20seeds/user_d.jpg"
)

user_e = User.create!(
  first_name: "Shawkat",
  last_name: "Sami",
  lawyer: false,
  email: "e@e.e",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542262191/law%20seeds/user_e.jpg"
)
user_f = User.create!(
  first_name: "Paul",
  last_name: "Guadagnin",
  lawyer: false,
  email: "f@f.f",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542262194/law%20seeds/user_f.jpg"
)


puts "Creating 15 bookings.."
15.times do
  Booking.create!({
    user: User.all.sample,
    lawyer: Lawyer.all.sample,
    price: 30,
    status: "pending",
    case_id: 1
   })
end

puts "Creating 15 reviews.."

10.times do
Review.create!({
  booking: Booking.all.sample,
  title: "Location, atmosphere, facilities, speed, service, security Everything is over five stars.",
  content: "The location of Connections at Trafalgar Square is right next to the National Gallery. And it is located in the West End, home of the musical. Connections at Trafalgar Square was perfectly systematic. Club membership includes a desk and meeting room in the hotel's lounge, where all facilities are available and drinks and food are available. In addition to working in the luxurious hotel lounge, the hotel restaurant and bar are available at a reduced cost. Everything was perfect and the most important Internet speed was over 200MB download. Location, atmosphere, facilities, speed, service, security Everything is over five stars.",
  stars: rand(1..5)
})
end

puts "Creating lawyer properties"
15.times do
LawyerProperty.create!({lawyer: Lawyer.all.sample, property: Language.all.sample})
LawyerProperty.create!({lawyer: Lawyer.all.sample, property: Communication.all.sample})
LawyerProperty.create!({lawyer: Lawyer.all.sample, property: PaymentType.all.sample})
LawyerProperty.create!({lawyer: Lawyer.all.sample, property: LawField.all.sample})
end


