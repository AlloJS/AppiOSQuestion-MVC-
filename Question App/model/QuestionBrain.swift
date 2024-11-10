import UIKit
import AVFoundation

struct QuestionBrain {
    let geographyQuestions: [Question] = [
        Question(text: "La capitale della Svizzera è Zurigo?", answer: "Falso"),
        Question(text: "Il Monte Everest si trova in Nepal e Tibet?", answer: "Vero"),
        Question(text: "Il fiume Amur attraversa la Mongolia?", answer: "Vero"),
        Question(text: "L'Islanda è la nazione più popolosa dell'Europa del Nord?", answer: "Falso"),
        Question(text: "La capitale del Canada è Montreal?", answer: "Falso"),
        Question(text: "La Baia di Hudson è il più grande golfo del mondo?", answer: "Vero"),
        Question(text: "Le Isole Canarie appartengono alla Spagna?", answer: "Vero"),
        Question(text: "Il Kilimangiaro è il punto più alto dell'Uganda?", answer: "Falso"),
        Question(text: "Il deserto del Sahara è il più grande del mondo?", answer: "Falso"),
        Question(text: "Il fiume Yangtze è il fiume più lungo dell'Asia?", answer: "Vero"),
        Question(text: "La Groenlandia è un territorio autonomo della Danimarca?", answer: "Vero"),
        Question(text: "Il Lago Vittoria è il lago più grande del mondo?", answer: "Falso"),
        Question(text: "L'Australia è il continente più secco del mondo?", answer: "Vero"),
        Question(text: "Il Mar Morto è il punto più basso sulla Terra?", answer: "Vero"),
        Question(text: "La capitale dell'Australia è Canberra?", answer: "Vero"),
        Question(text: "Il fiume Gange scorre esclusivamente in India?", answer: "Falso"),
        Question(text: "Il deserto di Kalahari si trova in Sud Africa?", answer: "Falso"),
        Question(text: "La città di New York è più a sud rispetto a Los Angeles?", answer: "Falso"),
        Question(text: "L'Antartide ha più riserve di acqua dolce rispetto al resto del mondo?", answer: "Vero"),
        Question(text: "La capitale del Giappone è Kyoto?", answer: "Falso"),
        Question(text: "Le Isole Faroe sono un territorio dipendente dalla Norvegia?", answer: "Falso"),
        Question(text: "Il fiume Mississippi è il più lungo degli Stati Uniti?", answer: "Vero"),
        Question(text: "Il monte Fuji si trova in Cina?", answer: "Falso"),
        Question(text: "Il Mar Caspio è un mare interno?", answer: "Vero"),
        Question(text: "Il Sahara è situato principalmente in Asia?", answer: "Falso"),
        Question(text: "Il Lago Titicaca è il lago navigabile più alto del mondo?", answer: "Vero"),
        Question(text: "Il fiume Danubio attraversa più di 10 paesi?", answer: "Vero"),
        Question(text: "La catena montuosa delle Ande si trova in Africa?", answer: "Falso"),
        Question(text: "Il fiume Po attraversa solo l'Italia?", answer: "Falso"),
        Question(text: "La capitale della Finlandia è Helsinki?", answer: "Vero"),
        Question(text: "Il Mar dei Caraibi si trova tra l'America del Sud e l'America Centrale?", answer: "Vero"),
        Question(text: "L'Equatore passa attraverso il Brasile?", answer: "Vero"),
        Question(text: "La capitale del Nepal è Katmandu?", answer: "Vero"),
        Question(text: "L'Oceano Atlantico è il più grande oceano del mondo?", answer: "Falso"),
        Question(text: "L'Africa è il continente più caldo del mondo?", answer: "Falso"),
        Question(text: "L'Irlanda è separata dall'Inghilterra da un canale chiamato Mare del Nord?", answer: "Falso"),
        Question(text: "Il Rio delle Amazzoni è il fiume più lungo del mondo?", answer: "Falso"),
        Question(text: "Il deserto di Sonora si trova in Africa?", answer: "Falso"),
        Question(text: "L'India ha più abitanti della Cina?", answer: "Falso"),
        Question(text: "La capitale della Serbia è Belgrado?", answer: "Vero")
    ]

