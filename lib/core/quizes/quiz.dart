// import 'package:cloud_firestore/cloud_firestore.dart';

// Future<void> uploadDataToFireStore() async {
//   for (final sector in quizzes.entries) {
//     uploadDataToFireStoreForField(field: sector.key, data: sector.value);
//   }
// }

// Future<void> uploadDataToFireStoreForField({
//   required String field,
//   required dynamic data,
// }) async {
//   FirebaseFirestore.instance.collection('ListOfQuestions').doc(field).set(data);
// }

// final quizzes = 
//   {
//     'Geography': {
//       'title': 'Geography Quiz',
//       'imageUrl': 'https://example.com/geography.jpg',
//       'questions': {
//         '0': {
//           'correctOptionKey': '1',
//           'questionText': 'What is the capital of France?',
//           'options': {
//             '1': 'Paris',
//             '2': 'London',
//             '3': 'Berlin',
//             '4': 'Madrid',
//           },
//           'answer': 'Paris',
//         },
//         '1': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which country is known as the Land of the Rising Sun?',
//           'options': {
//             '1': 'China',
//             '2': 'Japan',
//             '3': 'South Korea',
//             '4': 'Thailand',
//           },
//           'answer': 'Japan',
//         },
//         '2': {
//           'correctOptionKey': '2',
//           'questionText': 'What is the largest planet in our solar system?',
//           'options': {
//             '1': 'Mars',
//             '2': 'Jupiter',
//             '3': 'Saturn',
//             '4': 'Neptune',
//           },
//           'answer': 'Jupiter',
//         },
//         '3': {
//           'correctOptionKey': '1',
//           'questionText': 'What is the capital of Australia?',
//           'options': {
//             '1': 'Canberra',
//             '2': 'Sydney',
//             '3': 'Melbourne',
//             '4': 'Perth',
//           },
//           'answer': 'Canberra',
//         },
//         '4': {
//           'correctOptionKey': '3',
//           'questionText': 'Which continent is Egypt located in?',
//           'options': {
//             '1': 'Asia',
//             '2': 'Europe',
//             '3': 'Africa',
//             '4': 'North America',
//           },
//           'answer': 'Africa',
//         },
//         '5': {
//           'correctOptionKey': '4',
//           'questionText': 'What is the longest river in the world?',
//           'options': {
//             '1': 'Amazon',
//             '2': 'Yangtze',
//             '3': 'Mississippi',
//             '4': 'Nile',
//           },
//           'answer': 'Nile',
//         },
//         '6': {
//           'correctOptionKey': '1',
//           'questionText': 'Which country has the most time zones?',
//           'options': {
//             '1': 'Russia',
//             '2': 'United States',
//             '3': 'China',
//             '4': 'Canada',
//           },
//           'answer': 'Russia',
//         },
//         '7': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the smallest country in the world by land area?',
//           'options': {
//             '1': 'Monaco',
//             '2': 'Vatican City',
//             '3': 'San Marino',
//             '4': 'Liechtenstein',
//           },
//           'answer': 'Vatican City',
//         },
//         '8': {
//           'correctOptionKey': '4',
//           'questionText': 'Which ocean is the largest?',
//           'options': {
//             '1': 'Atlantic',
//             '2': 'Indian',
//             '3': 'Arctic',
//             '4': 'Pacific',
//           },
//           'answer': 'Pacific',
//         },
//         '9': {
//           'correctOptionKey': '3',
//           'questionText': 'Which is the longest mountain range in the world?',
//           'options': {
//             '1': 'Himalayas',
//             '2': 'Rockies',
//             '3': 'Andes',
//             '4': 'Alps',
//           },
//           'answer': 'Andes',
//         },
//         '10': {
//           'correctOptionKey': '1',
//           'questionText': 'What is the largest desert in the world?',
//           'options': {
//             '1': 'Sahara',
//             '2': 'Kalahari',
//             '3': 'Gobi',
//             '4': 'Atacama',
//           },
//           'answer': 'Sahara',
//         },
//         '11': {
//           'correctOptionKey': '2',
//           'questionText': 'Which country has the longest coastline?',
//           'options': {
//             '1': 'Australia',
//             '2': 'Canada',
//             '3': 'United States',
//             '4': 'Brazil',
//           },
//           'answer': 'Canada',
//         },
//         '12': {
//           'correctOptionKey': '3',
//           'questionText': 'Which is the largest country by area?',
//           'options': {
//             '1': 'United States',
//             '2': 'China',
//             '3': 'Russia',
//             '4': 'Canada',
//           },
//           'answer': 'Russia',
//         },
//         '13': {
//           'correctOptionKey': '4',
//           'questionText': 'What is the smallest continent?',
//           'options': {
//             '1': 'Europe',
//             '2': 'Africa',
//             '3': 'Asia',
//             '4': 'Australia',
//           },
//           'answer': 'Australia',
//         },
//         '14': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which continent is known for having the most countries?',
//           'options': {
//             '1': 'Africa',
//             '2': 'Asia',
//             '3': 'Europe',
//             '4': 'North America',
//           },
//           'answer': 'Africa',
//         },
//         '15': {
//           'correctOptionKey': '2',
//           'questionText': 'What is the largest island in the world?',
//           'options': {
//             '1': 'Australia',
//             '2': 'Greenland',
//             '3': 'New Guinea',
//             '4': 'Borneo',
//           },
//           'answer': 'Greenland',
//         },
//         '16': {
//           'correctOptionKey': '3',
//           'questionText': 'Which river flows through Egypt?',
//           'options': {
//             '1': 'Amazon',
//             '2': 'Ganges',
//             '3': 'Nile',
//             '4': 'Yangtze',
//           },
//           'answer': 'Nile',
//         },
//         '17': {
//           'correctOptionKey': '4',
//           'questionText': 'Which is the largest island in the Caribbean?',
//           'options': {
//             '1': 'Cuba',
//             '2': 'Jamaica',
//             '3': 'Hispaniola',
//             '4': 'Puerto Rico',
//           },
//           'answer': 'Cuba',
//         },
//         '18': {
//           'correctOptionKey': '1',
//           'questionText': 'Which is the capital city of Canada?',
//           'options': {
//             '1': 'Ottawa',
//             '2': 'Toronto',
//             '3': 'Vancouver',
//             '4': 'Montreal',
//           },
//           'answer': 'Ottawa',
//         },
//         '19': {
//           'correctOptionKey': '2',
//           'questionText': 'Which is the longest river in South America?',
//           'options': {
//             '1': 'Orinoco',
//             '2': 'Amazon',
//             '3': 'Parana',
//             '4': 'Mekong',
//           },
//           'answer': 'Amazon',
//         },
//         '20': {
//           'correctOptionKey': '3',
//           'questionText': 'What is the highest mountain in the world?',
//           'options': {
//             '1': 'Mount Everest',
//             '2': 'Mount Kilimanjaro',
//             '3': 'Mount Fuji',
//             '4': 'Mount McKinley',
//           },
//           'answer': 'Mount Everest',
//         },
//         '21': {
//           'correctOptionKey': '4',
//           'questionText': 'Which country has the largest population?',
//           'options': {
//             '1': 'India',
//             '2': 'United States',
//             '3': 'China',
//             '4': 'Russia',
//           },
//           'answer': 'China',
//         },
//         '22': {
//           'correctOptionKey': '1',
//           'questionText': 'Which is the largest city by population?',
//           'options': {
//             '1': 'Tokyo',
//             '2': 'Shanghai',
//             '3': 'Delhi',
//             '4': 'New York',
//           },
//           'answer': 'Tokyo',
//         },
//         '23': {
//           'correctOptionKey': '2',
//           'questionText': 'Which desert is the driest on Earth?',
//           'options': {
//             '1': 'Kalahari',
//             '2': 'Atacama',
//             '3': 'Sahara',
//             '4': 'Gobi',
//           },
//           'answer': 'Atacama',
//         },
//         '24': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which continent is known for having the least amount of rainfall?',
//           'options': {
//             '1': 'Asia',
//             '2': 'North America',
//             '3': 'Africa',
//             '4': 'Australia',
//           },
//           'answer': 'Africa',
//         },
//         '25': {
//           'correctOptionKey': '4',
//           'questionText': 'Which country is home to the Grand Canyon?',
//           'options': {
//             '1': 'Mexico',
//             '2': 'United States',
//             '3': 'Canada',
//             '4': 'Australia',
//           },
//           'answer': 'United States',
//         },
//         '26': {
//           'correctOptionKey': '1',
//           'questionText': 'What is the capital of Japan?',
//           'options': {'1': 'Tokyo', '2': 'Kyoto', '3': 'Osaka', '4': 'Nagoya'},
//           'answer': 'Tokyo',
//         },
//         '27': {
//           'correctOptionKey': '2',
//           'questionText': 'What is the most populous country in Africa?',
//           'options': {
//             '1': 'Kenya',
//             '2': 'Nigeria',
//             '3': 'Egypt',
//             '4': 'South Africa',
//           },
//           'answer': 'Nigeria',
//         },
//         '28': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which country is known as the "Land of the Pharaohs"?',
//           'options': {'1': 'Syria', '2': 'Jordan', '3': 'Egypt', '4': 'Iraq'},
//           'answer': 'Egypt',
//         },
//         '29': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which is the largest country in Europe by land area?',
//           'options': {
//             '1': 'Germany',
//             '2': 'France',
//             '3': 'Poland',
//             '4': 'Russia',
//           },
//           'answer': 'Russia',
//         },
//       },
//     },
//     'Science': {
//       'title': 'Science Quiz',
//       'imageUrl': 'https://example.com/science.jpg',
//       'questions': {
//         '0': {
//           'correctOptionKey': '1',
//           'questionText': 'What is the chemical symbol for gold?',
//           'options': {'1': 'Au', '2': 'Ag', '3': 'Fe', '4': 'Hg'},
//           'answer': 'Au',
//         },
//         '1': {
//           'correctOptionKey': '2',
//           'questionText': 'Which planet is known as the "Red Planet"?',
//           'options': {'1': 'Mars', '2': 'Venus', '3': 'Jupiter', '4': 'Saturn'},
//           'answer': 'Mars',
//         },
//         '2': {
//           'correctOptionKey': '3',
//           'questionText': 'What is the largest organ in the human body?',
//           'options': {'1': 'Liver', '2': 'Skin', '3': 'Heart', '4': 'Brain'},
//           'answer': 'Skin',
//         },
//         '3': {
//           'correctOptionKey': '1',
//           'questionText': 'What is the chemical symbol for water?',
//           'options': {'1': 'H2O', '2': 'CO2', '3': 'O2', '4': 'H2'},
//           'answer': 'H2O',
//         },
//         '4': {
//           'correctOptionKey': '4',
//           'questionText': 'Which element is represented by the symbol "O"?',
//           'options': {
//             '1': 'Oxygen',
//             '2': 'Osmium',
//             '3': 'Ozone',
//             '4': 'Oxygen',
//           },
//           'answer': 'Oxygen',
//         },
//         '5': {
//           'correctOptionKey': '2',
//           'questionText': 'What gas do plants absorb from the atmosphere?',
//           'options': {
//             '1': 'Oxygen',
//             '2': 'Carbon Dioxide',
//             '3': 'Nitrogen',
//             '4': 'Hydrogen',
//           },
//           'answer': 'Carbon Dioxide',
//         },
//         '6': {
//           'correctOptionKey': '3',
//           'questionText': 'What is the powerhouse of the cell?',
//           'options': {
//             '1': 'Nucleus',
//             '2': 'Ribosome',
//             '3': 'Mitochondria',
//             '4': 'Chloroplast',
//           },
//           'answer': 'Mitochondria',
//         },
//         '7': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which organ in the human body is primarily responsible for detoxification?',
//           'options': {'1': 'Lungs', '2': 'Heart', '3': 'Kidneys', '4': 'Liver'},
//           'answer': 'Liver',
//         },
//         '8': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which is the most common element in the Earth\'s crust?',
//           'options': {
//             '1': 'Oxygen',
//             '2': 'Silicon',
//             '3': 'Aluminum',
//             '4': 'Iron',
//           },
//           'answer': 'Oxygen',
//         },
//         '9': {
//           'correctOptionKey': '2',
//           'questionText': 'What is the boiling point of water?',
//           'options': {'1': '90°C', '2': '100°C', '3': '120°C', '4': '80°C'},
//           'answer': '100°C',
//         },
//         '10': {
//           'correctOptionKey': '3',
//           'questionText': 'What is the atomic number of carbon?',
//           'options': {'1': '6', '2': '8', '3': '6', '4': '12'},
//           'answer': '6',
//         },
//         '11': {
//           'correctOptionKey': '4',
//           'questionText': 'Who is known as the father of modern physics?',
//           'options': {
//             '1': 'Isaac Newton',
//             '2': 'Nikola Tesla',
//             '3': 'Galileo Galilei',
//             '4': 'Albert Einstein',
//           },
//           'answer': 'Albert Einstein',
//         },
//         '12': {
//           'correctOptionKey': '1',
//           'questionText': 'What is the most common blood type?',
//           'options': {'1': 'O+', '2': 'A+', '3': 'B+', '4': 'AB+'},
//           'answer': 'O+',
//         },
//         '13': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the process by which plants make their own food?',
//           'options': {
//             '1': 'Respiration',
//             '2': 'Photosynthesis',
//             '3': 'Germination',
//             '4': 'Transpiration',
//           },
//           'answer': 'Photosynthesis',
//         },
//         '14': {
//           'correctOptionKey': '3',
//           'questionText': 'What is the main source of energy for the Earth?',
//           'options': {
//             '1': 'Geothermal Energy',
//             '2': 'Nuclear Energy',
//             '3': 'The Sun',
//             '4': 'Wind Energy',
//           },
//           'answer': 'The Sun',
//         },
//         '15': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which type of rock is formed by cooling and solidifying of magma?',
//           'options': {
//             '1': 'Sedimentary',
//             '2': 'Metamorphic',
//             '3': 'Igneous',
//             '4': 'Coal',
//           },
//           'answer': 'Igneous',
//         },
//         '16': {
//           'correctOptionKey': '1',
//           'questionText': 'Which planet is closest to the Sun?',
//           'options': {'1': 'Mercury', '2': 'Venus', '3': 'Earth', '4': 'Mars'},
//           'answer': 'Mercury',
//         },
//         '17': {
//           'correctOptionKey': '2',
//           'questionText': 'What is the chemical symbol for potassium?',
//           'options': {'1': 'Po', '2': 'K', '3': 'Pt', '4': 'P'},
//           'answer': 'K',
//         },
//         '18': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which organ is responsible for pumping blood throughout the body?',
//           'options': {'1': 'Liver', '2': 'Brain', '3': 'Heart', '4': 'Lungs'},
//           'answer': 'Heart',
//         },
//         '19': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which part of the human brain is responsible for controlling balance?',
//           'options': {
//             '1': 'Cerebrum',
//             '2': 'Thalamus',
//             '3': 'Medulla Oblongata',
//             '4': 'Cerebellum',
//           },
//           'answer': 'Cerebellum',
//         },
//         '20': {
//           'correctOptionKey': '1',
//           'questionText': 'What does DNA stand for?',
//           'options': {
//             '1': 'Deoxyribonucleic Acid',
//             '2': 'Deoxyribose Acid',
//             '3': 'Double Nucleic Acid',
//             '4': 'Deoxynucleotide Acid',
//           },
//           'answer': 'Deoxyribonucleic Acid',
//         },
//         '21': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the process by which a caterpillar becomes a butterfly?',
//           'options': {
//             '1': 'Germination',
//             '2': 'Metamorphosis',
//             '3': 'Transpiration',
//             '4': 'Pollination',
//           },
//           'answer': 'Metamorphosis',
//         },
//         '22': {
//           'correctOptionKey': '3',
//           'questionText': 'Which gas is most commonly used in light bulbs?',
//           'options': {
//             '1': 'Oxygen',
//             '2': 'Nitrogen',
//             '3': 'Argon',
//             '4': 'Carbon Dioxide',
//           },
//           'answer': 'Argon',
//         },
//         '23': {
//           'correctOptionKey': '4',
//           'questionText': 'Which of the following is not a type of cloud?',
//           'options': {
//             '1': 'Cirrus',
//             '2': 'Cumulus',
//             '3': 'Stratus',
//             '4': 'Thermosphere',
//           },
//           'answer': 'Thermosphere',
//         },
//         '24': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which force is responsible for holding the planets in orbit around the Sun?',
//           'options': {
//             '1': 'Gravity',
//             '2': 'Friction',
//             '3': 'Magnetism',
//             '4': 'Electrostatic Force',
//           },
//           'answer': 'Gravity',
//         },
//         '25': {
//           'correctOptionKey': '2',
//           'questionText': 'Which type of animal is a frog?',
//           'options': {
//             '1': 'Mammal',
//             '2': 'Amphibian',
//             '3': 'Reptile',
//             '4': 'Fish',
//           },
//           'answer': 'Amphibian',
//         },
//         '26': {
//           'correctOptionKey': '3',
//           'questionText': 'What is the unit of electric current?',
//           'options': {'1': 'Volt', '2': 'Ohm', '3': 'Ampere', '4': 'Watt'},
//           'answer': 'Ampere',
//         },
//         '27': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which chemical element is most abundant in the Earth\'s atmosphere?',
//           'options': {
//             '1': 'Oxygen',
//             '2': 'Carbon',
//             '3': 'Nitrogen',
//             '4': 'Hydrogen',
//           },
//           'answer': 'Nitrogen',
//         },
//         '28': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the study of the Earth\'s physical structure and substances?',
//           'options': {
//             '1': 'Geology',
//             '2': 'Astronomy',
//             '3': 'Biology',
//             '4': 'Physics',
//           },
//           'answer': 'Geology',
//         },
//         '29': {
//           'correctOptionKey': '2',
//           'questionText': 'What is the term for animals that are warm-blooded?',
//           'options': {
//             '1': 'Ectothermic',
//             '2': 'Endothermic',
//             '3': 'Poikilothermic',
//             '4': 'Homeothermic',
//           },
//           'answer': 'Endothermic',
//         },
//       },
//     },
//     'Sports': {
//       'title': 'Sports Quiz',
//       'imageUrl': 'https://example.com/sports.jpg',
//       'questions': {
//         '0': {
//           'correctOptionKey': '1',
//           'questionText': 'Which country won the FIFA World Cup in 2018?',
//           'options': {
//             '1': 'France',
//             '2': 'Brazil',
//             '3': 'Germany',
//             '4': 'Argentina',
//           },
//           'answer': 'France',
//         },
//         '1': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which athlete is known as "The Greatest of All Time" in tennis?',
//           'options': {
//             '1': 'Roger Federer',
//             '2': 'Serena Williams',
//             '3': 'Rafael Nadal',
//             '4': 'Novak Djokovic',
//           },
//           'answer': 'Serena Williams',
//         },
//         '2': {
//           'correctOptionKey': '3',
//           'questionText': 'In which sport would you perform a slam dunk?',
//           'options': {
//             '1': 'Football',
//             '2': 'Tennis',
//             '3': 'Basketball',
//             '4': 'Baseball',
//           },
//           'answer': 'Basketball',
//         },
//         '3': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which country is known for its national sport of baseball?',
//           'options': {
//             '1': 'Japan',
//             '2': 'Mexico',
//             '3': 'Cuba',
//             '4': 'United States',
//           },
//           'answer': 'United States',
//         },
//         '4': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which athlete is known for winning the most Olympic gold medals?',
//           'options': {
//             '1': 'Michael Phelps',
//             '2': 'Usain Bolt',
//             '3': 'Simone Biles',
//             '4': 'Carl Lewis',
//           },
//           'answer': 'Michael Phelps',
//         },
//         '5': {
//           'correctOptionKey': '2',
//           'questionText': 'Which country hosted the 2016 Summer Olympics?',
//           'options': {
//             '1': 'China',
//             '2': 'Brazil',
//             '3': 'Australia',
//             '4': 'United Kingdom',
//           },
//           'answer': 'Brazil',
//         },
//         '6': {
//           'correctOptionKey': '3',
//           'questionText': 'Which sport is played at Wimbledon?',
//           'options': {
//             '1': 'Football',
//             '2': 'Basketball',
//             '3': 'Tennis',
//             '4': 'Cricket',
//           },
//           'answer': 'Tennis',
//         },
//         '7': {
//           'correctOptionKey': '4',
//           'questionText': 'Which team has the most Super Bowl victories?',
//           'options': {
//             '1': 'New England Patriots',
//             '2': 'Dallas Cowboys',
//             '3': 'San Francisco 49ers',
//             '4': 'Pittsburgh Steelers',
//           },
//           'answer': 'Pittsburgh Steelers',
//         },
//         '8': {
//           'correctOptionKey': '1',
//           'questionText': 'Which country is the birthplace of rugby?',
//           'options': {
//             '1': 'England',
//             '2': 'South Africa',
//             '3': 'New Zealand',
//             '4': 'Australia',
//           },
//           'answer': 'England',
//         },
//         '9': {
//           'correctOptionKey': '2',
//           'questionText': 'Who is known as the "King of Tennis"?',
//           'options': {
//             '1': 'Roger Federer',
//             '2': 'Serena Williams',
//             '3': 'Rafael Nadal',
//             '4': 'Novak Djokovic',
//           },
//           'answer': 'Serena Williams',
//         },
//         '10': {
//           'correctOptionKey': '3',
//           'questionText':
//               'What is the maximum score in a single frame of bowling?',
//           'options': {'1': '10', '2': '20', '3': '30', '4': '50'},
//           'answer': '30',
//         },
//         '11': {
//           'correctOptionKey': '4',
//           'questionText': 'Which country won the 2018 FIFA World Cup?',
//           'options': {
//             '1': 'Brazil',
//             '2': 'France',
//             '3': 'Germany',
//             '4': 'Argentina',
//           },
//           'answer': 'France',
//         },
//         '12': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which tennis player has the most Grand Slam singles titles?',
//           'options': {
//             '1': 'Roger Federer',
//             '2': 'Rafael Nadal',
//             '3': 'Serena Williams',
//             '4': 'Novak Djokovic',
//           },
//           'answer': 'Roger Federer',
//         },
//         '13': {
//           'correctOptionKey': '2',
//           'questionText': 'Which country has won the most World Cup trophies?',
//           'options': {
//             '1': 'Italy',
//             '2': 'Brazil',
//             '3': 'Germany',
//             '4': 'Argentina',
//           },
//           'answer': 'Brazil',
//         },
//         '14': {
//           'correctOptionKey': '3',
//           'questionText': 'Which country won the first World Cup in 1930?',
//           'options': {
//             '1': 'Brazil',
//             '2': 'Germany',
//             '3': 'Uruguay',
//             '4': 'Argentina',
//           },
//           'answer': 'Uruguay',
//         },
//         '15': {
//           'correctOptionKey': '4',
//           'questionText': 'Which sport uses a bat and ball?',
//           'options': {
//             '1': 'Football',
//             '2': 'Rugby',
//             '3': 'Basketball',
//             '4': 'Baseball',
//           },
//           'answer': 'Baseball',
//         },
//         '16': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the maximum number of players on a soccer team?',
//           'options': {'1': '11', '2': '12', '3': '10', '4': '9'},
//           'answer': '11',
//         },
//         '17': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which athlete holds the record for the fastest 100m sprint?',
//           'options': {
//             '1': 'Usain Bolt',
//             '2': 'Carl Lewis',
//             '3': 'Justin Gatlin',
//             '4': 'Tyson Gay',
//           },
//           'answer': 'Usain Bolt',
//         },
//         '18': {
//           'correctOptionKey': '3',
//           'questionText': 'Who is the all-time top scorer in the NBA?',
//           'options': {
//             '1': 'Kobe Bryant',
//             '2': 'Michael Jordan',
//             '3': 'LeBron James',
//             '4': 'Karl Malone',
//           },
//           'answer': 'LeBron James',
//         },
//         '19': {
//           'correctOptionKey': '4',
//           'questionText': 'Which sport uses a puck?',
//           'options': {
//             '1': 'Baseball',
//             '2': 'Football',
//             '3': 'Basketball',
//             '4': 'Ice Hockey',
//           },
//           'answer': 'Ice Hockey',
//         },
//         '20': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Who won the 2012 London Olympics 100m sprint gold medal?',
//           'options': {
//             '1': 'Usain Bolt',
//             '2': 'Tyson Gay',
//             '3': 'Asafa Powell',
//             '4': 'Yohan Blake',
//           },
//           'answer': 'Usain Bolt',
//         },
//         '21': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which country is the home of the famous "All Blacks" rugby team?',
//           'options': {
//             '1': 'Australia',
//             '2': 'New Zealand',
//             '3': 'South Africa',
//             '4': 'England',
//           },
//           'answer': 'New Zealand',
//         },
//         '22': {
//           'correctOptionKey': '3',
//           'questionText': 'Which country has the most Olympic gold medals?',
//           'options': {
//             '1': 'Germany',
//             '2': 'United States',
//             '3': 'United States',
//             '4': 'China',
//           },
//           'answer': 'United States',
//         },
//         '23': {
//           'correctOptionKey': '4',
//           'questionText': 'Which is the national sport of Canada?',
//           'options': {
//             '1': 'Baseball',
//             '2': 'Hockey',
//             '3': 'Football',
//             '4': 'Lacrosse',
//           },
//           'answer': 'Lacrosse',
//         },
//         '24': {
//           'correctOptionKey': '1',
//           'questionText': 'Which country won the Rugby World Cup in 2019?',
//           'options': {
//             '1': 'South Africa',
//             '2': 'England',
//             '3': 'New Zealand',
//             '4': 'Australia',
//           },
//           'answer': 'South Africa',
//         },
//         '25': {
//           'correctOptionKey': '2',
//           'questionText': 'Who is known as the "King of Football"?',
//           'options': {
//             '1': 'Cristiano Ronaldo',
//             '2': 'Lionel Messi',
//             '3': 'Pele',
//             '4': 'Diego Maradona',
//           },
//           'answer': 'Lionel Messi',
//         },
//         '26': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which country has won the most UEFA Champions League titles?',
//           'options': {
//             '1': 'Barcelona',
//             '2': 'Real Madrid',
//             '3': 'Real Madrid',
//             '4': 'Bayern Munich',
//           },
//           'answer': 'Real Madrid',
//         },
//         '27': {
//           'correctOptionKey': '4',
//           'questionText': 'Which tennis player is known as the "King of Clay"?',
//           'options': {
//             '1': 'Roger Federer',
//             '2': 'Rafael Nadal',
//             '3': 'Novak Djokovic',
//             '4': 'Andy Murray',
//           },
//           'answer': 'Rafael Nadal',
//         },
//         '28': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the maximum length of an NFL football field?',
//           'options': {
//             '1': '120 yards',
//             '2': '100 yards',
//             '3': '80 yards',
//             '4': '60 yards',
//           },
//           'answer': '120 yards',
//         },
//         '29': {
//           'correctOptionKey': '2',
//           'questionText': 'Which country won the 2010 FIFA World Cup?',
//           'options': {
//             '1': 'Spain',
//             '2': 'Spain',
//             '3': 'Brazil',
//             '4': 'Germany',
//           },
//           'answer': 'Spain',
//         },
//       },
//     },
//     'Technology': {
//       'title': 'Technology Quiz',
//       'imageUrl': 'https://example.com/Technology.jpg',
//       'questions': {
//         '0': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the most commonly used programming language in web development?',
//           'options': {
//             '1': 'JavaScript',
//             '2': 'Python',
//             '3': 'Java',
//             '4': 'C++',
//           },
//           'answer': 'JavaScript',
//         },
//         '1': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which company developed the first personal computer?',
//           'options': {'1': 'Microsoft', '2': 'Apple', '3': 'IBM', '4': 'Dell'},
//           'answer': 'Apple',
//         },
//         '2': {
//           'correctOptionKey': '3',
//           'questionText': 'What does HTML stand for?',
//           'options': {
//             '1': 'HyperText Markup Language',
//             '2': 'HighText Markup Language',
//             '3': 'Hyper Transfer Markup Language',
//             '4': 'HighText Machine Language',
//           },
//           'answer': 'HyperText Markup Language',
//         },
//         '3': {
//           'correctOptionKey': '4',
//           'questionText': 'What is the name of the first computer virus?',
//           'options': {
//             '1': 'Melissa',
//             '2': 'ILOVEYOU',
//             '3': 'MyDoom',
//             '4': 'Creeper',
//           },
//           'answer': 'Creeper',
//         },
//         '4': {
//           'correctOptionKey': '1',
//           'questionText': 'What is the main function of an operating system?',
//           'options': {
//             '1': 'Manage hardware and software',
//             '2': 'Control the processor speed',
//             '3': 'Run applications',
//             '4': 'Store files on the disk',
//           },
//           'answer': 'Manage hardware and software',
//         },
//         '5': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which programming language is primarily used for Android development?',
//           'options': {'1': 'Swift', '2': 'Java', '3': 'C#', '4': 'Kotlin'},
//           'answer': 'Java',
//         },
//         '6': {
//           'correctOptionKey': '3',
//           'questionText': 'What does CPU stand for?',
//           'options': {
//             '1': 'Central Process Unit',
//             '2': 'Central Processing Unit',
//             '3': 'Central Processor Unit',
//             '4': 'Core Processor Unit',
//           },
//           'answer': 'Central Processing Unit',
//         },
//         '7': {
//           'correctOptionKey': '4',
//           'questionText': 'Which company is known for its product "iPhone"?',
//           'options': {
//             '1': 'Samsung',
//             '2': 'Huawei',
//             '3': 'Nokia',
//             '4': 'Apple',
//           },
//           'answer': 'Apple',
//         },
//         '8': {
//           'correctOptionKey': '1',
//           'questionText': 'Which is the most popular search engine?',
//           'options': {
//             '1': 'Google',
//             '2': 'Bing',
//             '3': 'Yahoo',
//             '4': 'DuckDuckGo',
//           },
//           'answer': 'Google',
//         },
//         '9': {
//           'correctOptionKey': '2',
//           'questionText': 'What year was the first iPhone released?',
//           'options': {'1': '2006', '2': '2007', '3': '2008', '4': '2009'},
//           'answer': '2007',
//         },
//         '10': {
//           'correctOptionKey': '3',
//           'questionText':
//               'What is the name of the most popular open-source operating system?',
//           'options': {
//             '1': 'Ubuntu',
//             '2': 'Windows',
//             '3': 'Linux',
//             '4': 'Mac OS',
//           },
//           'answer': 'Linux',
//         },
//         '11': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which programming language is used for iOS development?',
//           'options': {'1': 'Java', '2': 'C++', '3': 'Kotlin', '4': 'Swift'},
//           'answer': 'Swift',
//         },
//         '12': {
//           'correctOptionKey': '1',
//           'questionText': 'What does "URL" stand for?',
//           'options': {
//             '1': 'Uniform Resource Locator',
//             '2': 'Universal Resource Locator',
//             '3': 'Uniform Regular Locator',
//             '4': 'Universal Resource Link',
//           },
//           'answer': 'Uniform Resource Locator',
//         },
//         '13': {
//           'correctOptionKey': '2',
//           'questionText': 'What is the main function of RAM in a computer?',
//           'options': {
//             '1': 'Store permanent data',
//             '2': 'Store temporary data',
//             '3': 'Control hardware components',
//             '4': 'Process user input',
//           },
//           'answer': 'Store temporary data',
//         },
//         '14': {
//           'correctOptionKey': '3',
//           'questionText': 'What is the most widely used programming language?',
//           'options': {'1': 'C', '2': 'C++', '3': 'JavaScript', '4': 'Python'},
//           'answer': 'JavaScript',
//         },
//         '15': {
//           'correctOptionKey': '4',
//           'questionText': 'What does "HTTP" stand for?',
//           'options': {
//             '1': 'Hyper Text Transfer Protocol',
//             '2': 'Hyper Text Transport Protocol',
//             '3': 'Hyper Transfer Text Protocol',
//             '4': 'Hyper Text Test Protocol',
//           },
//           'answer': 'Hyper Text Transfer Protocol',
//         },
//         '16': {
//           'correctOptionKey': '1',
//           'questionText': 'Which company developed the first smartphone?',
//           'options': {
//             '1': 'IBM',
//             '2': 'Apple',
//             '3': 'Samsung',
//             '4': 'Motorola',
//           },
//           'answer': 'IBM',
//         },
//         '17': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is a cloud computing service?',
//           'options': {
//             '1': 'Google Drive',
//             '2': 'Dropbox',
//             '3': 'Apple iCloud',
//             '4': 'All of the above',
//           },
//           'answer': 'All of the above',
//         },
//         '18': {
//           'correctOptionKey': '3',
//           'questionText': 'What is the primary function of a router?',
//           'options': {
//             '1': 'Store data',
//             '2': 'Provide power to the computer',
//             '3': 'Direct network traffic',
//             '4': 'Display information',
//           },
//           'answer': 'Direct network traffic',
//         },
//         '19': {
//           'correctOptionKey': '4',
//           'questionText': 'Which technology is used for virtual reality?',
//           'options': {
//             '1': 'Smartphones',
//             '2': 'Glasses',
//             '3': 'Headsets',
//             '4': 'All of the above',
//           },
//           'answer': 'All of the above',
//         },
//         '20': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which programming language is used for creating websites?',
//           'options': {'1': 'HTML', '2': 'JavaScript', '3': 'C#', '4': 'Python'},
//           'answer': 'HTML',
//         },
//         '21': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the main use of a graphics card in a computer?',
//           'options': {
//             '1': 'To store files',
//             '2': 'To process graphics',
//             '3': 'To connect to the internet',
//             '4': 'To power the computer',
//           },
//           'answer': 'To process graphics',
//         },
//         '22': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which company is known for its game console "PlayStation"?',
//           'options': {
//             '1': 'Nintendo',
//             '2': 'Microsoft',
//             '3': 'Sony',
//             '4': 'Sega',
//           },
//           'answer': 'Sony',
//         },
//         '23': {
//           'correctOptionKey': '4',
//           'questionText':
//               'What is the latest version of Windows operating system?',
//           'options': {
//             '1': 'Windows 7',
//             '2': 'Windows 8',
//             '3': 'Windows 10',
//             '4': 'Windows 11',
//           },
//           'answer': 'Windows 11',
//         },
//         '24': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which programming language is used for Android app development?',
//           'options': {'1': 'Java', '2': 'Swift', '3': 'C#', '4': 'Ruby'},
//           'answer': 'Java',
//         },
//         '25': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which company developed the Windows operating system?',
//           'options': {
//             '1': 'Apple',
//             '2': 'Microsoft',
//             '3': 'Google',
//             '4': 'IBM',
//           },
//           'answer': 'Microsoft',
//         },
//         '26': {
//           'correctOptionKey': '3',
//           'questionText': 'What does the "www" stand for in a website URL?',
//           'options': {
//             '1': 'World Wide Web',
//             '2': 'World Web Wide',
//             '3': 'Wide Web World',
//             '4': 'Web World Wide',
//           },
//           'answer': 'World Wide Web',
//         },
//         '27': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which programming language is mainly used for statistical analysis?',
//           'options': {'1': 'JavaScript', '2': 'Python', '3': 'Java', '4': 'R'},
//           'answer': 'R',
//         },
//         '28': {
//           'correctOptionKey': '1',
//           'questionText': 'Which technology is associated with cryptocurrency?',
//           'options': {
//             '1': 'Blockchain',
//             '2': 'Cloud computing',
//             '3': 'Quantum computing',
//             '4': 'Artificial Intelligence',
//           },
//           'answer': 'Blockchain',
//         },
//         '29': {
//           'correctOptionKey': '2',
//           'questionText': 'What does the acronym "IoT" stand for?',
//           'options': {
//             '1': 'Internet of Things',
//             '2': 'Internet of Technology',
//             '3': 'Information of Things',
//             '4': 'International Online Technology',
//           },
//           'answer': 'Internet of Things',
//         },
//       },
//     },
//     'Flutter & Dart': {
//       'title': 'Flutter & Dart Quiz',
//       'imageUrl': 'https://example.com/Flutter & Dart.jpg',
//       'questions': {
//         '0': {
//           'correctOptionKey': '1',
//           'questionText': 'What is Flutter?',
//           'options': {
//             '1': 'A framework for building natively compiled applications',
//             '2': 'A programming language',
//             '3': 'A database system',
//             '4': 'A text editor',
//           },
//           'answer': 'A framework for building natively compiled applications',
//         },
//         '1': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which language is used to write Flutter applications?',
//           'options': {
//             '1': 'JavaScript',
//             '2': 'Dart',
//             '3': 'Kotlin',
//             '4': 'Swift',
//           },
//           'answer': 'Dart',
//         },
//         '2': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which widget in Flutter is used for rendering images?',
//           'options': {'1': 'Text', '2': 'Container', '3': 'Image', '4': 'Icon'},
//           'answer': 'Image',
//         },
//         '3': {
//           'correctOptionKey': '4',
//           'questionText': 'Which function is the entry point of a Flutter app?',
//           'options': {
//             '1': 'startApp()',
//             '2': 'main()',
//             '3': 'runApp()',
//             '4': 'initApp()',
//           },
//           'answer': 'main()',
//         },
//         '4': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which widget is used to arrange other widgets in a column in Flutter?',
//           'options': {
//             '1': 'Column',
//             '2': 'Row',
//             '3': 'Stack',
//             '4': 'Container',
//           },
//           'answer': 'Column',
//         },
//         '5': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which Dart operator is used for null-aware programming?',
//           'options': {'1': '!!', '2': '?.', '3': '&&', '4': '=='},
//           'answer': '?.',
//         },
//         '6': {
//           'correctOptionKey': '3',
//           'questionText': 'What does the `setState()` function do in Flutter?',
//           'options': {
//             '1': 'Refreshes the app',
//             '2': 'Builds a new screen',
//             '3': 'Updates the UI',
//             '4': 'Opens a new dialog',
//           },
//           'answer': 'Updates the UI',
//         },
//         '7': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is the default constructor in Dart?',
//           'options': {
//             '1': 'Named constructor',
//             '2': 'Factory constructor',
//             '3': 'Implicit constructor',
//             '4': 'Default constructor',
//           },
//           'answer': 'Default constructor',
//         },
//         '8': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which widget is used to display a single line of text in Flutter?',
//           'options': {'1': 'Text', '2': 'Column', '3': 'Container', '4': 'Row'},
//           'answer': 'Text',
//         },
//         '9': {
//           'correctOptionKey': '2',
//           'questionText': 'What is the purpose of `Future` in Dart?',
//           'options': {
//             '1': 'To manage async events',
//             '2': 'To represent a value that will be available in the future',
//             '3': 'To store large datasets',
//             '4': 'To optimize app performance',
//           },
//           'answer': 'To represent a value that will be available in the future',
//         },
//         '10': {
//           'correctOptionKey': '3',
//           'questionText': 'Which function is used to start a Flutter app?',
//           'options': {
//             '1': 'mainApp()',
//             '2': 'startApp()',
//             '3': 'runApp()',
//             '4': 'initializeApp()',
//           },
//           'answer': 'runApp()',
//         },
//         '11': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is a stateful widget in Flutter?',
//           'options': {
//             '1': 'Container',
//             '2': 'Text',
//             '3': 'Row',
//             '4': 'StatefulWidget',
//           },
//           'answer': 'StatefulWidget',
//         },
//         '12': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which function is used to make a Flutter widget immutable?',
//           'options': {
//             '1': 'const',
//             '2': 'final',
//             '3': 'var',
//             '4': 'constWidget',
//           },
//           'answer': 'const',
//         },
//         '13': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the purpose of the `Scaffold` widget in Flutter?',
//           'options': {
//             '1': 'Used to create a responsive layout',
//             '2':
//                 'Provides a framework for implementing a basic material design visual layout structure',
//             '3': 'Holds a list of widgets',
//             '4': 'Manages the navigation stack',
//           },
//           'answer':
//               'Provides a framework for implementing a basic material design visual layout structure',
//         },
//         '14': {
//           'correctOptionKey': '3',
//           'questionText': 'Which Dart keyword is used to define a constant?',
//           'options': {'1': 'final', '2': 'const', '3': 'static', '4': 'var'},
//           'answer': 'const',
//         },
//         '15': {
//           'correctOptionKey': '4',
//           'questionText': 'Which Flutter widget is used to create a button?',
//           'options': {
//             '1': 'Text',
//             '2': 'Column',
//             '3': 'Row',
//             '4': 'FlatButton',
//           },
//           'answer': 'FlatButton',
//         },
//         '16': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the primary purpose of the `pubspec.yaml` file in Flutter?',
//           'options': {
//             '1': 'To manage dependencies',
//             '2': 'To configure UI settings',
//             '3': 'To define routes',
//             '4': 'To store global variables',
//           },
//           'answer': 'To manage dependencies',
//         },
//         '17': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What type of variable is used in Dart to store a single value?',
//           'options': {
//             '1': 'Array',
//             '2': 'Variable',
//             '3': 'Function',
//             '4': 'Constant',
//           },
//           'answer': 'Variable',
//         },
//         '18': {
//           'correctOptionKey': '3',
//           'questionText': 'Which function is used to show a dialog in Flutter?',
//           'options': {
//             '1': 'showToast()',
//             '2': 'showSnackBar()',
//             '3': 'showDialog()',
//             '4': 'showAlert()',
//           },
//           'answer': 'showDialog()',
//         },
//         '19': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is not a valid Dart collection type?',
//           'options': {'1': 'List', '2': 'Set', '3': 'Map', '4': 'Stack'},
//           'answer': 'Stack',
//         },
//         '20': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which widget is used for displaying text input in Flutter?',
//           'options': {
//             '1': 'TextField',
//             '2': 'Text',
//             '3': 'InputField',
//             '4': 'Button',
//           },
//           'answer': 'TextField',
//         },
//         // New Questions - Additional 20
//         '21': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the keyword used in Dart to indicate an asynchronous function?',
//           'options': {'1': 'await', '2': 'async', '3': 'Future', '4': 'delay'},
//           'answer': 'async',
//         },
//         '22': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which widget is used for creating scrolling views in Flutter?',
//           'options': {
//             '1': 'Slider',
//             '2': 'ScrollView',
//             '3': 'ListView',
//             '4': 'Column',
//           },
//           'answer': 'ListView',
//         },
//         '23': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which Dart function is used to parse a string into an integer?',
//           'options': {
//             '1': 'parseInt()',
//             '2': 'toInt()',
//             '3': 'int()',
//             '4': 'int.parse()',
//           },
//           'answer': 'int.parse()',
//         },
//         '24': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which method is used to add items to a list in Dart?',
//           'options': {
//             '1': 'add()',
//             '2': 'insert()',
//             '3': 'push()',
//             '4': 'append()',
//           },
//           'answer': 'add()',
//         },
//         '25': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the default value of a variable in Dart if it is not initialized?',
//           'options': {'1': 'null', '2': '0', '3': 'false', '4': 'NaN'},
//           'answer': 'null',
//         },
//         '26': {
//           'correctOptionKey': '3',
//           'questionText': 'Which function in Flutter is used to stop the app?',
//           'options': {
//             '1': 'exit()',
//             '2': 'quit()',
//             '3': 'SystemNavigator.pop()',
//             '4': 'closeApp()',
//           },
//           'answer': 'SystemNavigator.pop()',
//         },
//         '27': {
//           'correctOptionKey': '4',
//           'questionText': 'What does `pub get` command do in Flutter?',
//           'options': {
//             '1': 'Install dependencies',
//             '2': 'Run the app',
//             '3': 'Update Dart SDK',
//             '4': 'Fetch packages from pub.dev',
//           },
//           'answer': 'Fetch packages from pub.dev',
//         },
//         '28': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the purpose of a `FutureBuilder` in Flutter?',
//           'options': {
//             '1': 'To build widgets based on a Future value',
//             '2': 'To create async functions',
//             '3': 'To process background tasks',
//             '4': 'To delay execution',
//           },
//           'answer': 'To build widgets based on a Future value',
//         },
//         '29': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is used to manage state in Flutter?',
//           'options': {
//             '1': 'setState()',
//             '2': 'Provider',
//             '3': 'StreamBuilder',
//             '4': 'GlobalKey',
//           },
//           'answer': 'Provider',
//         },
//         '30': {
//           'correctOptionKey': '3',
//           'questionText':
//               'What is the default storage location for Flutter app data on an Android device?',
//           'options': {
//             '1': 'External Storage',
//             '2': 'Shared Preferences',
//             '3': 'Internal Storage',
//             '4': 'Cloud Storage',
//           },
//           'answer': 'Internal Storage',
//         },
//       },
//     },
//     'Html & Css': {
//       'title': 'HTML & CSS Quiz',
//       'imageUrl': 'https://example.com/HTML & CSS.jpg',
//       'questions': {
//         '0': {
//           'correctOptionKey': '1',
//           'questionText': 'What does HTML stand for?',
//           'options': {
//             '1': 'HyperText Markup Language',
//             '2': 'Hyper Transfer Markup Language',
//             '3': 'HighText Markup Language',
//             '4': 'HighText Machine Language',
//           },
//           'answer': 'HyperText Markup Language',
//         },
//         '1': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the correct HTML element for inserting a line break?',
//           'options': {
//             '1': '<break>',
//             '2': '<br>',
//             '3': '<lb>',
//             '4': '<breakline>',
//           },
//           'answer': '<br>',
//         },
//         '2': {
//           'correctOptionKey': '3',
//           'questionText': 'Which CSS property controls the text size?',
//           'options': {
//             '1': 'font-size',
//             '2': 'text-size',
//             '3': 'font-size',
//             '4': 'text-style',
//           },
//           'answer': 'font-size',
//         },
//         '3': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which CSS property is used to change the background color of an element?',
//           'options': {
//             '1': 'color',
//             '2': 'bgcolor',
//             '3': 'background-color',
//             '4': 'background-color',
//           },
//           'answer': 'background-color',
//         },
//         '4': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the default value of the `position` property in CSS?',
//           'options': {
//             '1': 'static',
//             '2': 'relative',
//             '3': 'absolute',
//             '4': 'fixed',
//           },
//           'answer': 'static',
//         },
//         '5': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which HTML element is used to define an internal style sheet?',
//           'options': {
//             '1': '<style>',
//             '2': '<css>',
//             '3': '<script>',
//             '4': '<link>',
//           },
//           'answer': '<style>',
//         },
//         '6': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which property is used to set the space between the content of an element and its border in CSS?',
//           'options': {
//             '1': 'margin',
//             '2': 'border-spacing',
//             '3': 'padding',
//             '4': 'content-spacing',
//           },
//           'answer': 'padding',
//         },
//         '7': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which tag is used to define an unordered list in HTML?',
//           'options': {'1': '<ul>', '2': '<list>', '3': '<ol>', '4': '<ul>'},
//           'answer': '<ul>',
//         },
//         '8': {
//           'correctOptionKey': '1',
//           'questionText': 'How can you open a link in a new tab in HTML?',
//           'options': {
//             '1': '<a href="url" target="_blank">',
//             '2': '<a href="url" target="new">',
//             '3': '<a href="url" target="_tab">',
//             '4': '<a href="url" new-tab>',
//           },
//           'answer': '<a href="url" target="_blank">',
//         },
//         '9': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is the correct way to link a CSS file to an HTML document?',
//           'options': {
//             '1': '<style src="style.css">',
//             '2': '<link rel="stylesheet" href="style.css">',
//             '3': '<script src="style.css">',
//             '4': '<css src="style.css">',
//           },
//           'answer': '<link rel="stylesheet" href="style.css">',
//         },
//         '10': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following is the correct way to make a comment in CSS?',
//           'options': {
//             '1': '// This is a comment',
//             '2': '# This is a comment',
//             '3': '/* This is a comment */',
//             '4': '/* This is a comment',
//           },
//           'answer': '/* This is a comment */',
//         },
//         '11': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is the correct HTML element for the largest heading?',
//           'options': {'1': '<heading>', '2': '<h5>', '3': '<h1>', '4': '<h6>'},
//           'answer': '<h1>',
//         },
//         '12': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which CSS property is used to change the text color?',
//           'options': {
//             '1': 'color',
//             '2': 'font-color',
//             '3': 'text-color',
//             '4': 'text-style',
//           },
//           'answer': 'color',
//         },
//         '13': {
//           'correctOptionKey': '2',
//           'questionText': 'How do you add a comment in HTML?',
//           'options': {
//             '1': '<!-- This is a comment -->',
//             '2': '// This is a comment',
//             '3': '# This is a comment',
//             '4': '/* This is a comment */',
//           },
//           'answer': '<!-- This is a comment -->',
//         },
//         '14': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following is used to define a table in HTML?',
//           'options': {
//             '1': '<list>',
//             '2': '<div>',
//             '3': '<table>',
//             '4': '<grid>',
//           },
//           'answer': '<table>',
//         },
//         '15': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is used to define a row in an HTML table?',
//           'options': {'1': '<th>', '2': '<tr>', '3': '<td>', '4': '<row>'},
//           'answer': '<tr>',
//         },
//         '16': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the purpose of the `z-index` property in CSS?',
//           'options': {
//             '1': 'To specify the stack order of elements',
//             '2': 'To define the width of an element',
//             '3': 'To define the background color',
//             '4': 'To set the padding of an element',
//           },
//           'answer': 'To specify the stack order of elements',
//         },
//         '17': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the default value of the `position` property in CSS?',
//           'options': {
//             '1': 'absolute',
//             '2': 'static',
//             '3': 'relative',
//             '4': 'fixed',
//           },
//           'answer': 'static',
//         },
//         '18': {
//           'correctOptionKey': '3',
//           'questionText': 'Which tag is used to define a hyperlink in HTML?',
//           'options': {
//             '1': '<link>',
//             '2': '<href>',
//             '3': '<a>',
//             '4': '<hyperlink>',
//           },
//           'answer': '<a>',
//         },
//         '19': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which property is used to set the space between content and borders in CSS?',
//           'options': {
//             '1': 'margin',
//             '2': 'padding',
//             '3': 'border-spacing',
//             '4': 'padding',
//           },
//           'answer': 'padding',
//         },
//         '20': {
//           'correctOptionKey': '1',
//           'questionText': 'What is the default display value of a div in CSS?',
//           'options': {
//             '1': 'block',
//             '2': 'inline',
//             '3': 'inline-block',
//             '4': 'none',
//           },
//           'answer': 'block',
//         },
//         '21': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which tag is used to define an ordered list in HTML?',
//           'options': {'1': '<ul>', '2': '<ol>', '3': '<li>', '4': '<list>'},
//           'answer': '<ol>',
//         },
//         '22': {
//           'correctOptionKey': '3',
//           'questionText': 'Which CSS property is used to align text?',
//           'options': {
//             '1': 'text-position',
//             '2': 'align-text',
//             '3': 'text-align',
//             '4': 'alignment',
//           },
//           'answer': 'text-align',
//         },
//         '23': {
//           'correctOptionKey': '4',
//           'questionText': 'What is the purpose of the `@media` rule in CSS?',
//           'options': {
//             '1': 'Define page styles for print',
//             '2': 'Create animations',
//             '3': 'Make the website responsive',
//             '4': 'Set default styles for all devices',
//           },
//           'answer': 'Make the website responsive',
//         },
//         '24': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which HTML element is used to display a dropdown list?',
//           'options': {
//             '1': '<select>',
//             '2': '<input>',
//             '3': '<list>',
//             '4': '<dropdown>',
//           },
//           'answer': '<select>',
//         },
//         '25': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which property is used to set the font family in CSS?',
//           'options': {
//             '1': 'font-family',
//             '2': 'font-style',
//             '3': 'font-size',
//             '4': 'font-weight',
//           },
//           'answer': 'font-family',
//         },
//         '26': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which CSS property is used to set the width of an element?',
//           'options': {
//             '1': 'height',
//             '2': 'padding',
//             '3': 'width',
//             '4': 'margin',
//           },
//           'answer': 'width',
//         },
//         '27': {
//           'correctOptionKey': '4',
//           'questionText': 'Which HTML element is used to define a footer?',
//           'options': {
//             '1': '<footer>',
//             '2': '<section>',
//             '3': '<div>',
//             '4': '<footer>',
//           },
//           'answer': '<footer>',
//         },
//         '28': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which property in CSS is used to define the border radius?',
//           'options': {
//             '1': 'border-radius',
//             '2': 'border-style',
//             '3': 'border-width',
//             '4': 'border-color',
//           },
//           'answer': 'border-radius',
//         },
//         '29': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which property is used to change the text decoration in CSS?',
//           'options': {
//             '1': 'text-color',
//             '2': 'text-decoration',
//             '3': 'text-style',
//             '4': 'font-decoration',
//           },
//           'answer': 'text-decoration',
//         },
//         '30': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which element is used for embedding an external JavaScript file?',
//           'options': {
//             '1': '<script>',
//             '2': '<js>',
//             '3': '<script src="file.js">',
//             '4': '<embed>',
//           },
//           'answer': '<script src="file.js">',
//         },
//       },
//     },
//     'JavaScript': {
//       'title': 'JavaScript Quiz',
//       'imageUrl': 'https://example.com/JavaScreipt.jpg',
//       'questions': {
//         '0': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the correct syntax to print a message in JavaScript?',
//           'options': {
//             '1': 'console.log("Hello World")',
//             '2': 'print("Hello World")',
//             '3': 'echo("Hello World")',
//             '4': 'alert("Hello World")',
//           },
//           'answer': 'console.log("Hello World")',
//         },
//         '1': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is not a valid data type in JavaScript?',
//           'options': {
//             '1': 'String',
//             '2': 'Character',
//             '3': 'Boolean',
//             '4': 'Number',
//           },
//           'answer': 'Character',
//         },
//         '2': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which method is used to parse a string into an integer in JavaScript?',
//           'options': {
//             '1': 'parseInt()',
//             '2': 'parseFloat()',
//             '3': 'Number()',
//             '4': 'toString()',
//           },
//           'answer': 'parseInt()',
//         },
//         '3': {
//           'correctOptionKey': '4',
//           'questionText':
//               'What is the default value of a variable that is declared but not initialized in JavaScript?',
//           'options': {
//             '1': 'undefined',
//             '2': 'null',
//             '3': 'false',
//             '4': 'undefined',
//           },
//           'answer': 'undefined',
//         },
//         '4': {
//           'correctOptionKey': '1',
//           'questionText': 'How do you declare a variable in JavaScript?',
//           'options': {
//             '1': 'let variableName',
//             '2': 'var variableName',
//             '3': 'const variableName',
//             '4': 'All of the above',
//           },
//           'answer': 'All of the above',
//         },
//         '5': {
//           'correctOptionKey': '2',
//           'questionText': 'What does the `typeof` operator do in JavaScript?',
//           'options': {
//             '1': 'Checks if a variable is an object',
//             '2': 'Returns the type of a variable',
//             '3': 'Converts a variable to a string',
//             '4': 'Declares a new variable',
//           },
//           'answer': 'Returns the type of a variable',
//         },
//         '6': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which method is used to add a new item to an array in JavaScript?',
//           'options': {
//             '1': 'add()',
//             '2': 'insert()',
//             '3': 'push()',
//             '4': 'append()',
//           },
//           'answer': 'push()',
//         },
//         '7': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is a correct way to create a function in JavaScript?',
//           'options': {
//             '1': 'function myFunction() {}',
//             '2': 'myFunction() => {}',
//             '3': 'let function myFunction() {}',
//             '4': 'function myFunction() {}',
//           },
//           'answer': 'function myFunction() {}',
//         },
//         '8': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the output of the following code: `console.log(2 + "2");`',
//           'options': {'1': '"22"', '2': '4', '3': 'NaN', '4': 'undefined'},
//           'answer': '"22"',
//         },
//         '9': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is used to create an object in JavaScript?',
//           'options': {
//             '1': 'Object.create()',
//             '2': 'new Object()',
//             '3': 'new Object() {}',
//             '4': 'Object()',
//           },
//           'answer': 'new Object()',
//         },
//         '10': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following is true about JavaScript arrays?',
//           'options': {
//             '1': 'Arrays can only store strings',
//             '2': 'Arrays are not iterable',
//             '3': 'Arrays are zero-indexed',
//             '4': 'Arrays can only store numbers',
//           },
//           'answer': 'Arrays are zero-indexed',
//         },
//         '11': {
//           'correctOptionKey': '4',
//           'questionText':
//               'How can you check if a variable is an array in JavaScript?',
//           'options': {
//             '1': 'Array.isArray(variable)',
//             '2': 'variable.isArray()',
//             '3': 'isArray(variable)',
//             '4': 'Array.isArray(variable)',
//           },
//           'answer': 'Array.isArray(variable)',
//         },
//         '12': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the purpose of the `this` keyword in JavaScript?',
//           'options': {
//             '1': 'Refers to the current object',
//             '2': 'Refers to the global object',
//             '3': 'Refers to the function itself',
//             '4': 'Refers to the previous function',
//           },
//           'answer': 'Refers to the current object',
//         },
//         '13': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which method is used to remove an item from the end of an array in JavaScript?',
//           'options': {
//             '1': 'shift()',
//             '2': 'pop()',
//             '3': 'remove()',
//             '4': 'delete()',
//           },
//           'answer': 'pop()',
//         },
//         '14': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which statement is used to stop a loop in JavaScript?',
//           'options': {'1': 'break', '2': 'stop', '3': 'continue', '4': 'exit'},
//           'answer': 'break',
//         },
//         '15': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which method is used to find the index of an item in an array in JavaScript?',
//           'options': {
//             '1': 'indexOf()',
//             '2': 'findIndex()',
//             '3': 'search()',
//             '4': 'indexOf()',
//           },
//           'answer': 'indexOf()',
//         },
//         '16': {
//           'correctOptionKey': '1',
//           'questionText': 'How do you declare a constant in JavaScript?',
//           'options': {
//             '1': 'const constantName',
//             '2': 'let constantName',
//             '3': 'var constantName',
//             '4': 'define constantName',
//           },
//           'answer': 'const constantName',
//         },
//         '17': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which event is triggered when a user clicks on an HTML element?',
//           'options': {
//             '1': 'mouseover',
//             '2': 'click',
//             '3': 'keydown',
//             '4': 'submit',
//           },
//           'answer': 'click',
//         },
//         '18': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which method is used to stop the default action of an event in JavaScript?',
//           'options': {
//             '1': 'stopEvent()',
//             '2': 'cancel()',
//             '3': 'preventDefault()',
//             '4': 'stopPropagation()',
//           },
//           'answer': 'preventDefault()',
//         },
//         '19': {
//           'correctOptionKey': '4',
//           'questionText': 'How do you create a new function in JavaScript?',
//           'options': {
//             '1': 'createFunction()',
//             '2': 'newFunction()',
//             '3': 'function() {}',
//             '4': 'function functionName() {}',
//           },
//           'answer': 'function functionName() {}',
//         },
//         '20': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the output of the following code: `console.log("2" + 2)`?',
//           'options': {'1': '"22"', '2': '4', '3': 'NaN', '4': 'undefined'},
//           'answer': '"22"',
//         },
//         '21': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which method is used to check if a string contains a specific substring?',
//           'options': {
//             '1': 'includes()',
//             '2': 'indexOf()',
//             '3': 'find()',
//             '4': 'contains()',
//           },
//           'answer': 'includes()',
//         },
//         '22': {
//           'correctOptionKey': '3',
//           'questionText':
//               'What is the purpose of the `async` keyword in JavaScript?',
//           'options': {
//             '1': 'Defines a synchronous function',
//             '2': 'Defines a function that returns a promise',
//             '3': 'Defines an asynchronous function',
//             '4': 'Defines a generator function',
//           },
//           'answer': 'Defines an asynchronous function',
//         },
//         '23': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is the correct syntax for an arrow function in JavaScript?',
//           'options': {
//             '1': 'function() => {}',
//             '2': 'function() { return; }',
//             '3': '() => {}',
//             '4': '() => { return; }',
//           },
//           'answer': '() => {}',
//         },
//         '24': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which operator is used to compare both value and type in JavaScript?',
//           'options': {'1': '===', '2': '==', '3': '<>', '4': '!='},
//           'answer': '===',
//         },
//         '25': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is a correct syntax for a `for` loop in JavaScript?',
//           'options': {
//             '1': 'for(i = 0; i < 5; i++)',
//             '2': 'for(i = 0; i < 5)',
//             '3': 'for(i = 0; i < 5; i++) {}',
//             '4': 'for(i = 0; i < 5; i++) { }',
//           },
//           'answer': 'for(i = 0; i < 5; i++) {}',
//         },
//         '26': {
//           'correctOptionKey': '3',
//           'questionText': 'What is the `map()` method used for in JavaScript?',
//           'options': {
//             '1': 'Iterates over an array',
//             '2': 'Maps data to a new array',
//             '3': 'Filters an array',
//             '4': 'Sorts an array',
//           },
//           'answer': 'Maps data to a new array',
//         },
//         '27': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which method is used to combine two arrays in JavaScript?',
//           'options': {
//             '1': 'concat()',
//             '2': 'merge()',
//             '3': 'combine()',
//             '4': 'push()',
//           },
//           'answer': 'concat()',
//         },
//         '28': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which of the following is a valid way to write an object in JavaScript?',
//           'options': {
//             '1': 'let obj = { name: "John", age: 30 };',
//             '2': 'let obj = name: "John", age: 30;',
//             '3': 'let obj = ["name": "John", "age": 30];',
//             '4': 'let obj = "name: John, age: 30";',
//           },
//           'answer': 'let obj = { name: "John", age: 30 };',
//         },
//         '29': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following JavaScript methods is used to remove whitespace from both ends of a string?',
//           'options': {
//             '1': 'trimSpaces()',
//             '2': 'trim()',
//             '3': 'removeSpaces()',
//             '4': 'clean()',
//           },
//           'answer': 'trim()',
//         },
//         '30': {
//           'correctOptionKey': '3',
//           'questionText':
//               'What is the output of `console.log(5 + "5")` in JavaScript?',
//           'options': {'1': '10', '2': '55', '3': 'NaN', '4': 'undefined'},
//           'answer': '55',
//         },
//       },
//     },
//     'Python': {
//       'title': 'Python Quiz',
//       'imageUrl': 'https://example.com/Python.jpg',
//       'questions': {
//         '0': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the correct syntax to print "Hello, World!" in Python?',
//           'options': {
//             '1': 'print("Hello, World!")',
//             '2': 'echo("Hello, World!")',
//             '3': 'System.out.println("Hello, World!")',
//             '4': 'println("Hello, World!")',
//           },
//           'answer': 'print("Hello, World!")',
//         },
//         '1': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is a mutable data structure in Python?',
//           'options': {'1': 'String', '2': 'List', '3': 'Tuple', '4': 'Integer'},
//           'answer': 'List',
//         },
//         '2': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following is used to create a function in Python?',
//           'options': {
//             '1': 'function myFunction():',
//             '2': 'def myFunction():',
//             '3': 'create myFunction():',
//             '4': 'func myFunction():',
//           },
//           'answer': 'def myFunction():',
//         },
//         '3': {
//           'correctOptionKey': '4',
//           'questionText':
//               'What does the following Python code do: `x = [1, 2, 3]; x[0] = 10`?',
//           'options': {
//             '1': 'It throws an error',
//             '2': 'It adds a new element to the list',
//             '3': 'It creates a new list',
//             '4': 'It updates the first element of the list',
//           },
//           'answer': 'It updates the first element of the list',
//         },
//         '4': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which of the following is used to define a class in Python?',
//           'options': {
//             '1': 'class MyClass:',
//             '2': 'MyClass()',
//             '3': 'def MyClass:',
//             '4': 'class: MyClass',
//           },
//           'answer': 'class MyClass:',
//         },
//         '5': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the output of the following code: `print(2 + 3 * 5)`?',
//           'options': {'1': '25', '2': '17', '3': '15', '4': '5'},
//           'answer': '17',
//         },
//         '6': {
//           'correctOptionKey': '3',
//           'questionText':
//               'What will the following Python code return: `len("Python")`?',
//           'options': {'1': '6', '2': '5', '3': '7', '4': 'None'},
//           'answer': '6',
//         },
//         '7': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following Python keywords is used for creating an instance of a class?',
//           'options': {'1': 'create', '2': 'init', '3': 'self', '4': 'None'},
//           'answer': 'None',
//         },
//         '8': {
//           'correctOptionKey': '1',
//           'questionText': 'How do you create a comment in Python?',
//           'options': {
//             '1': '# This is a comment',
//             '2': '// This is a comment',
//             '3': '/* This is a comment */',
//             '4': '-- This is a comment',
//           },
//           'answer': '# This is a comment',
//         },
//         '9': {
//           'correctOptionKey': '2',
//           'questionText': 'What does the `range()` function do in Python?',
//           'options': {
//             '1': 'Creates a random number',
//             '2': 'Generates a sequence of numbers',
//             '3': 'Converts a number into a string',
//             '4': 'Returns the length of a list',
//           },
//           'answer': 'Generates a sequence of numbers',
//         },
//         '10': {
//           'correctOptionKey': '3',
//           'questionText':
//               'What does `*args` in a function definition represent in Python?',
//           'options': {
//             '1': 'A tuple of arguments',
//             '2': 'A list of arguments',
//             '3': 'A variable number of arguments',
//             '4': 'An argument passed by reference',
//           },
//           'answer': 'A variable number of arguments',
//         },
//         '11': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following statements about Python lists is true?',
//           'options': {
//             '1': 'Lists are immutable',
//             '2': 'Lists cannot contain mixed data types',
//             '3': 'Lists are ordered and changeable',
//             '4': 'Lists cannot contain duplicate elements',
//           },
//           'answer': 'Lists are ordered and changeable',
//         },
//         '12': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which of the following Python functions is used to read input from the user?',
//           'options': {
//             '1': 'input()',
//             '2': 'get()',
//             '3': 'read()',
//             '4': 'scan()',
//           },
//           'answer': 'input()',
//         },
//         '13': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is used to raise an exception in Python?',
//           'options': {
//             '1': 'raise',
//             '2': 'throw',
//             '3': 'error',
//             '4': 'exception',
//           },
//           'answer': 'raise',
//         },
//         '14': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following is a correct way to define a dictionary in Python?',
//           'options': {
//             '1': 'dict = []',
//             '2': 'dict = {}',
//             '3': 'dict = ()',
//             '4': 'dict = < >',
//           },
//           'answer': 'dict = {}',
//         },
//         '15': {
//           'correctOptionKey': '4',
//           'questionText':
//               'What is the method used to add an element at the end of a list in Python?',
//           'options': {
//             '1': 'insert()',
//             '2': 'append()',
//             '3': 'push()',
//             '4': 'add()',
//           },
//           'answer': 'append()',
//         },
//         '16': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which of the following is used to delete a key-value pair in a Python dictionary?',
//           'options': {
//             '1': 'del dict[key]',
//             '2': 'dict.delete(key)',
//             '3': 'remove(dict, key)',
//             '4': 'dict.remove(key)',
//           },
//           'answer': 'del dict[key]',
//         },
//         '17': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following functions is used to find the length of a list in Python?',
//           'options': {
//             '1': 'len()',
//             '2': 'size()',
//             '3': 'length()',
//             '4': 'count()',
//           },
//           'answer': 'len()',
//         },
//         '18': {
//           'correctOptionKey': '3',
//           'questionText':
//               'What is the output of the following code: `print(2 == 2)`?',
//           'options': {'1': 'True', '2': 'False', '3': 'Error', '4': 'None'},
//           'answer': 'True',
//         },
//         '19': {
//           'correctOptionKey': '4',
//           'questionText': 'How do you check if a number is even in Python?',
//           'options': {
//             '1': 'if num % 2 == 1:',
//             '2': 'if num % 2 == 0:',
//             '3': 'if num & 2 == 1:',
//             '4': 'if num // 2 == 0:',
//           },
//           'answer': 'if num % 2 == 0:',
//         },
//         '20': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which of the following is used to handle exceptions in Python?',
//           'options': {
//             '1': 'try-except',
//             '2': 'catch-finally',
//             '3': 'except-raise',
//             '4': 'try-catch',
//           },
//           'answer': 'try-except',
//         },
//         '21': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is used to convert a string to an integer in Python?',
//           'options': {
//             '1': 'int()',
//             '2': 'str()',
//             '3': 'convert()',
//             '4': 'parse()',
//           },
//           'answer': 'int()',
//         },
//         '22': {
//           'correctOptionKey': '3',
//           'questionText':
//               'What is the purpose of the `__init__` method in Python?',
//           'options': {
//             '1': 'To initialize variables in the class',
//             '2': 'To define the constructor of a class',
//             '3': 'To start the class',
//             '4': 'To finalize the object',
//           },
//           'answer': 'To define the constructor of a class',
//         },
//         '23': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is used to iterate over elements in a Python list?',
//           'options': {
//             '1': 'forEach()',
//             '2': 'loop()',
//             '3': 'iterate()',
//             '4': 'for-in loop',
//           },
//           'answer': 'for-in loop',
//         },
//         '24': {
//           'correctOptionKey': '1',
//           'questionText':
//               'How do you access the first element of a list in Python?',
//           'options': {
//             '1': 'list[0]',
//             '2': 'list(0)',
//             '3': 'list.first()',
//             '4': 'list[1]',
//           },
//           'answer': 'list[0]',
//         },
//         '25': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is used to check whether a key exists in a dictionary in Python?',
//           'options': {
//             '1': 'key in dict',
//             '2': 'dict.has_key()',
//             '3': 'dict.contains()',
//             '4': 'dict.exists()',
//           },
//           'answer': 'key in dict',
//         },
//         '26': {
//           'correctOptionKey': '3',
//           'questionText': 'Which method is used to sort a list in Python?',
//           'options': {
//             '1': 'arr.sort()',
//             '2': 'arr.order()',
//             '3': 'arr.sort(reverse=False)',
//             '4': 'arr.sort(true)',
//           },
//           'answer': 'arr.sort()',
//         },
//         '27': {
//           'correctOptionKey': '4',
//           'questionText':
//               'How can you get the value associated with a key in a dictionary?',
//           'options': {
//             '1': 'dict(key)',
//             '2': 'dict.get(key)',
//             '3': 'dict[key]',
//             '4': 'dict.value(key)',
//           },
//           'answer': 'dict.get(key)',
//         },
//         '28': {
//           'correctOptionKey': '1',
//           'questionText': 'How do you remove an item from a list in Python?',
//           'options': {
//             '1': 'list.remove(item)',
//             '2': 'list.pop(item)',
//             '3': 'list.del(item)',
//             '4': 'list.erase(item)',
//           },
//           'answer': 'list.remove(item)',
//         },
//         '29': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which Python method is used to convert a string to lowercase?',
//           'options': {
//             '1': 'str.lowercase()',
//             '2': 'str.lower()',
//             '3': 'str.lc()',
//             '4': 'str.toLower()',
//           },
//           'answer': 'str.lower()',
//         },
//         '30': {
//           'correctOptionKey': '3',
//           'questionText': 'How do you create a set in Python?',
//           'options': {
//             '1': 'set = []',
//             '2': 'set = {}',
//             '3': 'set = set()',
//             '4': 'set = set[]',
//           },
//           'answer': 'set = set()',
//         },
//       },
//     },
//     'C#': {
//       'title': 'C# Quiz',
//       'imageUrl': 'https://example.com/C#.jpg',
//       'questions': {
//         '0': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which of the following is the correct way to declare a variable in C#?',
//           'options': {
//             '1': 'int x = 5;',
//             '2': 'variable x = 5;',
//             '3': '5 = int x;',
//             '4': 'x = 5;',
//           },
//           'answer': 'int x = 5;',
//         },
//         '1': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the default value of a boolean variable in C#?',
//           'options': {'1': 'true', '2': 'false', '3': 'null', '4': 'undefined'},
//           'answer': 'false',
//         },
//         '2': {
//           'correctOptionKey': '3',
//           'questionText': 'Which keyword is used to create a method in C#?',
//           'options': {'1': 'create', '2': 'method', '3': 'void', '4': 'def'},
//           'answer': 'void',
//         },
//         '3': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is used to define a class in C#?',
//           'options': {
//             '1': 'class MyClass;',
//             '2': 'create MyClass;',
//             '3': 'def MyClass;',
//             '4': 'public class MyClass { }',
//           },
//           'answer': 'public class MyClass { }',
//         },
//         '4': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which of the following is a valid constructor in C#?',
//           'options': {
//             '1': 'public MyClass() { }',
//             '2': 'public void MyClass() { }',
//             '3': 'MyClass() { }',
//             '4': 'void MyClass() { }',
//           },
//           'answer': 'public MyClass() { }',
//         },
//         '5': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following data types are value types in C#?',
//           'options': {'1': 'string', '2': 'int', '3': 'object', '4': 'Array'},
//           'answer': 'int',
//         },
//         '6': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following is used to access the members of a class in C#?',
//           'options': {'1': '.', '2': '::', '3': '#', '4': '->'},
//           'answer': '.',
//         },
//         '7': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following operators is used for equality comparison in C#?',
//           'options': {'1': '==', '2': '===', '3': '!=', '4': '=='},
//           'answer': '==',
//         },
//         '8': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the correct way to write a single-line comment in C#?',
//           'options': {
//             '1': '// This is a comment',
//             '2': '/* This is a comment */',
//             '3': '<!-- This is a comment -->',
//             '4': '# This is a comment',
//           },
//           'answer': '// This is a comment',
//         },
//         '9': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is the correct way to write an array in C#?',
//           'options': {
//             '1': 'int[] arr = {1, 2, 3};',
//             '2': 'int arr[] = {1, 2, 3};',
//             '3': 'arr = [1, 2, 3];',
//             '4': 'int arr = [1, 2, 3];',
//           },
//           'answer': 'int[] arr = {1, 2, 3};',
//         },
//         '10': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following is the default access modifier in C#?',
//           'options': {
//             '1': 'public',
//             '2': 'protected',
//             '3': 'private',
//             '4': 'internal',
//           },
//           'answer': 'private',
//         },
//         '11': {
//           'correctOptionKey': '4',
//           'questionText': 'Which keyword is used to create a subclass in C#?',
//           'options': {
//             '1': 'subclass',
//             '2': 'child',
//             '3': 'base',
//             '4': 'inherit',
//           },
//           'answer': 'inherit',
//         },
//         '12': {
//           'correctOptionKey': '1',
//           'questionText': 'What is the purpose of the `static` keyword in C#?',
//           'options': {
//             '1':
//                 'To declare a method or variable that belongs to the class, not an instance of the class',
//             '2': 'To indicate that a method or variable cannot be changed',
//             '3': 'To define a constant',
//             '4': 'To declare a method that can be overridden',
//           },
//           'answer':
//               'To declare a method or variable that belongs to the class, not an instance of the class',
//         },
//         '13': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which method is used to convert a string to an integer in C#?',
//           'options': {
//             '1': 'convert()',
//             '2': 'int.Parse()',
//             '3': 'int()',
//             '4': 'parseInt()',
//           },
//           'answer': 'int.Parse()',
//         },
//         '14': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following is used to handle exceptions in C#?',
//           'options': {
//             '1': 'try-except',
//             '2': 'catch-finally',
//             '3': 'try-catch',
//             '4': 'throw-catch',
//           },
//           'answer': 'try-catch',
//         },
//         '15': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is used to break out of a loop in C#?',
//           'options': {'1': 'exit', '2': 'stop', '3': 'halt', '4': 'break'},
//           'answer': 'break',
//         },
//         '16': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which type of loop will execute at least once in C#?',
//           'options': {
//             '1': 'do-while loop',
//             '2': 'for loop',
//             '3': 'while loop',
//             '4': 'foreach loop',
//           },
//           'answer': 'do-while loop',
//         },
//         '17': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the correct way to handle an exception in C#?',
//           'options': {'1': 'throw', '2': 'catch', '3': 'finally', '4': 'raise'},
//           'answer': 'catch',
//         },
//         '18': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which operator is used for concatenating strings in C#?',
//           'options': {'1': '+', '2': '&', '3': '+=', '4': '\$'},
//           'answer': '+',
//         },
//         '19': {
//           'correctOptionKey': '4',
//           'questionText': 'Which of the following is a value type in C#?',
//           'options': {'1': 'string', '2': 'object', '3': 'array', '4': 'int'},
//           'answer': 'int',
//         },
//         '20': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which of the following is used to import namespaces in C#?',
//           'options': {
//             '1': 'using',
//             '2': 'import',
//             '3': 'include',
//             '4': 'namespace',
//           },
//           'answer': 'using',
//         },
//         '21': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the correct syntax for defining an interface in C#?',
//           'options': {
//             '1': 'interface IMyInterface',
//             '2': 'public interface IMyInterface',
//             '3': 'class IMyInterface',
//             '4': 'interface IMyInterface()',
//           },
//           'answer': 'public interface IMyInterface',
//         },
//         '22': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following is the base class for all classes in C#?',
//           'options': {'1': 'Object', '2': 'System', '3': 'Base', '4': 'Class'},
//           'answer': 'Object',
//         },
//         '23': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is used to call a method from a base class in C#?',
//           'options': {
//             '1': 'base()',
//             '2': 'super()',
//             '3': 'parent()',
//             '4': 'base.MethodName()',
//           },
//           'answer': 'base.MethodName()',
//         },
//         '24': {
//           'correctOptionKey': '1',
//           'questionText': 'How do you define a constant in C#?',
//           'options': {
//             '1': 'const int x = 10;',
//             '2': 'int x = const 10;',
//             '3': 'let const x = 10;',
//             '4': 'final int x = 10;',
//           },
//           'answer': 'const int x = 10;',
//         },
//         '25': {
//           'correctOptionKey': '2',
//           'questionText':
//               'What is the correct way to write a multi-line comment in C#?',
//           'options': {
//             '1': '/* This is a comment */',
//             '2': '/* This is a comment',
//             '3': '// This is a comment',
//             '4': '# This is a comment',
//           },
//           'answer': '/* This is a comment */',
//         },
//         '26': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following can be used to prevent a variable from being modified in C#?',
//           'options': {
//             '1': 'final',
//             '2': 'readonly',
//             '3': 'const',
//             '4': 'private',
//           },
//           'answer': 'const',
//         },
//         '27': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is the correct way to write a switch statement in C#?',
//           'options': {
//             '1': 'switch(x) { case 1: break; }',
//             '2': 'case switch(x) { 1: break; }',
//             '3': 'switch(x) { 1: break; }',
//             '4': 'switch(x) { case 1: break; }',
//           },
//           'answer': 'switch(x) { case 1: break; }',
//         },
//         '28': {
//           'correctOptionKey': '1',
//           'questionText': 'What is the correct way to handle an event in C#?',
//           'options': {
//             '1': 'button.Click += new EventHandler(button_Click);',
//             '2': 'button.addEventListener("click", button_Click);',
//             '3': 'button.addClickListener(button_Click);',
//             '4': 'button.click += button_Click;',
//           },
//           'answer': 'button.Click += new EventHandler(button_Click);',
//         },
//         '29': {
//           'correctOptionKey': '2',
//           'questionText': 'Which keyword is used to define a property in C#?',
//           'options': {'1': 'field', '2': 'property', '3': 'getset', '4': 'get'},
//           'answer': 'property',
//         },
//         '30': {
//           'correctOptionKey': '3',
//           'questionText':
//               'What is the correct syntax to define an enumeration in C#?',
//           'options': {
//             '1': 'enum MyEnum { A, B, C }',
//             '2': 'enum MyEnum() { A, B, C }',
//             '3': 'enum MyEnum { A = 1, B = 2, C = 3 }',
//             '4': 'enum MyEnum(A, B, C)',
//           },
//           'answer': 'enum MyEnum { A = 1, B = 2, C = 3 }',
//         },
//       },
//     },
//     'AI and Machine Learning': {
//       'title': 'AI and Machine Learning Quiz',
//       'imageUrl': 'https://example.com/AI and Machine Learning.jpg',
//       'questions': {
//         '0': {
//           'correctOptionKey': '1',
//           'questionText': 'What does AI stand for?',
//           'options': {
//             '1': 'Artificial Intelligence',
//             '2': 'Automated Input',
//             '3': 'Artificial Input',
//             '4': 'Auto Intelligence',
//           },
//           'answer': 'Artificial Intelligence',
//         },
//         '1': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is a type of machine learning?',
//           'options': {
//             '1': 'Deep Learning',
//             '2': 'Supervised Learning',
//             '3': 'Unsupervised Learning',
//             '4': 'All of the above',
//           },
//           'answer': 'All of the above',
//         },
//         '2': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following is a key characteristic of supervised learning?',
//           'options': {
//             '1': 'No labeled data',
//             '2': 'Unstructured data',
//             '3': 'Labeled data',
//             '4': 'No feedback from the system',
//           },
//           'answer': 'Labeled data',
//         },
//         '3': {
//           'correctOptionKey': '4',
//           'questionText': 'What is the primary goal of machine learning?',
//           'options': {
//             '1': 'To program computers',
//             '2':
//                 'To make predictions or decisions without explicit programming',
//             '3': 'To automate data entry tasks',
//             '4': 'To enhance graphics performance',
//           },
//           'answer':
//               'To make predictions or decisions without explicit programming',
//         },
//         '4': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which algorithm is commonly used for classification in machine learning?',
//           'options': {
//             '1': 'Support Vector Machine (SVM)',
//             '2': 'K-Means Clustering',
//             '3': 'Principal Component Analysis (PCA)',
//             '4': 'Linear Regression',
//           },
//           'answer': 'Support Vector Machine (SVM)',
//         },
//         '5': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which algorithm is primarily used for clustering data?',
//           'options': {
//             '1': 'Linear Regression',
//             '2': 'K-Means Clustering',
//             '3': 'Decision Trees',
//             '4': 'Random Forest',
//           },
//           'answer': 'K-Means Clustering',
//         },
//         '6': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following is used for dimensionality reduction in machine learning?',
//           'options': {
//             '1': 'Decision Trees',
//             '2': 'K-Means Clustering',
//             '3': 'Principal Component Analysis (PCA)',
//             '4': 'Random Forests',
//           },
//           'answer': 'Principal Component Analysis (PCA)',
//         },
//         '7': {
//           'correctOptionKey': '4',
//           'questionText':
//               'What is the purpose of the activation function in neural networks?',
//           'options': {
//             '1': 'To combine inputs',
//             '2': 'To normalize the outputs',
//             '3': 'To prevent overfitting',
//             '4': 'To introduce non-linearity',
//           },
//           'answer': 'To introduce non-linearity',
//         },
//         '8': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which of the following is a type of deep learning model?',
//           'options': {
//             '1': 'Convolutional Neural Networks (CNN)',
//             '2': 'Linear Regression',
//             '3': 'Support Vector Machine',
//             '4': 'Logistic Regression',
//           },
//           'answer': 'Convolutional Neural Networks (CNN)',
//         },
//         '9': {
//           'correctOptionKey': '2',
//           'questionText': 'What is overfitting in machine learning?',
//           'options': {
//             '1':
//                 'When the model performs well on training data but poorly on test data',
//             '2': 'When the model performs well on both training and test data',
//             '3': 'When the model cannot generalize to new data',
//             '4': 'When the model uses too few features',
//           },
//           'answer':
//               'When the model performs well on training data but poorly on test data',
//         },
//         '10': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which metric is commonly used for evaluating the performance of a classification model?',
//           'options': {
//             '1': 'Mean Squared Error (MSE)',
//             '2': 'R-squared',
//             '3': 'Accuracy',
//             '4': 'Precision',
//           },
//           'answer': 'Accuracy',
//         },
//         '11': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is an unsupervised learning algorithm?',
//           'options': {
//             '1': 'Linear Regression',
//             '2': 'Logistic Regression',
//             '3': 'Support Vector Machine',
//             '4': 'K-Means Clustering',
//           },
//           'answer': 'K-Means Clustering',
//         },
//         '12': {
//           'correctOptionKey': '1',
//           'questionText':
//               'What is the purpose of cross-validation in machine learning?',
//           'options': {
//             '1': 'To test the model on multiple subsets of the data',
//             '2': 'To avoid overfitting the model to the training data',
//             '3': 'To evaluate the model’s performance on new data',
//             '4': 'All of the above',
//           },
//           'answer': 'All of the above',
//         },
//         '13': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following techniques is used to prevent overfitting?',
//           'options': {
//             '1': 'Increasing the size of the training data',
//             '2': 'Regularization',
//             '3': 'Increasing the number of parameters',
//             '4': 'Using a simpler model',
//           },
//           'answer': 'Regularization',
//         },
//         '14': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which type of machine learning is used to predict future outcomes based on past data?',
//           'options': {
//             '1': 'Classification',
//             '2': 'Clustering',
//             '3': 'Regression',
//             '4': 'Reinforcement Learning',
//           },
//           'answer': 'Regression',
//         },
//         '15': {
//           'correctOptionKey': '4',
//           'questionText':
//               'What is the primary advantage of using deep learning over traditional machine learning methods?',
//           'options': {
//             '1': 'It requires less data to train',
//             '2': 'It can perform better with large datasets',
//             '3': 'It works better with small datasets',
//             '4': 'It is easier to implement',
//           },
//           'answer': 'It can perform better with large datasets',
//         },
//         '16': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which of the following is a popular Python library for machine learning?',
//           'options': {
//             '1': 'scikit-learn',
//             '2': 'NumPy',
//             '3': 'Pandas',
//             '4': 'Matplotlib',
//           },
//           'answer': 'scikit-learn',
//         },
//         '17': {
//           'correctOptionKey': '2',
//           'questionText': 'What is the main disadvantage of decision trees?',
//           'options': {
//             '1': 'They are prone to overfitting',
//             '2': 'They require a lot of data preprocessing',
//             '3': 'They cannot handle non-linear data',
//             '4': 'They are computationally expensive',
//           },
//           'answer': 'They are prone to overfitting',
//         },
//         '18': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following is true about neural networks?',
//           'options': {
//             '1': 'They are used for supervised learning only',
//             '2':
//                 'They can be used for both regression and classification tasks',
//             '3': 'They can only be used for classification tasks',
//             '4': 'They require labeled data only',
//           },
//           'answer':
//               'They can be used for both regression and classification tasks',
//         },
//         '19': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is a feature of reinforcement learning?',
//           'options': {
//             '1': 'It uses labeled data',
//             '2': 'It learns through trial and error',
//             '3': 'It requires supervised training',
//             '4': 'It works only with continuous data',
//           },
//           'answer': 'It learns through trial and error',
//         },
//         '20': {
//           'correctOptionKey': '1',
//           'questionText': 'What is backpropagation in neural networks?',
//           'options': {
//             '1':
//                 'The process of adjusting the weights of the network based on errors',
//             '2':
//                 'The process of passing the output of a layer to the next layer',
//             '3': 'The process of updating the training data',
//             '4': 'The process of cleaning the dataset',
//           },
//           'answer':
//               'The process of adjusting the weights of the network based on errors',
//         },
//         '21': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is used to evaluate the performance of a machine learning model?',
//           'options': {
//             '1': 'Accuracy',
//             '2': 'Loss Function',
//             '3': 'F1-Score',
//             '4': 'All of the above',
//           },
//           'answer': 'All of the above',
//         },
//         '22': {
//           'correctOptionKey': '3',
//           'questionText': 'Which algorithm is used in deep learning models?',
//           'options': {
//             '1': 'K-Means',
//             '2': 'Decision Tree',
//             '3': 'Neural Networks',
//             '4': 'Naive Bayes',
//           },
//           'answer': 'Neural Networks',
//         },
//         '23': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is a type of reinforcement learning?',
//           'options': {
//             '1': 'Q-learning',
//             '2': 'Logistic Regression',
//             '3': 'Random Forest',
//             '4': 'Q-learning',
//           },
//           'answer': 'Q-learning',
//         },
//         '24': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which of the following is an example of unsupervised learning?',
//           'options': {
//             '1': 'Clustering',
//             '2': 'Regression',
//             '3': 'Classification',
//             '4': 'Reinforcement Learning',
//           },
//           'answer': 'Clustering',
//         },
//         '25': {
//           'correctOptionKey': '2',
//           'questionText':
//               'Which of the following is a well-known library for neural networks in Python?',
//           'options': {
//             '1': 'Pytorch',
//             '2': 'TensorFlow',
//             '3': 'scikit-learn',
//             '4': 'Keras',
//           },
//           'answer': 'TensorFlow',
//         },
//         '26': {
//           'correctOptionKey': '3',
//           'questionText':
//               'What is the role of the loss function in machine learning?',
//           'options': {
//             '1': 'To reduce overfitting',
//             '2': 'To measure the error of the model',
//             '3': 'To speed up the training process',
//             '4': 'To define the model’s architecture',
//           },
//           'answer': 'To measure the error of the model',
//         },
//         '27': {
//           'correctOptionKey': '4',
//           'questionText':
//               'Which of the following is a popular tool used for data visualization in Python?',
//           'options': {
//             '1': 'NumPy',
//             '2': 'scikit-learn',
//             '3': 'Matplotlib',
//             '4': 'TensorFlow',
//           },
//           'answer': 'Matplotlib',
//         },
//         '28': {
//           'correctOptionKey': '1',
//           'questionText':
//               'Which of the following is an example of a classification problem?',
//           'options': {
//             '1': 'Spam email detection',
//             '2': 'House price prediction',
//             '3': 'Customer clustering',
//             '4': 'Market basket analysis',
//           },
//           'answer': 'Spam email detection',
//         },
//         '29': {
//           'correctOptionKey': '2',
//           'questionText': 'What does the term "big data" refer to?',
//           'options': {
//             '1':
//                 'Data that is too large to be processed by traditional methods',
//             '2': 'Data that is stored in a big database',
//             '3': 'Data related to big businesses',
//             '4': 'Data collected from large surveys',
//           },
//           'answer':
//               'Data that is too large to be processed by traditional methods',
//         },
//         '30': {
//           'correctOptionKey': '3',
//           'questionText':
//               'Which of the following is a feature of a convolutional neural network (CNN)?',
//           'options': {
//             '1': 'It is used for sequence prediction',
//             '2': 'It is used for time series analysis',
//             '3': 'It is used for image processing',
//             '4': 'It is used for clustering',
//           },
//           'answer': 'It is used for image processing',
//         },
//       },
//     },
//   };

