      users = User.create([
        { username: 'User1', password:'123', email:'User1@email.com', latitude:'40.6782', longitude:'-73.9442'},
        { username: 'User2', password:'123', email:'User2@email.com', latitude:'40.6793', longitude:'-73.9542'},
        { username: 'User3', password:'123', email:'User3@email.com', latitude:'42.6132', longitude:'-71.8289'},
        { username: 'User4', password:'123', email:'User4@email.com', latitude:'41.9457', longitude:'-72.1242'},
        { username: 'User5', password:'123', email:'User5@email.com', latitude:'40.5236', longitude:'-74.1242'},
        { username: 'User6', password:'123', email:'User6@email.com', latitude:'41.1234', longitude:'-73.5437'},
        { username: 'User7', password:'123', email:'User7@email.com', latitude:'41.1288', longitude:'-72.9637'}
        ])

      roles = Role.create([
        {name: 'stockist', user_id: 1},
        {name: 'stockist', user_id: 2},
        {name: 'stockist', user_id: 3},
        {name: 'stockist', user_id: 4},
        {name: 'seller', user_id: 5},
        {name: 'seller', user_id: 6}
        ])

      goods = Good.create([
        {name: 'Dress', description: 'Handmade dress. Knee length. New. Size Medium', start_price: '50.00', current_price: '55.00', availability: true, role_id:1},
        {name: 'Kitchen pot set', description: 'Set of 3 pots and lids. One large soup pot, one pan, one small pot. Like new.', start_price: '75.00', current_price: '70.00', availability: true, role_id:1},
        {name: 'Sweater', description: 'Sweater. Child size small. Like new', start_price: '10.00', current_price: '10.00', availability: true, role_id:1},
        {name: 'Dress', description: 'Occasion/Fancy Dress. Child size medium. Like new', start_price: '10.00', current_price: '10.00', availability: true, role_id:1},
        {name: 'Sweater', description: 'Sweater. Men size large. Handmade/New.', start_price: '15.00', current_price: '15.00', availability: true, role_id:1},
        {name: 'Kitchen dishes', description: 'Set of 12 plates and cups. Handmade. Clay.', start_price: '75.00', current_price: '100.00', availability: true, role_id:2},
        {name: 'Kitchen bowls set', description: 'Handmade ceramic bowls. Set of 3: small, medium, large', start_price: '75.00', current_price: '100.00', availability: true, role_id:3},
        {name: 'Computer', description: '2008 Mac Book. Restored', start_price: '1000', current_price: '1100', availability: true, role_id:3},
        {name: 'Cellular Phone', description: '1 year old. Restored. Good condition', start_price: '150', current_price: '110', availability: true, role_id:3},
        {name: 'Dress', description: 'Handmade dress. Long. New. Size Large', start_price: '50.00', current_price: '55.00', availability: true, role_id:3},
        {name: 'Kitchen pot set', description: 'Set of 3 pots and lids. One large soup pot, one pan, one small pot. Like new.', start_price: '75.00', current_price: '70.00', availability: true, role_id:4},
        {name: 'Top', description: 'Child size small. Like new', start_price: '10.00', current_price: '10.00', availability: true, role_id:4},
        {name: 'Button Up Shirt', description: 'Sweater. Men size large. Handmade/New.', start_price: '25.00', current_price: '25.00', availability: true, role_id:4},
        {name: 'Kitchen dishes', description: 'Set of 12 plates and cups. Handmade. Clay.', start_price: '75.00', current_price: '100.00', availability: true, role_id:2},
        {name: 'Kitchen bowls set', description: 'Handmade ceramic bowls. Set of 3: small, medium, large', start_price: '75.00', current_price: '100.00', availability: true, role_id:6}
        ])

      goods_categories = GoodCategory.create([
        {good_id: 1, category_id: 4}, {good_id: 1, category_id: 5},
        {good_id: 2, category_id: 8}, {good_id: 2, category_id: 9},
        {good_id: 3, category_id: 4}, {good_id: 3, category_id: 7},
        {good_id: 4, category_id: 4}, {good_id: 4, category_id: 7},
        {good_id: 5, category_id: 4}, {good_id: 5, category_id: 6},
        {good_id: 6, category_id: 8}, {good_id: 6, category_id: 10},
        {good_id: 7, category_id: 8}, {good_id: 7, category_id: 9}, {good_id: 7, category_id: 10},
        {good_id: 8, category_id: 11}, {good_id: 8, category_id: 12}, {good_id: 8, category_id: 14},
        {good_id: 9, category_id: 11}, {good_id: 9, category_id: 12}, {good_id: 9, category_id: 14},
        {good_id: 10, category_id: 4}, {good_id: 10, category_id: 5},
        {good_id: 11, category_id: 4}, {good_id: 11, category_id: 5},
        {good_id: 12, category_id: 4}, {good_id: 12, category_id: 7},
        {good_id: 13, category_id: 4}, {good_id: 13, category_id: 6},
        {good_id: 14, category_id: 8}, {good_id: 14, category_id: 10},
        {good_id: 15, category_id: 8}, {good_id: 15, category_id: 10}
        ])

      categories = Category.create([
        {name: 'food'}, {name: 'drygoods'}, {name: 'produce'},
        {name: 'clothing'}, {name: 'women'}, {name: 'men'}, {name: 'children'},
        {name: 'homegoods'}, {name: 'cookware'}, {name: 'dishes'},
        {name: 'electronics'}, {name: 'communication'}, {name: 'hvac'},  {name: 'media'},
        {name: 'tools'}, {name: 'construction'}, {name: 'handFarming'}, {name: 'farmTools'}
        ])

      requests = Request.create([
        {category_id: 1}, {category_id: 1}, {category_id: 1}, {category_id: 1},
        {category_id: 2}, {category_id: 2}, {category_id: 2}, {category_id: 2}, {category_id: 2}, {category_id: 2},
        {category_id: 2}, {category_id: 2}, {category_id: 2}, {category_id: 2}, {category_id: 2},
        {category_id: 3}, {category_id: 3}, {category_id: 3}, {category_id: 3}, {category_id: 3}, {category_id: 3},
        {category_id: 4}, {category_id: 4},
        {category_id: 5}, {category_id: 5}, {category_id: 5}, {category_id: 5}, {category_id: 5}, {category_id: 5}, {category_id: 5},
        {category_id: 5}, {category_id: 5},
        {category_id: 6}, {category_id: 6},
        {category_id: 7}, {category_id: 7}, {category_id: 7}, {category_id: 7}, {category_id: 7},
        {category_id: 8}, {category_id: 8}, {category_id: 8}, {category_id: 8},
        {category_id: 9}, {category_id: 9},
        {category_id: 10}, {category_id: 10}, {category_id: 10}, {category_id: 10},
        {category_id: 11}, {category_id: 11}, {category_id: 11}, {category_id: 11}, {category_id: 11}, {category_id: 11},
        {category_id: 12}, {category_id: 12}, {category_id: 12},
        {category_id: 13}, {category_id: 13}, {category_id: 13}, {category_id: 13},
        {category_id: 14}, {category_id: 14}, {category_id: 14}, {category_id: 14}, {category_id: 14},
        {category_id: 15}, {category_id: 15}, {category_id: 15},
        {category_id: 16}, {category_id: 16}, {category_id: 16}, {category_id: 16},{category_id: 16}, {category_id: 16}, {category_id: 16},
        {category_id: 17},{category_id: 17}, {category_id: 17}, {category_id: 17}, {category_id: 17},
        {category_id: 18},{category_id: 18}
        ])