    let historyQuestions: [Question] = [
        Question(text: "L'Impero Romano cadde nel 476 d.C.?", answer: "Vero"),
        Question(text: "Napoleone Bonaparte fu sconfitto a Waterloo nel 1815?", answer: "Vero"),
        Question(text: "La Rivoluzione Francese iniziò nel 1789?", answer: "Vero"),
        Question(text: "Cristoforo Colombo scoprì l'America nel 1492?", answer: "Vero"),
        Question(text: "La Prima Guerra Mondiale iniziò nel 1912?", answer: "Falso"),
        Question(text: "La costruzione del Colosseo iniziò sotto l'imperatore Nerone?", answer: "Falso"),
        Question(text: "Il Medioevo durò circa mille anni?", answer: "Falso"),
        Question(text: "La Magna Carta fu firmata nel 1215?", answer: "Vero"),
        Question(text: "Giovanna d'Arco guidò la resistenza francese contro i Normanni?", answer: "Falso"),
        Question(text: "L'Impero Bizantino fu fondato nel 395 d.C.?", answer: "Vero"),
        Question(text: "La Seconda Guerra Mondiale finì nel 1944?", answer: "Falso"),
        Question(text: "Leonardo da Vinci dipinse la Cappella Sistina?", answer: "Falso"),
        Question(text: "La Guerra dei Cent'Anni durò effettivamente 116 anni?", answer: "Vero"),
        Question(text: "L'Impero Ottomano conquistò Costantinopoli nel 1453?", answer: "Vero"),
        Question(text: "La rivoluzione industriale iniziò nel XIX secolo?", answer: "Falso"),
        Question(text: "La Dichiarazione di Indipendenza degli Stati Uniti fu firmata nel 1776?", answer: "Vero"),
        Question(text: "Il Titanic affondò nel 1914?", answer: "Falso"),
        Question(text: "Alessandro Magno conquistò l'India?", answer: "Vero"),
        Question(text: "La guerra civile americana si concluse nel 1865?", answer: "Vero"),
        Question(text: "L'Illuminismo fu un movimento culturale del Rinascimento?", answer: "Falso"),
        Question(text: "La Rivoluzione Russa ebbe luogo nel 1917?", answer: "Vero"),
        Question(text: "Giulio Cesare fu il primo imperatore romano?", answer: "Falso"),
        Question(text: "Il muro di Berlino fu abbattuto nel 1989?", answer: "Vero"),
        Question(text: "Il Rinascimento iniziò in Francia?", answer: "Falso"),
        Question(text: "La peste nera colpì l'Europa nel XIV secolo?", answer: "Vero"),
        Question(text: "La battaglia di Lepanto fu una sconfitta per l'Impero Ottomano?", answer: "Vero"),
        Question(text: "La civiltà egizia si sviluppò lungo il fiume Tigri?", answer: "Falso"),
        Question(text: "La Dichiarazione dei Diritti dell'Uomo e del Cittadino fu redatta durante la Rivoluzione Francese?", answer: "Vero"),
        Question(text: "La bomba atomica fu sganciata su Nagasaki nel 1945?", answer: "Vero"),
        Question(text: "Carlo Magno fu incoronato imperatore nell'800 d.C.?", answer: "Vero"),
        Question(text: "La guerra di Troia fu combattuta nel III secolo a.C.?", answer: "Falso"),
        Question(text: "La civiltà Maya sviluppò un complesso sistema di scrittura?", answer: "Vero"),
        Question(text: "Il Trattato di Versailles pose fine alla Prima Guerra Mondiale?", answer: "Vero"),
        Question(text: "La conquista normanna dell'Inghilterra avvenne nel 1066?", answer: "Vero"),
        Question(text: "Gengis Khan fondò l'Impero Mongolo?", answer: "Vero"),
        Question(text: "La Grande Depressione iniziò nel 1931?", answer: "Falso"),
        Question(text: "Cleopatra era originaria della Grecia?", answer: "Falso"),
        Question(text: "Il fascismo nacque in Italia?", answer: "Vero"),
        Question(text: "La guerra dei trent'anni terminò nel 1648?", answer: "Vero"),
        Question(text: "La civiltà romana costruì l'Acropoli di Atene?", answer: "Falso"),
        Question(text: "Marco Polo esplorò la Cina durante il XIII secolo?", answer: "Vero"),
        Question(text: "L'era glaciale terminò circa 10.000 anni fa?", answer: "Falso"),
        Question(text: "La prima stampa a caratteri mobili fu inventata da Gutenberg?", answer: "Vero"),
        Question(text: "La Rivoluzione Americana fu guidata da Thomas Jefferson?", answer: "Falso"),
        Question(text: "La civiltà Azteca si trovava nell'odierno Perù?", answer: "Falso"),
        Question(text: "L'Impero Inca costruì Machu Picchu?", answer: "Vero"),
        Question(text: "La rivoluzione culturale cinese iniziò negli anni '60?", answer: "Vero"),
        Question(text: "La battaglia di Stalingrado avvenne nel 1942?", answer: "Vero"),
        Question(text: "Il muro di Berlino fu eretto durante la Seconda Guerra Mondiale?", answer: "Falso"),
        Question(text: "L'Impero Romano d'Oriente cadde nel 1453?", answer: "Vero"),
        Question(text: "I Romani conquistarono la Gallia nel III secolo a.C.?", answer: "Falso"),
        Question(text: "La Rivoluzione Russa portò alla nascita dell'URSS?", answer: "Vero"),
        Question(text: "L'Inquisizione iniziò nel XIII secolo?", answer: "Vero"),
        Question(text: "L'imperatore romano Augusto fu l'ultimo imperatore della dinastia Giulio-Claudia?", answer: "Falso"),
        Question(text: "La civiltà romana fondò la città di Carthage?", answer: "Falso")
    ]

    let scienceQuestions: [Question] = [
        Question(text: "La teoria delle stringhe è una delle principali teorie che descrive la gravità quantistica?", answer: "Vero"),
        Question(text: "Le particelle subatomiche chiamate neutrini hanno una massa zero?", answer: "Falso"),
        Question(text: "L'effetto Doppler può essere osservato solo nelle onde sonore?", answer: "Falso"),
        Question(text: "Le stelle di neutroni sono oggetti con densità così alta che un cucchiaino di materiale peserebbe miliardi di tonnellate?", answer: "Vero"),
        Question(text: "Le galassie si stanno avvicinando tra loro a causa della gravità?", answer: "Falso"),
        Question(text: "Il principio di indeterminazione di Heisenberg afferma che non possiamo conoscere con precisione simultaneamente la posizione e la velocità di una particella?", answer: "Vero"),
        Question(text: "I buchi neri non possono emettere radiazioni?", answer: "Falso"),
        Question(text: "Il bosone di Higgs è stato scoperto nel 2012 al CERN?", answer: "Vero"),
        Question(text: "L'energia nucleare è prodotta dalla fissione di atomi?", answer: "Vero"),
        Question(text: "La fotosintesi inversa si verifica quando le piante rilasciano ossigeno durante la notte?", answer: "Falso"),
        Question(text: "La velocità della luce è costante in tutti i media, indipendentemente dalla sua composizione?", answer: "Falso"),
        Question(text: "La relatività generale di Einstein descrive l'interazione gravitazionale come la curvatura dello spazio-tempo?", answer: "Vero"),
        Question(text: "La materia oscura è visibile con telescopi convenzionali?", answer: "Falso"),
        Question(text: "Il carbonio-14 è utilizzato per datare oggetti risalenti a milioni di anni fa?", answer: "Falso"),
        Question(text: "Le piante carnivore sono in grado di digerire proteine complesse?", answer: "Vero"),
        Question(text: "La legge di Ohm descrive la relazione tra corrente, resistenza e voltaggio?", answer: "Vero"),
        Question(text: "I superconduttori non offrono resistenza elettrica a nessuna temperatura?", answer: "Falso"),
        Question(text: "La teoria dell'inflazione cosmologica suggerisce che l'universo si è espanso esponenzialmente subito dopo il Big Bang?", answer: "Vero"),
        Question(text: "Il silicio è il principale materiale usato per la costruzione di microchip?", answer: "Vero"),
        Question(text: "Gli esseri umani sono capaci di percepire la luce ultravioletta?", answer: "Falso"),
        Question(text: "La teoria dell'evoluzione è un concetto scientifico che è stato definitivamente comprovato senza eccezioni?", answer: "Falso"),
        Question(text: "Il principio di Pauli afferma che due fermioni non possono occupare lo stesso stato quantico nello stesso momento?", answer: "Vero"),
        Question(text: "L'energia cinetica è proporzionale al quadrato della velocità di un oggetto?", answer: "Vero"),
        Question(text: "L'energia rilasciata dalla fusione nucleare è più potente di quella rilasciata dalla fissione?", answer: "Vero"),
        Question(text: "Il cloro è utilizzato come disinfettante per l'acqua potabile?", answer: "Vero"),
        Question(text: "L'ozono si trova principalmente nella stratosfera?", answer: "Vero"),
        Question(text: "Le rocce ignee si formano dalla solidificazione del magma?", answer: "Vero"),
        Question(text: "La fissione nucleare può avvenire spontaneamente a temperatura ambiente?", answer: "Falso"),
        Question(text: "Il gas argon è inerte e non reagisce con altri elementi?", answer: "Vero"),
        Question(text: "Un'onda elettromagnetica può viaggiare nel vuoto senza un mezzo?", answer: "Vero"),
        Question(text: "L'energia solare viene convertita direttamente in energia chimica nelle piante?", answer: "Falso"),
        Question(text: "La gravità è una forza che agisce solo sugli oggetti con massa?", answer: "Vero"),
        Question(text: "La relatività speciale è compatibile con la legge della gravitazione universale di Newton?", answer: "Falso"),
        Question(text: "Un buco nero non può emettere radiazioni a causa della sua gravità estrema?", answer: "Falso"),
        Question(text: "L'acido desossiribonucleico (DNA) è composto da due catene di nucleotidi?", answer: "Vero"),
        Question(text: "La forza elettromagnetica è responsabile dell'interazione tra particelle cariche?", answer: "Vero"),
        Question(text: "La luce visibile è solo una piccola parte dello spettro elettromagnetico?", answer: "Vero"),
        Question(text: "Un atomo di idrogeno ha un solo protone e un elettrone?", answer: "Vero"),
        Question(text: "La cellula eucariotica contiene sempre un nucleo distinto?", answer: "Vero"),
        Question(text: "La teoria del caos si applica a sistemi deterministici ma che sono altamente sensibili alle condizioni iniziali?", answer: "Vero"),
        Question(text: "I dinosauri sono estinti a causa di un cataclisma globale causato da un asteroide?", answer: "Vero"),
        Question(text: "La proteina emoglobina è responsabile per il trasporto di ossigeno nel sangue?", answer: "Vero"),
        Question(text: "L'astronomia è la scienza che studia i fenomeni atmosferici terrestri?", answer: "Falso"),
        Question(text: "Le onde gravitazionali sono un fenomeno previsto dalla teoria della relatività generale?", answer: "Vero"),
        Question(text: "Le particelle di luce, i fotoni, hanno una massa a riposo?", answer: "Falso"),
        Question(text: "L'atomo di carbonio è un esempio di isotopo stabile?", answer: "Falso"),
        Question(text: "La fusione nucleare è il processo in cui due nuclei leggeri si fondono per formare uno più pesante, rilasciando energia?", answer: "Vero"),
        Question(text: "Le stelle di neutroni sono più dense dei buchi neri?", answer: "Falso"),
        Question(text: "La legge di gravitazione universale di Newton è applicabile anche all'interno dei buchi neri?", answer: "Falso"),
        Question(text: "La materia oscura è composta da particelle che non interagiscono con la luce?", answer: "Vero"),
        Question(text: "L'atomo di uranio è usato come combustibile nelle centrali nucleari?", answer: "Vero"),
        Question(text: "La fotosintesi è una reazione che avviene solo nelle piante verdi?", answer: "Falso"),
        Question(text: "L'inquinamento atmosferico contribuisce al riscaldamento globale?", answer: "Vero")
    ]

