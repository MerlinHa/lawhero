# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lawyer.destroy_all
User.destroy_all
LawyerAttribute.destroy_all
Language.destroy_all
Communication.destroy_all
PaymentType.destroy_all
LawField.destroy_all

Language.create([
  {content: "English"},
  {content: "French"},
  {content: "German"},
  {content: "Spanish"},
  {content: "Arabic"},
  {content: "Russian"},
])

Communication.create([
  {content: "Skype"},
  {content: "Whatsapp"},
  {content: "Telegram"},
  {content: "Phone"},
  {content: "Email"},
  {content: "Chat"},
])

PaymentType.create([
  {content: "Fixed"},
  {content: "Hourly"},
  {content: "Success-based"},
])

LawField.create([
  {content: "Banking & Finance Law"},
  {content: "Competition Law"},
  {content: "Corporate Law"},
  {content: "Employment Law"},
  {content: "Environmental Law"},
  {content: "Family Law"},
  {content: "Immigration Law"},
  {content: "Insolvency & Restructuring Law"},
  {content: "Mergers & Acquistions Law"},
  {content: "Real Estate Law"},
  {content: "Tax Law"},
  {content: "Transport Law"},
])

user_a = User.create!(
  first_name: "Dereck",
  last_name: "Jones",
  lawyer: true,
  email: "dereck.jones@llp.com",
  password: "helloworld",
  phone: "01235455693",
  remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542251451/law%20seeds/user_a.jpg"
)


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
    address: "210, 333 24th Avenue SW, Calgary, AB T2S 3E6",
    remote_photo_url: "https://res.cloudinary.com/merlinha/image/upload/v1542251451/law%20seeds/user_a.jpg"
  )

# lawyer_a.remote_photo_url = "https://res.cloudinary.com/merlinha/image/upload/v1542251451/law%20seeds/user_a.jpg"
# lawyer_a.save

# lang = Language.all.sample
LawyerAttribute.create!({lawyer_id: Lawyer.all.sample.id, property: Language.all.sample})

# # attr_id: lang.primary_key (:id)
# # attr_type: lang.class.to_s
LawyerAttribute.create!([
  {lawyer_id: Lawyer.all.sample.id,
    attr_type: "Languages",
    attr_id: Language.all.sample.id},
  {lawyer_id: Lawyer.all.sample.id,
  attr_type: "Languages",
  attr_id: Language.all.sample.id},
  {lawyer_id: Lawyer.all.sample.id,
    attr_type: "Communications",
    attr_id: Communication.all.sample.id},
  {lawyer_id: Lawyer.all.sample.id,
  attr_type: "Communications",
  attr_id: Communication.all.sample.id},
  {lawyer_id: Lawyer.all.sample.id,
  attr_type: "Communications",
  attr_id: Communication.all.sample.id},
   {lawyer_id: Lawyer.all.sample.id,
  attr_type: "PaymentTypes",
  attr_id: PaymentType.all.sample.id},
   {lawyer_id: Lawyer.all.sample.id,
  attr_type: "LawFields",
  attr_id: LawField.all.sample.id}
])









# user_b = User.create(
#   first_name: "Dereck",
#   last_name: "Jones"
#   lawyer: true,
#   email: "dereck.jones@llp.com",
#   phone: "01235455693"
# )
# user_b.remote_photo_url = "https://res.cloudinary.com/merlinha/image/upload/v1542251451/law%20seeds/user_a.jpg"
# user_b.save

# lawyer_b = Lawyer.create(
#   user_id: 1,
#   short_desc: "Dereck is a senior family law lawyer, having practiced exclusively in this area since being called to the Alberta Bar in 1995. Dereck holds a B.A. (Hons.) from McGill University followed by his L..L.B. from the University of Alberta.
#     As a skilled litigator, he has appeared successfully at all levels of court in Alberta as well as in numerous arbitrations. Dereck also has extensive experience in negotiating settlements...",
#   long_desc: "Dereck is a senior family law lawyer, having practiced exclusively in this area since being called to the Alberta Bar in 1995. Dereck holds a B.A. (Hons.) from McGill University followed by his L..L.B. from the University of Alberta.
#     As a skilled litigator, he has appeared successfully at all levels of court in Alberta as well as in numerous arbitrations. Dereck also has extensive experience in negotiating settlements and drafting agreements. He applies a reasoned approach to his files and endeavours to assist his clients in achieving a resolution that addresses their issues in a sensitive, timely and cost-effective manner. Dereck has been involved in numerous mediations and arbitrations and has completed the arbitration certification program through ADRIA (the Alternative Dispute Resolution (ADR) Institute of Alberta).
#     Dereck is a sought after speaker and has delivered a number of lectures and contributed to panels focused around family law for the Legal Education Society of Alberta, the University of Calgary and the Calgary Board of Education.
#     Dereck has also authored a number of publications, including an article for Lawyers Weekly entitled “Retroactive Child Support.”
#     Finally, Dereck is proud to contribute his time as a volunteer with several noteworthy organizations, including the Honens International Piano Competition.",
#     email: "dereck@jonesdivorcelaw.com",
#     phone: "0343543235325",
#     address: "210, 333 24th Avenue SW, Calgary, AB T2S 3E6"
#   )

# lawyer_b.remote_photo_url = "https://res.cloudinary.com/merlinha/image/upload/v1542251451/law%20seeds/user_a.jpg"
# lawyer_b.save









