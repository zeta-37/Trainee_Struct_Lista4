# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Director.create(name:"Mel Gibson", age:65)
Director.create(name:"David Yates", age:57)

Movie.create(name:"Harry Potter e o Enigma do Príncipe", description:"Lorde Voldemort (Ralph Fiennes) é uma ameaça real, tanto para o mundo dos bruxos quanto o dos trouxas. Harry Potter (Daniel Radcliffe) suspeita que o perigo esteja dentro da Escola de Magia e Bruxaria de Hogwarts, mas Alvo Dumbledore (Michael Gambon) está mais preocupado em prepará-lo para o confronto final com o Lorde das Trevas. Dumbledore convida seu colega Horácio Slughorn (Jim Broadbent) para ser o novo professor de Poções, já que Severo Snape (Alan Rickman) enfim alcançou o sonho de ministrar as aulas de Defesa Contra as Artes das Trevas. Paralelamente Harry começa a ter um interesse cada vez maior por Gina Weasley (Bonnie Wright), irmã de seu melhor amigo Rony (Rupert Grint), que também é alvo de interesse de Dino Thomas (Alfie Enoch).", gender:"Aventura", censorship:true, director_id:2)
Movie.create(name:"Animais Fantásticos e Onde Habitam", description:"O excêntrico magizoologista Newt Scamander (Eddie Redmayne) chega à cidade de Nova York levando com muito zelo sua preciosa maleta, um objeto mágico onde ele carrega fantásticos animais do mundo da magia que coletou durante as suas viagens. Em meio a comunidade bruxa norte-americana, que teme muito mais a exposição aos trouxas do que seus colegas ingleses, Newt precisará usar todas suas habilidades e conhecimentos para capturar uma variedade de criaturas que acabam fugindo.", gender:"Aventura", censorship:"true", director_id: 2)
Movie.create(name:"A Paixão de Cristo", description:"As últimas 12 horas da vida de Jesus de Nazaré (James Caviezel). No meio da noite, Jesus é traído por Judas (Luca Lionello) e é preso por soldados no Monte das Oliveiras, sob o comando de religiosos hebreus, que eram liderados por Caifás (Matti Sbraglia). Após ser severamente espancado pelos seus captores, Jesus é entregue para o governador romano na Judéia, Poncio Pilatos (Hristo Shopov), pois só ele poderia ordenar a pena de morte para Jesus. Pilatos não entende o que aquele homem possa ter feito de tão horrível para pedirem a pena máxima e eram os hebreus que pediam isto. Pilatos tenta passar a decisão para Herodes (Luca de Domenicis), governador da Galiléia, pois Jesus era de lá. Herodes também não encontra nada que incrimine Jesus e o assunto volta para Pilatos, que vai perdendo o controle da situação enquanto boa parte da população pede que Jesus seja crucificado. Tentando acalmar o povo e a província, que detesta, Pilatos vai cedendo sob os olhares incriminadores de Claudia (Claudia Gerini), sua mulher, que considera Jesus um santo.", gender:"Drama", censorship:true, director_id: 1)
Movie.create(name:"Até o Último Homem", description:"Em Até o Último Homem, durante a Segunda Guerra Mundial, o médico do exército Desmond T. Doss (Andrew Garfield) se recusa a pegar em uma arma e matar pessoas, porém, durante a Batalha de Okinawa ele trabalha na ala médica e salva mais de 75 homens, sendo condecorado. O que faz de Doss o primeiro Opositor Consciente da história norte-americana a receber a Medalha de Honra do Congresso.", gender:"drama", censorship:true, director_id:1)