    let artAndCultureQuestions: [Question] = [
        Question(text: "La Cappella Sistina è stata decorata da Michelangelo durante il Rinascimento?", answer: "Vero"),
        Question(text: "La scultura La Pietà di Michelangelo è stata realizzata in legno?", answer: "Falso"),
        Question(text: "L'arte neoclassica è nata durante la rivoluzione francese?", answer: "Vero"),
        Question(text: "Il dipinto La Scuola di Atene è stato creato da Leonardo da Vinci?", answer: "Falso"),
        Question(text: "Il movimento espressionista si è sviluppato alla fine del XIX secolo?", answer: "Vero"),
        Question(text: "L'opera Il Giudizio Universale di Michelangelo si trova nella Chiesa di San Pietro?", answer: "Falso"),
        Question(text: "La Galleria degli Uffizi ospita opere di Rembrandt?", answer: "Falso"),
        Question(text: "Il pittore Gustav Klimt era austriaco?", answer: "Vero"),
        Question(text: "L'arte preistorica è caratterizzata da pitture rupestri e sculture di animali?", answer: "Vero"),
        Question(text: "Il famoso dipinto Guernica è stato realizzato da Salvador Dalí?", answer: "Falso"),
        Question(text: "L'artista francese Edgar Degas è conosciuto per le sue sculture di ballerine?", answer: "Vero"),
        Question(text: "La statua della Libertà è stata progettata da Michelangelo?", answer: "Falso"),
        Question(text: "Il movimento surrealista si ispira principalmente alla psicoanalisi?", answer: "Vero"),
        Question(text: "La Basilica di San Marco si trova a Venezia?", answer: "Vero"),
        Question(text: "Il pittore francese Henri Matisse è noto per il suo stile cubista?", answer: "Falso"),
        Question(text: "Il periodo dell'arte gotica è durato dal 12° al 15° secolo?", answer: "Vero"),
        Question(text: "Il pittore impressionista Édouard Manet è stato influenzato dalla fotografia?", answer: "Vero"),
        Question(text: "La scultura del David di Michelangelo è alta più di 6 metri?", answer: "Vero"),
        Question(text: "L'opera Don Giovanni è stata composta da Ludwig van Beethoven?", answer: "Falso"),
        Question(text: "I pittori dell'arte romantica enfatizzavano la natura e l'emozione?", answer: "Vero"),
        Question(text: "Il rinascimento barocco ha avuto origine in Spagna?", answer: "Falso"),
        Question(text: "Il movimento dadaista ha avuto come obiettivo la distruzione della cultura tradizionale?", answer: "Vero"),
        Question(text: "L'architetto Antoni Gaudí è famoso per la progettazione della Sagrada Família a Madrid?", answer: "Falso"),
        Question(text: "Il movimento minimalista si sviluppa negli anni '60?", answer: "Vero"),
        Question(text: "Il pittore Claude Monet è stato uno dei fondatori dell'impressionismo?", answer: "Vero"),
        Question(text: "L'arte dell'Antica Grecia si è focalizzata principalmente sulla scultura?", answer: "Vero"),
        Question(text: "Il famosissimo dipinto La Nascita di Venere è stato dipinto da Michelangelo?", answer: "Falso"),
        Question(text: "L'opera La Gioconda è stata dipinta su legno di noce?", answer: "Vero"),
        Question(text: "I famosi affreschi della Villa dei Misteri sono stati realizzati da Raffaello?", answer: "Falso"),
        Question(text: "La pittura ad olio è stata inventata durante il Rinascimento?", answer: "Vero"),
        Question(text: "Il pittore surrealista René Magritte è belga?", answer: "Vero"),
        Question(text: "Il movimento futurista ha promosso l'uso della tecnologia nelle arti?", answer: "Vero"),
        Question(text: "La Monna Lisa è stata rubata dal Museo del Louvre nel 1911?", answer: "Vero"),
        Question(text: "La scultura di Rodin Il Pensatore è in bronzo?", answer: "Vero"),
        Question(text: "L'artista Matisse è noto per il suo lavoro nell'arte astratta?", answer: "Falso"),
        Question(text: "L'opera Il Bacio è stata dipinta da Edvard Munch?", answer: "Falso"),
        Question(text: "L'arte contemporanea abbraccia anche forme come la videoarte?", answer: "Vero"),
        Question(text: "La tecnica del chiaroscuro è stata perfezionata da Caravaggio?", answer: "Vero"),
        Question(text: "Il museo del Prado si trova a Barcellona?", answer: "Falso"),
        Question(text: "Il movimento impressionista ha preso il suo nome dal dipinto Impression, Soleil Levant di Claude Monet?", answer: "Vero"),
        Question(text: "Il movimento art nouveau ha avuto un forte impatto sull'architettura?", answer: "Vero"),
        Question(text: "La scultura La Vénus de Milo è stata trovata a Roma?", answer: "Falso"),
        Question(text: "L'arte cinese è caratterizzata da dipinti su rotoli di seta?", answer: "Vero"),
        Question(text: "Il movimento romantico ha cercato di rifiutare la razionalità della Rivoluzione Industriale?", answer: "Vero"),
        Question(text: "La Cattedrale di Notre-Dame si trova a Parigi?", answer: "Vero"),
        Question(text: "Il famoso quadro La Morte di Marat è stato dipinto da Jacques-Louis David?", answer: "Vero"),
        Question(text: "L'architettura rinascimentale ha influenzato la costruzione della Torre Eiffel?", answer: "Falso"),
        Question(text: "L'arte rococò si sviluppò principalmente in Italia?", answer: "Falso"),
        Question(text: "L'artista Jackson Pollock è stato un esponente del movimento espressionista astratto?", answer: "Vero"),
        Question(text: "Il poeta Dante Alighieri è stato influenzato dall'arte gotica?", answer: "Vero"),
        Question(text: "La scultura di David di Donatello è realizzata in marmo?", answer: "Falso"),
        Question(text: "L'arte bizantina è famosa per l'uso di mosaici dorati?", answer: "Vero"),
        Question(text: "Il pittore Pierre-Auguste Renoir è stato uno dei principali esponenti del movimento cubista?", answer: "Falso"),
        Question(text: "Il pittore Edvard Munch è noto per il dipinto Il Sogno?", answer: "Falso"),
        Question(text: "L'arte barocca si caratterizza per l'uso di contrasti tra luce e ombra?", answer: "Vero"),
        Question(text: "L'arte rinascimentale ha avuto un forte impatto sulla scienza e sulla filosofia?", answer: "Vero"),
        Question(text: "La fontana di Trevi si trova a Firenze?", answer: "Falso"),
        Question(text: "La scultura di Laocoonte e i suoi figli è stata scoperta a Roma?", answer: "Vero")
    ]

