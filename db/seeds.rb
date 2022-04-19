# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
user = User.create!(
    name: 'Sam_1',
    email: 'sam1@crazy.com',
    password: 'random',
    password_confirmation: 'random',
    image: 'https://i.etsystatic.com/33395304/r/il/89250e/3627868992/il_1588xN.3627868992_3yvv.jpg'
)
user = User.create!(
    name: 'Sam_2',
    email: 'sam2@crazy.com',
    password: 'random',
    password_confirmation: 'random',
    image: 'https://i.etsystatic.com/24867880/r/il/b105f1/3806748829/il_1588xN.3806748829_grd6.jpg'
)
user = User.create!(
    name: 'Sam_3',
    email: 'sam3@crazy.com',
    password: 'random',
    password_confirmation: 'random',
    image: 'https://thumbor.forbes.com/thumbor/fit-in/900x510/https://www.forbes.com/advisor/in/wp-content/uploads/2022/03/monkey-g412399084_1280.jpg'
)
user = User.create!(
    name: 'Sam_4',
    email: 'sam4@crazy.com',
    password: 'random',
    password_confirmation: 'random',
    image: 'https://i0.wp.com/cdn.decrypt.co/resize/1024/height/512/wp-content/uploads/2021/12/adidas-bored-ape-ethereum-nft2-gID_4.png?w=1200&ssl=1'
)
user = User.create!(
    name: 'Sam_5',
    email: 'sam5@crazy.com',
    password: 'random',
    password_confirmation: 'random',
    image: 'https://i.guim.co.uk/img/media/ef8492feb3715ed4de705727d9f513c168a8b196/37_0_1125_675/master/1125.jpg?width=620&quality=45&auto=format&fit=max&dpr=2&s=f03a4a118e9f67ca09ecff15cd8f94ca'
)