    let musicQuestions: [Question] = [
        Question(text: "Ludwig van Beethoven ha composto la Nona Sinfonia?", answer: "Vero"),
        Question(text: "Mozart è nato a Parigi?", answer: "Falso"),
        Question(text: "La band The Beatles proviene dagli Stati Uniti?", answer: "Falso"),
        Question(text: "Il compositore italiano Antonio Vivaldi ha scritto Le Quattro Stagioni?", answer: "Vero"),
        Question(text: "Johann Sebastian Bach è un compositore del periodo Barocco?", answer: "Vero"),
        Question(text: "Il famosissimo brano Für Elise è stato composto da Mozart?", answer: "Falso"),
        Question(text: "La canzone 'Bohemian Rhapsody' è dei Queen?", answer: "Vero"),
        Question(text: "Frédéric Chopin è stato un famoso pianista e compositore?", answer: "Vero"),
        Question(text: "L'opera 'La Traviata' è stata scritta da Giuseppe Verdi?", answer: "Vero"),
        Question(text: "Il pianoforte è uno strumento a corda?", answer: "Vero"),
        Question(text: "Michael Jackson è conosciuto come il Re del Rock?", answer: "Falso"),
        Question(text: "Il famoso brano 'Imagine' è stato scritto da John Lennon?", answer: "Vero"),
        Question(text: "Il gruppo musicale The Rolling Stones è nato negli Stati Uniti?", answer: "Falso"),
        Question(text: "L'opera 'Carmen' è stata scritta da Puccini?", answer: "Falso"),
        Question(text: "La canzone 'Yesterday' è stata scritta dai Beatles?", answer: "Vero"),
        Question(text: "La cantante Adele è originaria del Regno Unito?", answer: "Vero"),
        Question(text: "La canzone 'Like a Rolling Stone' è di Bob Dylan?", answer: "Vero"),
        Question(text: "Il violino è uno strumento musicale a percussione?", answer: "Falso"),
        Question(text: "La 'Sinfonia dei giocattoli' è stata composta da Mozart?", answer: "Falso"),
        Question(text: "Il gruppo musicale Queen è composto da quattro membri?", answer: "Vero"),
        Question(text: "La canzone 'Shape of You' è stata scritta da Ed Sheeran?", answer: "Vero"),
        Question(text: "Il famoso brano 'Clair de Lune' è stato scritto da Claude Debussy?", answer: "Vero"),
        Question(text: "Giuseppe Verdi è noto principalmente per le sue opere?", answer: "Vero"),
        Question(text: "La 'Nona Sinfonia' di Beethoven è la sua ultima sinfonia?", answer: "Vero"),
        Question(text: "Bob Dylan ha vinto il Premio Nobel per la letteratura?", answer: "Vero"),
        Question(text: "Il brano 'Smells Like Teen Spirit' è dei Nirvana?", answer: "Vero"),
        Question(text: "Il gruppo musicale ABBA è originario della Svezia?", answer: "Vero"),
        Question(text: "La canzone 'Stairway to Heaven' è stata scritta dai Queen?", answer: "Falso"),
        Question(text: "Il compositore tedesco Richard Wagner è noto per la sua opera 'Tristano e Isotta'?", answer: "Vero"),
        Question(text: "L'opera 'Il Barbiere di Siviglia' è stata scritta da Rossini?", answer: "Vero"),
        Question(text: "La cantante Beyoncé è famosa per essere una membro delle Destiny's Child?", answer: "Vero"),
        Question(text: "Il gruppo musicale Led Zeppelin è nato negli Stati Uniti?", answer: "Falso"),
        Question(text: "La musica jazz ha avuto origine negli Stati Uniti?", answer: "Vero"),
        Question(text: "La canzone 'Respect' è di Aretha Franklin?", answer: "Vero"),
        Question(text: "Il violoncello è uno strumento a fiato?", answer: "Falso"),
        Question(text: "Elvis Presley è conosciuto come il Re del Pop?", answer: "Falso"),
        Question(text: "Il compositore italiano Gioachino Rossini ha scritto la famosa 'Barbiere di Siviglia'?", answer: "Vero"),
        Question(text: "Il brano 'Hallelujah' è stato scritto da Leonard Cohen?", answer: "Vero"),
        Question(text: "Il gruppo musicale Metallica è famoso per il genere musicale chiamato heavy metal?", answer: "Vero"),
        Question(text: "The Beatles hanno suonato il famoso concerto sul tetto della Apple Records?", answer: "Vero"),
        Question(text: "Il famoso cantante Frank Sinatra è nato in Italia?", answer: "Falso"),
        Question(text: "Il compositore Ludwig van Beethoven ha composto la Quinta Sinfonia?", answer: "Vero"),
        Question(text: "Il violino è uno strumento a percussione?", answer: "Falso"),
        Question(text: "La canzone 'Billie Jean' è di Michael Jackson?", answer: "Vero"),
        Question(text: "La musica pop ha avuto origine negli anni 60?", answer: "Vero"),
        Question(text: "Il gruppo musicale Pink Floyd è famoso per il suo album 'Dark Side of the Moon'?", answer: "Vero"),
        Question(text: "Il compositore Giuseppe Verdi è famoso per la sua opera 'Aida'?", answer: "Vero"),
        Question(text: "Il jazz è un genere musicale nato in Europa?", answer: "Falso"),
        Question(text: "Mozart ha scritto 'Il Flauto Magico'?", answer: "Vero"),
        Question(text: "La canzone 'Hotel California' è dei Eagles?", answer: "Vero"),
        Question(text: "Franz Schubert ha scritto la 'Marcia Funebre'?", answer: "Falso"),
        Question(text: "Il famoso brano 'What a Wonderful World' è di Louis Armstrong?", answer: "Vero"),
        Question(text: "Il gruppo musicale The Doors è nato negli Stati Uniti?", answer: "Vero"),
        Question(text: "La canzone 'Bohemian Rhapsody' dura più di 10 minuti?", answer: "Vero"),
        Question(text: "Il genere musicale opera ha origine in Francia?", answer: "Falso"),
        Question(text: "Il flauto è uno strumento a fiato?", answer: "Vero"),
        Question(text: "Il brano 'Imagine' è stato scritto da George Harrison?", answer: "Falso"),
        Question(text: "La canzone 'Purple Rain' è di Prince?", answer: "Vero"),
        Question(text: "Le opere di Verdi sono state scritte durante il periodo romantico?", answer: "Vero"),
        Question(text: "Il brano 'Bridge Over Troubled Water' è dei Simon & Garfunkel?", answer: "Vero"),
        Question(text: "La sinfonia 'Eroica' è stata composta da Beethoven?", answer: "Vero"),
        Question(text: "La musica elettronica è un genere che ha avuto origine nei primi anni 2000?", answer: "Falso")
    ]

    let cinemaTVQuestions: [Question] = [
        Question(text: "Il film 'The Godfather Part III' è stato diretto da Martin Scorsese?", answer: "Falso"),
        Question(text: "Il film 'Citizen Kane' è stato diretto da Orson Welles?", answer: "Vero"),
        Question(text: "L'attore che ha interpretato il ruolo di Luke Skywalker in 'Star Wars' è Mark Hamill?", answer: "Vero"),
        Question(text: "La serie TV 'Twin Peaks' è stata creata da David Lynch?", answer: "Vero"),
        Question(text: "Il film 'The Revenant' è stato girato in bianco e nero?", answer: "Falso"),
        Question(text: "Il film 'Schindler's List' ha vinto 7 premi Oscar?", answer: "Vero"),
        Question(text: "Il film 'The Terminator' è stato rilasciato nel 1990?", answer: "Falso"),
        Question(text: "Il regista di 'The Shape of Water' è Guillermo del Toro?", answer: "Vero"),
        Question(text: "La serie TV 'Lost' è stata trasmessa da HBO?", answer: "Falso"),
        Question(text: "Il film 'E.T. the Extra-Terrestrial' è stato diretto da Steven Spielberg?", answer: "Vero"),
        Question(text: "Il film 'The Social Network' è stato diretto da David Fincher?", answer: "Vero"),
        Question(text: "La serie TV 'Fargo' è ispirata dal film dei Coen Brothers?", answer: "Vero"),
        Question(text: "Il film 'The Dark Knight Rises' è stato il primo film della trilogia di Batman di Christopher Nolan?", answer: "Falso"),
        Question(text: "Il film '2001: Odissea nello spazio' è stato diretto da Stanley Kubrick?", answer: "Vero"),
        Question(text: "Il film 'Gone Girl' è basato su un libro scritto da Gillian Flynn?", answer: "Vero"),
        Question(text: "La serie TV 'The Mandalorian' è prodotta da Netflix?", answer: "Falso"),
        Question(text: "Il film 'Blade Runner 2049' è stato diretto da Denis Villeneuve?", answer: "Vero"),
        Question(text: "Il film 'No Country for Old Men' ha vinto l'Oscar come miglior film?", answer: "Vero"),
        Question(text: "La serie TV 'Mad Men' è ambientata negli anni '60?", answer: "Vero"),
        Question(text: "Il film 'Taxi Driver' è stato diretto da Francis Ford Coppola?", answer: "Falso"),
        Question(text: "Il film 'La La Land' ha vinto l'Oscar per miglior film?", answer: "Falso"),
        Question(text: "L'attore che ha interpretato Iron Man nel Marvel Cinematic Universe è Chris Hemsworth?", answer: "Falso"),
        Question(text: "La serie TV 'Chernobyl' è stata prodotta dalla BBC?", answer: "Falso"),
        Question(text: "Il film 'The Lion King' è stato diretto da John Favreau?", answer: "Falso"),
        Question(text: "La serie TV 'The Wire' è ambientata a Chicago?", answer: "Falso"),
        Question(text: "Il film 'American Beauty' ha vinto il premio Oscar per miglior film?", answer: "Vero"),
        Question(text: "Il film 'Inglourious Basterds' è stato diretto da Quentin Tarantino?", answer: "Vero"),
        Question(text: "Il film 'The Matrix Reloaded' è stato rilasciato nel 2003?", answer: "Vero"),
        Question(text: "La serie TV 'Westworld' è basata su un film di Michael Crichton?", answer: "Vero"),
        Question(text: "La serie TV 'Stranger Things' è prodotta da J.J. Abrams?", answer: "Falso"),
        Question(text: "Il film 'Interstellar' è stato diretto da Ridley Scott?", answer: "Falso"),
        Question(text: "Il film 'Pulp Fiction' ha vinto la Palma d'Oro al Festival di Cannes?", answer: "Vero"),
        Question(text: "Il film 'La La Land' è un remake del film 'An American in Paris'?", answer: "Falso"),
        Question(text: "Il film 'Drive' è stato diretto da Nicolas Winding Refn?", answer: "Vero"),
        Question(text: "Il film 'The Godfather' è stato adattato da un libro di Stephen King?", answer: "Falso"),
        Question(text: "Il film 'The Shawshank Redemption' è stato diretto da Frank Darabont?", answer: "Vero"),
        Question(text: "Il film 'The Grand Budapest Hotel' è stato diretto da Wes Anderson?", answer: "Vero"),
        Question(text: "Il film 'Gone with the Wind' è stato diretto da Alfred Hitchcock?", answer: "Falso"),
        Question(text: "Il film 'The Silence of the Lambs' è stato diretto da Jonathan Demme?", answer: "Vero"),
        Question(text: "Il film 'The Revenant' ha vinto il premio Oscar per miglior regia?", answer: "Vero"),
        Question(text: "La serie TV 'Black Mirror' è stata creata da Charlie Brooker?", answer: "Vero"),
        Question(text: "Il film 'Goodfellas' è stato diretto da Martin Scorsese?", answer: "Vero"),
        Question(text: "Il film 'Forrest Gump' ha vinto l'Oscar per miglior attore protagonista?", answer: "Vero"),
        Question(text: "Il film 'The Godfather' ha ricevuto solo 3 nomination agli Oscar?", answer: "Falso"),
        Question(text: "Il film 'Star Wars: The Force Awakens' è stato diretto da J.J. Abrams?", answer: "Vero"),
        Question(text: "La serie TV 'Peaky Blinders' è ambientata a Liverpool?", answer: "Falso"),
        Question(text: "Il film 'The Pianist' è stato diretto da Roman Polanski?", answer: "Vero"),
        Question(text: "Il film 'The Wolf of Wall Street' è stato diretto da Martin Scorsese?", answer: "Vero"),
        Question(text: "Il film 'Inception' ha vinto l'Oscar per miglior film?", answer: "Falso"),
        Question(text: "Il film 'Moonlight' ha vinto l'Oscar per miglior film nel 2017?", answer: "Vero"),
        Question(text: "La serie TV 'Better Call Saul' è un prequel di 'Breaking Bad'?", answer: "Vero"),
        Question(text: "Il film 'The Godfather Part II' è stato diretto da Francis Ford Coppola?", answer: "Vero"),
        Question(text: "La serie TV 'The Crown' racconta la vita di Margaret Thatcher?", answer: "Falso")
    ]

    let tecnologiaQuestions: [Question] = [
        Question(text: "Il primo computer portatile fu prodotto da IBM?", answer: "Falso"),
        Question(text: "Il sistema operativo Windows è stato creato da Apple?", answer: "Falso"),
        Question(text: "Il primo iPhone è stato lanciato nel 2007?", answer: "Vero"),
        Question(text: "La tecnologia 5G è più veloce della 4G?", answer: "Vero"),
        Question(text: "Linux è un sistema operativo open source?", answer: "Vero"),
        Question(text: "Android è un sistema operativo sviluppato da Microsoft?", answer: "Falso"),
        Question(text: "Steve Jobs è stato uno dei fondatori di Apple?", answer: "Vero"),
        Question(text: "Facebook è stato fondato da Mark Zuckerberg?", answer: "Vero"),
        Question(text: "Google è stato lanciato nel 1998?", answer: "Vero"),
        Question(text: "Il Wi-Fi è una tecnologia che consente la connessione a Internet tramite cavi?", answer: "Falso"),
        Question(text: "La realtà aumentata sovrappone informazioni digitali alla realtà?", answer: "Vero"),
        Question(text: "Il linguaggio di programmazione Java è utilizzato per creare app Android?", answer: "Vero"),
        Question(text: "Il disco rigido è un dispositivo di memoria permanente?", answer: "Vero"),
        Question(text: "Elon Musk è il fondatore di Google?", answer: "Falso"),
        Question(text: "L'Intelligenza Artificiale si riferisce alla creazione di macchine che possono pensare e agire come esseri umani?", answer: "Vero"),
        Question(text: "Il Bitcoin è una criptovaluta?", answer: "Vero"),
        Question(text: "La crittografia è un processo per proteggere le informazioni durante la trasmissione?", answer: "Vero"),
        Question(text: "Il primo videogioco fu creato da Nintendo?", answer: "Falso"),
        Question(text: "I pixel sono l'unità di misura per la risoluzione di uno schermo?", answer: "Vero"),
        Question(text: "Il cloud computing consente di archiviare i dati su dispositivi locali?", answer: "Falso"),
        Question(text: "La tecnologia Bluetooth consente la trasmissione di dati senza fili?", answer: "Vero"),
        Question(text: "La Apple ha creato il primo smartphone?", answer: "Falso"),
        Question(text: "Il motore di ricerca Google è stato creato da Larry Page e Sergey Brin?", answer: "Vero"),
        Question(text: "Amazon è stata fondata come una libreria online?", answer: "Vero"),
        Question(text: "La tecnologia NFC permette la comunicazione tra dispositivi a corto raggio?", answer: "Vero"),
        Question(text: "Il primo computer digitale fu creato nel 1945?", answer: "Vero"),
        Question(text: "La rete 5G è completamente disponibile in tutte le città del mondo?", answer: "Falso"),
        Question(text: "Il linguaggio di programmazione Python è stato creato negli anni '90?", answer: "Vero"),
        Question(text: "Il termine 'Internet of Things' si riferisce a dispositivi connessi tra loro tramite internet?", answer: "Vero"),
        Question(text: "La realtà virtuale è una tecnologia che crea ambienti immersivi artificiali?", answer: "Vero"),
        Question(text: "La tecnologia di riconoscimento facciale è utilizzata per l'autenticazione degli utenti?", answer: "Vero"),
        Question(text: "I chip per smartphone sono prodotti solo da una società?", answer: "Falso"),
        Question(text: "Il primo videogame a essere stato creato è 'Pong'?", answer: "Falso"),
        Question(text: "Il sistema operativo macOS è sviluppato da Microsoft?", answer: "Falso"),
        Question(text: "Il software open source può essere modificato e distribuito liberamente?", answer: "Vero"),
        Question(text: "La blockchain è la tecnologia alla base delle criptovalute?", answer: "Vero"),
        Question(text: "Il computer quantistico è ancora una tecnologia in fase di sviluppo?", answer: "Vero"),
        Question(text: "Instagram è stato acquistato da Google?", answer: "Falso"),
        Question(text: "Il termine 'big data' si riferisce a un'enorme quantità di dati che richiedono strumenti specializzati per l'analisi?", answer: "Vero"),
        Question(text: "La realtà aumentata è più complessa della realtà virtuale?", answer: "Falso"),
        Question(text: "La tecnologia 4K si riferisce alla risoluzione dei televisori e monitor?", answer: "Vero"),
        Question(text: "La crittografia simmetrica utilizza la stessa chiave per cifrare e decifrare i dati?", answer: "Vero"),
        Question(text: "Il sistema operativo Windows è disponibile solo per computer fissi?", answer: "Falso"),
        Question(text: "Il 'phishing' è un tentativo di truffa tramite email o messaggi falsi?", answer: "Vero"),
        Question(text: "Un 'firewall' serve a proteggere una rete da accessi non autorizzati?", answer: "Vero"),
        Question(text: "Apple ha introdotto per prima l'assistente vocale 'Siri'?", answer: "Vero"),
        Question(text: "La tecnologia 3D è utilizzata solo nei cinema?", answer: "Falso"),
        Question(text: "Il sistema di pagamento Apple Pay utilizza la tecnologia NFC?", answer: "Vero"),
        Question(text: "Gli eBook sono una forma di libro digitale?", answer: "Vero"),
        Question(text: "Il protocollo HTTP viene utilizzato per la trasmissione di dati sicuri?", answer: "Falso"),
        Question(text: "Le app di realtà aumentata possono essere usate solo con occhiali speciali?", answer: "Falso"),
        Question(text: "Le auto autonome sono dotate di intelligenza artificiale?", answer: "Vero"),
        Question(text: "Il sistema operativo iOS è sviluppato da Google?", answer: "Falso"),
        Question(text: "Le app mobili vengono sviluppate usando linguaggi di programmazione come Swift o Java?", answer: "Vero"),
        Question(text: "I dati biometrici sono utilizzati per l'autenticazione e la sicurezza?", answer: "Vero"),
        Question(text: "Il termine 'cybersecurity' si riferisce alla protezione dei dati e delle informazioni digitali?", answer: "Vero"),
        Question(text: "La realtà virtuale può essere utilizzata anche per applicazioni mediche?", answer: "Vero"),
        Question(text: "Il primo smartphone a supportare la ricarica wireless è stato l'iPhone 6?", answer: "Falso"),
        Question(text: "Il sistema operativo iOS è basato su Linux?", answer: "Falso"),
        Question(text: "Git è un sistema di controllo versione?", answer: "Vero"),
        Question(text: "La tecnologia 5G utilizza frequenze più alte rispetto alla 4G?", answer: "Vero"),
        Question(text: "Windows 95 è stato lanciato nel 2000?", answer: "Falso"),
        Question(text: "I QR code sono stati inventati negli anni '90?", answer: "Vero"),
        Question(text: "La tecnologia di stampa 3D è utilizzata solo per la produzione di oggetti in plastica?", answer: "Falso")
    ]
    let letteraturaQuestions: [Question] = [
        Question(text: "Miguel de Cervantes ha scritto 'Il racconto di Sancho Panza'?", answer: "Falso"),
        Question(text: "Voltaire è stato autore di 'Le lettere filosofiche'?", answer: "Vero"),
        Question(text: "Il romanzo 'Frankenstein' è stato scritto da Emily Brontë?", answer: "Falso"),
        Question(text: "Thomas Mann è l'autore de 'La montagna incantata'?", answer: "Vero"),
        Question(text: "Il romanzo 'Anna Karenina' è stato scritto da Fëdor Dostoevskij?", answer: "Falso"),
        Question(text: "Jean-Paul Sartre ha scritto 'La nausea'?", answer: "Vero"),
        Question(text: "J.R.R. Tolkien ha scritto 'Il Silmarillion'?", answer: "Vero"),
        Question(text: "Franz Kafka ha scritto 'La prova'?", answer: "Falso"),
        Question(text: "Hermann Hesse ha scritto 'Siddhartha'?", answer: "Vero"),
        Question(text: "Gustave Flaubert è l'autore de 'Madame Bovary'?", answer: "Vero"),
        Question(text: "La 'Divina Commedia' è scritta in terzine incatenate?", answer: "Vero"),
        Question(text: "Il romanzo 'I miserabili' è stato scritto da Fëdor Dostoevskij?", answer: "Falso"),
        Question(text: "Pablo Neruda ha scritto 'Canto general'?", answer: "Vero"),
        Question(text: "William Blake è stato un poeta romantico e pittore inglese?", answer: "Vero"),
        Question(text: "Il 'Cavaliere' di Cristofano Malvezzi è un'opera del Rinascimento?", answer: "Falso"),
        Question(text: "Jonathan Swift è l'autore de 'I viaggi di Gulliver'?", answer: "Vero"),
        Question(text: "George Eliot ha scritto 'Il mulino sulla Floss'?", answer: "Vero"),
        Question(text: "Dante Alighieri ha scritto la 'Vita nuova' dopo la 'Divina Commedia'?", answer: "Vero"),
        Question(text: "La 'Caverna' di Platone è un dialogo che esplora il tema della realtà e della percezione?", answer: "Vero"),
        Question(text: "Shakespeare ha scritto 13 sonetti?", answer: "Falso"),
        Question(text: "La 'Genesi' è un libro che fa parte della Bibbia?", answer: "Vero"),
        Question(text: "Salman Rushdie ha scritto 'I figli della mezzanotte'?", answer: "Vero"),
        Question(text: "I romanzi di Agatha Christie sono principalmente gialli?", answer: "Vero"),
        Question(text: "Joseph Conrad è l'autore di 'Cuore di tenebra'?", answer: "Vero"),
        Question(text: "Il romanzo 'Il giovane Holden' è stato scritto da Ernest Hemingway?", answer: "Falso"),
        Question(text: "Le 'Metamorfosi' sono un'opera di Omero?", answer: "Falso"),
        Question(text: "Oscar Wilde ha scritto 'Il ritratto di Dorian Gray' e 'Salomé'?", answer: "Vero"),
        Question(text: "Leo Tolstoj ha scritto 'Resurrezione'?", answer: "Vero"),
        Question(text: "La 'Caverna' di Platone è una parabola filosofica?", answer: "Vero"),
        Question(text: "Albert Camus è stato anche un noto giornalista?", answer: "Vero"),
        Question(text: "James Joyce ha scritto 'Gente di Dublino'?", answer: "Vero"),
        Question(text: "L'opera 'Fahrenheit 451' è scritta da Aldous Huxley?", answer: "Falso"),
        Question(text: "Proust è l'autore di 'Alla ricerca del tempo perduto'?", answer: "Vero"),
        Question(text: "Il romanzo '1984' è ambientato in un futuro totalitario?", answer: "Vero"),
        Question(text: "Edgar Allan Poe ha scritto 'Il corvo'?", answer: "Vero"),
        Question(text: "I poemi epici di Virgilio hanno come protagonista Achille?", answer: "Falso"),
        Question(text: "I fratelli Grimm sono noti per aver scritto fiabe popolari?", answer: "Vero"),
        Question(text: "Il 'Giocattolo' è una commedia scritta da Luigi Pirandello?", answer: "Falso"),
        Question(text: "Il romanzo 'La strada' è stato scritto da Cormac McCarthy?", answer: "Vero"),
        Question(text: "Charles Dickens ha scritto 'Oliver Twist'?", answer: "Vero"),
        Question(text: "'Don Juan' è un'opera di Lord Byron?", answer: "Vero"),
        Question(text: "Henry James ha scritto 'Il giro di vite'?", answer: "Vero"),
        Question(text: "Cervantes ha scritto 'Il don Chisciotte della Mancia'?", answer: "Vero"),
        Question(text: "John Keats è noto per i suoi poemi epici?", answer: "Falso"),
        Question(text: "Il romanzo 'Il deserto dei Tartari' è stato scritto da Dino Buzzati?", answer: "Vero"),
        Question(text: "Gabriel García Márquez ha scritto 'Cent'anni di solitudine'?", answer: "Vero"),
        Question(text: "La 'Metafisica' è un'opera di Aristotele?", answer: "Vero"),
        Question(text: "Thomas Hardy ha scritto 'Tess dei d'Urberville'?", answer: "Vero"),
        Question(text: "Søren Kierkegaard è un autore danese che ha scritto 'Timore e tremore'?", answer: "Vero"),
        Question(text: "Il romanzo 'Moby Dick' è stato scritto da Nathaniel Hawthorne?", answer: "Falso"),
        Question(text: "La 'Divina Commedia' è scritta in latino?", answer: "Falso"),
        Question(text: "Hermann Melville ha scritto 'Billy Budd'?", answer: "Vero"),
        Question(text: "William Faulkner è stato un autore americano del XX secolo?", answer: "Vero"),
        Question(text: "Haruki Murakami ha scritto 'Norwegian Wood'?", answer: "Vero"),
        Question(text: "La 'Divina Commedia' è stata scritta durante l'Età Moderna?", answer: "Falso"),
        Question(text: "La letteratura romantica si è sviluppata nel XVIII secolo?", answer: "Falso")
    ]
    var score: Int = UserDefaults.standard.integer(forKey: "puntiGiocatore")
    var questionIsDo : [String] = UserDefaults.standard.stringArray(forKey: "domandeFatte")  ?? []
    var totalPercent: Double = 0.0
    var formattedNumber: String = ""
    var arrayQuestions: [Question] = []
    var currentQuestion : Int = 0
    var maxQuestion: Int = 0
    var rightAnswers: Int = 0
    var wrongAnswers: Int = 0
    var argument: [String] = ["Geografia","Storia","Scienza","Arte e cultura","Musica","Cinema e TV","Tecnologia","Letteratura"]
    var result: String = "Complimenti!!!"
    var audioPlayer: AVAudioPlayer?
    func chooseArray (receivedText: String)->[Question]{
        switch receivedText {
        case "Geografia":
            return self.geographyQuestions
        case "Storia":
            return self.historyQuestions
        case "Scienza":
            return self.scienceQuestions
        case "Arte e cultura":
            return self.artAndCultureQuestions
        case "Musica":
            return self.musicQuestions
        case "Cinema e TV":
            return self.cinemaTVQuestions
        case "Tecnologia":
            return self.tecnologiaQuestions
        case "Letteratura":
            return self.letteraturaQuestions
        default:
            return []
        }
    }
    
    func getMaxQuestion(arrayQuestion: [Question])->Int {
        return arrayQuestion.count
    }
    
    func countQuestionCurrent()->Bool {
        if self.currentQuestion + 1 <  self.maxQuestion {
            return true
        } else if self.currentQuestion + 1 ==  self.maxQuestion {
            return false
        }
        return false
    }
    
    private func answerRight(userAnswer: String)->Bool {
        if userAnswer ==  self.arrayQuestions[self.currentQuestion].answer.uppercased() {
            return true
        } else {
            return false
        }
    }
    
    mutating func increeserightAnswers(userAnswer: String ,rightAnswers: Int,sender: UIButton) ->Int{
        var increement = rightAnswers
        if self.answerRight(userAnswer: userAnswer) {
            self.changeColorButtonTemporarily(button: sender, color: .pastelGreen, duration: 1.0)
            self.playErrorSound("ok") 
            increement += 1
            return increement
        }
        
        return increement
    }
    
    mutating func increesewrongAnwers(userAnswer: String ,wrongAnwers: Int,sender: UIButton) ->Int{
        var increement = wrongAnwers
        if self.answerRight(userAnswer: userAnswer) == false {
            self.changeColorButtonTemporarily(button: sender, color: .pastelRed, duration: 1.0)
            self.playErrorSound("error")
            increement += 1
            return increement
        }
        
        return increement
    }
    
    func changeColorButtonTemporarily(button: UIButton, color: UIColor,duration: TimeInterval) {
        button.backgroundColor = color
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            button.backgroundColor = .customOriginalColor
                }
    }
    
    mutating func playErrorSound(_ nameSoud: String) {
        guard let soundURL = Bundle.main.url(forResource: nameSoud, withExtension: "mp3") else {
            print("File audio non trovato.")
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.play()
        } catch {
            print("Errore nella riproduzione del suono: \(error.localizedDescription)")
        }
    }

    func percentAnswer(rightAnswers: Int, maxQuestion: Int) -> Double {
        return Double(rightAnswers) / Double(maxQuestion) * 100
    }
    
    func formatterPercent(totalPercent: Double) ->String{
        return String(format: "%.2f", totalPercent)
    }
    
    mutating func getVariableResult(totalPercent: Double)->String?{
        if totalPercent < 60 {
            playErrorSound("fail")
            return "Peccato, riprova."
            
        } else {
            playErrorSound("win")
            return ""
        }
    }
    
    func styleBtn(btn: UIButton){
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOpacity = 0.5
        btn.layer.shadowOffset = CGSize(width: 4, height: 4)
        btn.layer.shadowRadius = 4
        btn.layer.cornerRadius = 10
        btn.layer.borderWidth = 2
    }
    
    func styleMenuBtn(btn: UIButton){
        if questionIsDo.contains(btn.titleLabel!.text!) {
            btn.layer.borderColor = UIColor.gray.cgColor
            btn.backgroundColor = UIColor.systemGray
            btn.isEnabled = false
            btn.layer.cornerRadius = 10
            btn.layer.shadowRadius = 4
            btn.layer.cornerRadius = 10
            btn.layer.borderWidth = 2
        } else {
            btn.layer.shadowColor = UIColor.black.cgColor
            btn.layer.shadowOpacity = 0.5
            btn.layer.shadowOffset = CGSize(width: 4, height: 4)
            btn.layer.shadowRadius = 4
            btn.layer.cornerRadius = 10
            btn.layer.borderWidth = 2
        }
    }
    
    func getStrResult(rightAnswers: Int, wrongAnswers: Int,formattedNumber: String, result: String , maxQuestion: Int, score: Int)->String {
        return  "Hai risosto esattamente a \(rightAnswers) domande\ne a \(wrongAnswers) sbagliate.\nTotalizzando su \(maxQuestion) domande una percentuale di \(formattedNumber)% risposte esatte.\n\(result) \nCon il tuo totale punti di \(score)"
    }
    
    func removeScore(score: Int, wrongAnswers: Int) -> Int {
        return max(0, score - wrongAnswers)
    }

    func saveScoreArguments(score: Any,string: String,userInfo: String,name: Notification.Name){
        
        UserDefaults.standard.set(score, forKey: string)
        UserDefaults.standard.synchronize()
        NotificationCenter.default.post(name: name, object: nil, userInfo: [userInfo: score])
        
    }
    
    func updateScoreMenu(_ notification: Notification,score: Int)->String {
        var newScore = score
        if let updatedScore = notification.userInfo?["newScore"] as? Int {
            newScore = updatedScore
            return "Score: \(newScore)"
        }
        return "Score: \(newScore)"
    }
    
    func updateArgumentsMenu(_ notification: Notification,questionIsDo: [String]){
        var newquestionIsDo = questionIsDo
        if let updatedquestionIsDo = notification.userInfo?["argumentDo"] as? [String] {
            newquestionIsDo = updatedquestionIsDo
            UserDefaults.standard.set(newquestionIsDo, forKey: "domandeFatte")
        }

    }
    
}
