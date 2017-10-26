# Categories
categories = Category.create([
                               {
                                 id: 1,
                                 name: 'Adrenaline',
                                 description: 'Blood rushing activity'
                               },
                               {
                                 id: 2,
                                 name: 'Culture',
                                 description: 'Immerse yourself in thelocal culture'
                               },
                               {
                                 id: 3,
                                 name: 'Family',
                                 description: 'Activities for the whole family.'
                               },
                               {
                                 id: 4,
                                 name: 'Nature',
                                 description: 'Peace and tranquility with nature itself.'
                               },
                               {
                                 id: 5,
                                 name: 'Wildlife',
                                 description: 'Lets go all Lion King on your ass.'
                               },
                               {
                                 id: 6,
                                 name: 'Aquatic',
                                 description: 'Starfish, octopus, squid and sharks'
                               },
                               {
                                 id: 7,
                                 name: 'Adventure',
                                 description: 'Bucket list type of activities'
                               },
                               {
                                 id: 8,
                                 name: 'Child Friendly',
                                 description: 'Something you can dowith your little ones.Why exclude them ?'
                               },
                               {
                                 id: 9,
                                 name: 'Luxury',
                                 description: 'Good life with a lot of pampering.'
                               },
                               {
                                 id: 10,
                                 name: 'Historic',
                                 description: 'Take it back to the history books.'
                               }
                             ])

# Activities
activities = Activity.create([
                               {
                                 id: 1,
                                 name: 'Sky Diving',
                                 description: 'Jump from the sky',
                                 categories: [
                                   Category.find(1),
                                   Category.find(7)
                                 ]
                               },
                               {
                                 id: 2,
                                 name: 'Mueseum Visit',
                                 description: 'Visit a historic place',
                                 categories: [
                                   Category.find(1),
                                   Category.find(3),
                                   Category.find(8),
                                   Category.find(10)
                                 ]
                               },
                               {
                                 id: 3,
                                 name: 'Safari Drive',
                                 description: 'Go on safari in a safe car',
                                 categories: [
                                   Category.find(8),
                                   Category.find(4),
                                   Category.find(5)
                                 ]
                               },
                               {
                                 id: 4,
                                 name: 'Shark Dive',
                                 description: 'Swimming for the fishies',
                                 categories: [
                                   Category.find(1),
                                   Category.find(6),
                                   Category.find(7)
                                 ]
                               },
                               {
                                 id: 5,
                                 name: 'Hike',
                                 description: 'Go up a mountain on foot',
                                 categories: [
                                   Category.find(1),
                                   Category.find(3),
                                   Category.find(4),
                                   Category.find(8)
                                 ]
                               },
                               {
                                 id: 6,
                                 name: 'Aquarium Visit',
                                 description: 'See fishis and starfish',
                                 categories: [
                                   Category.find(6),
                                   Category.find(8),
                                   Category.find(4)
                                 ]
                               }
                             ])

# Providers
providers = Provider.create([
                              {
                                id: 1,
                                name: 'CyleX',
                                province: 'Western Cape',
                                country: 'South Africa',
                                email_1: 'admin@cyclex.com',
                                email_2: 'help@cyclex.com',
                                phone_1: 123_456_789,
                                phone_2: 987_654_321,
                                tax_number: 456_123,
                                street_number: 301,
                                street_name_1: 'Britton Avenue',
                                city: 'Cape Town',
                                website: 'www.cyclex.com'
                              },
                              {
                                id: 2,
                                name: 'Shark Attack',
                                province: 'Western Cape',
                                country: 'South Africa',
                                email_1: 'admin@cyclex.com',
                                email_2: 'help@cyclex.com',
                                phone_1: 123_456_789,
                                phone_2: 987_654_321,
                                tax_number: 456_123,
                                street_number: 301,
                                street_name_1: 'Britton Avenue',
                                city: 'Cape Town',
                                website: 'www.sharks.com'
                              },
                              {
                                id: 3,
                                name: 'Cape Town Planetirium',
                                province: 'Western Cape',
                                country: 'South Africa',
                                email_1: 'admin@cyclex.com',
                                email_2: 'help@cyclex.com',
                                phone_1: 123_456_789,
                                phone_2: 987_654_321,
                                tax_number: 456_123,
                                street_number: 301,
                                street_name_1: 'Britton Avenue',
                                city: 'Cape Town',
                                website: 'www.planet.com'
                              },
                              {
                                id: 4,
                                name: 'Kirstenbosch Gardens',
                                province: 'Western Cape',
                                country: 'South Africa',
                                email_1: 'admin@cyclex.com',
                                email_2: 'help@cyclex.com',
                                phone_1: 123_456_789,
                                phone_2: 987_654_321,
                                tax_number: 456_123,
                                street_number: 301,
                                street_name_1: 'Britton Avenue',
                                city: 'Cape Town',
                                website: 'www.kirstengardens.com'
                              },
                              {
                                id: 5,
                                name: 'Hop On Hop Off Bus',
                                province: 'Western Cape',
                                country: 'South Africa',
                                email_1: 'admin@cyclex.com',
                                email_2: 'help@cyclex.com',
                                phone_1: 123_456_789,
                                phone_2: 987_654_321,
                                tax_number: 456_123,
                                street_number: 301,
                                street_name_1: 'Britton Avenue',
                                city: 'Cape Town',
                                website: 'www.hoho.com'
                              },
                              {
                                id: 6,
                                name: 'Boulder Bayers',
                                province: 'Western Cape',
                                country: 'South Africa',
                                email_1: 'admin@cyclex.com',
                                email_2: 'help@cyclex.com',
                                phone_1: 123_456_789,
                                phone_2: 987_654_321,
                                tax_number: 456_123,
                                street_number: 301,
                                street_name_1: 'Britton Avenue',
                                city: 'Cape Town',
                                website: 'www.boulder.com'
                              },
                              {
                                id: 7,
                                name: 'VA Waterfront',
                                province: 'Western Cape',
                                country: 'South Africa',
                                email_1: 'admin@cyclex.com',
                                email_2: 'help@cyclex.com',
                                phone_1: 123_456_789,
                                phone_2: 987_654_321,
                                tax_number: 456_123,
                                street_number: 301,
                                street_name_1: 'Britton Avenue',
                                city: 'Cape Town',
                                website: 'www.waterfront.com'
                              }
                            ])

# Trips
trips = Trip.create([
                      {
                        name: 'My Sassy Salamander',
                        start_date: '2017-06-17',
                        end_date: '2017-06-25',
                        user_id: '1',
                        number_of_adults: 1,
                        number_of_infants: 1,
                        number_of_children: 0,
                        city: 'Cape Town',
                        country: 'South Africa',
                        region: 'Western Province'
                      },
                      {
                        name: 'My Mexico Amehico',
                        start_date: '2017-06-17',
                        end_date: '2017-06-25',
                        user_id: '2',
                        number_of_adults: 1,
                        number_of_infants: 1,
                        number_of_children: 0,
                        city: 'Cape Town',
                        country: 'South Africa',
                        region: 'Western Province'
                      },
                      {
                        name: 'My Alibama Obama',
                        start_date: '2017-06-17',
                        end_date: '2017-06-25',
                        user_id: '3',
                        number_of_adults: 1,
                        number_of_infants: 1,
                        number_of_children: 0,
                        city: 'Cape Town',
                        country: 'South Africa',
                        region: 'Western Province'
                      },
                      {
                        name: 'My Europe Twoyopr',
                        start_date: '2017-06-17',
                        end_date: '2017-06-25',
                        user_id: '4',
                        number_of_adults: 1,
                        number_of_infants: 1,
                        number_of_children: 0,
                        city: 'Cape Town',
                        country: 'South Africa',
                        region: 'Western Province'
                      },
                      {
                        name: 'My America Liquor',
                        start_date: '2017-06-17',
                        end_date: '2017-06-25',
                        user_id: '5',
                        number_of_adults: 1,
                        number_of_infants: 1,
                        number_of_children: 0,
                        city: 'Cape Town',
                        country: 'South Africa',
                        region: 'Western Province'
                      }
                    ])

# Offerings
offerings = Offering.create([
                              {
                                name: 'My offy offering',
                                provider_id: 1,
                                activity_id: 1,
                                description: 'This is my cycle activity',
                                place: 'Fish Hoek',
                                pricingperperson: 299,
                                inclusions: 'All things nice',
                                exclusions: 'All things rice',
                                attachments_attributes:
                                {
                                  attachment1: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment2: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment3: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment4: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment5: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment6: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  }
                                }
                              },
                              {
                                name: 'Shark Attack',
                                provider_id: 1,
                                activity_id: 1,
                                description: 'This is my cycle activity',
                                place: 'Fish Hoek',
                                pricingperperson: 299,
                                inclusions: 'All things nice',
                                exclusions: 'All things rice',
                                attachments_attributes:
                                {
                                  attachment1: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_2.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment2: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment3: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment4: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment5: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment6: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  }
                                }
                              },
                              {
                                name: 'Guided Walking Tour',
                                provider_id: 1,
                                activity_id: 1,
                                description: 'This is my cycle activity',
                                place: 'Fish Hoek',
                                pricingperperson: 299,
                                inclusions: 'All things nice',
                                exclusions: 'All things rice',
                                attachments_attributes:
                                {
                                  attachment1: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_3.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment2: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment3: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment4: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment5: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment6: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  }
                                }
                              },
                              {
                                name: 'Table Mountain Hike',
                                provider_id: 1,
                                activity_id: 1,
                                description: 'This is my cycle activity',
                                place: 'Fish Hoek',
                                pricingperperson: 299,
                                inclusions: 'All things nice',
                                exclusions: 'All things rice',
                                attachments_attributes:
                                {
                                  attachment1: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_4.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment2: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment3: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment4: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment5: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment6: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  }
                                }
                              },
                              {
                                name: 'Cycle Africa',
                                provider_id: 1,
                                activity_id: 1,
                                description: 'This is my cycle activity',
                                place: 'Fish Hoek',
                                pricingperperson: 299,
                                inclusions: 'All things nice',
                                exclusions: 'All things rice',
                                attachments_attributes:
                                {
                                  attachment1: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_5.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment2: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment3: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment4: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment5: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment6: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  }
                                }
                              },
                              {
                                name: 'Diamond Tour',
                                provider_id: 1,
                                activity_id: 1,
                                description: 'This is my cycle activity',
                                place: 'Fish Hoek',
                                pricingperperson: 299,
                                inclusions: 'All things nice',
                                exclusions: 'All things rice',
                                attachments_attributes:
                                {
                                  attachment1: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_6.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment2: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment3: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment4: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment5: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment6: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  }
                                }
                              },
                              {
                                name: 'Penguin Viewing',
                                provider_id: 1,
                                activity_id: 1,
                                description: 'This is my cycle activity',
                                place: 'Fish Hoek',
                                pricingperperson: 299,
                                inclusions: 'All things nice',
                                exclusions: 'All things rice',
                                attachments_attributes:
                                {
                                  attachment1: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_7.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment2: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment3: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment4: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment5: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment6: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  }
                                }
                              },
                              {
                                name: 'Snorkel Diving',
                                provider_id: 1,
                                activity_id: 1,
                                description: 'This is my cycle activity',
                                place: 'Fish Hoek',
                                pricingperperson: 299,
                                inclusions: 'All things nice',
                                exclusions: 'All things rice',
                                attachments_attributes:
                                {
                                  attachment1: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_8.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment2: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment3: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment4: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment5: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment6: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  }
                                }
                              },
                              {
                                name: 'Desert 4x4',
                                provider_id: 1,
                                activity_id: 1,
                                description: 'This is my cycle activity',
                                place: 'Fish Hoek',
                                pricingperperson: 299,
                                inclusions: 'All things nice',
                                exclusions: 'All things rice',
                                attachments_attributes:
                                {
                                  attachment1: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_9.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment2: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment3: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment4: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment5: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment6: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  }
                                }
                              },
                              {
                                name: 'Surf and Turf',
                                provider_id: 1,
                                activity_id: 1,
                                description: 'This is my cycle activity',
                                place: 'Fish Hoek',
                                pricingperperson: 299,
                                inclusions: 'All things nice',
                                exclusions: 'All things rice',
                                attachments_attributes:
                                {
                                  attachment1: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_10.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment2: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment3: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment4: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment5: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment6: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  }
                                }
                              },
                              {
                                name: 'Wine Farm Tram',
                                provider_id: 1,
                                activity_id: 1,
                                description: 'This is my cycle activity',
                                place: 'Fish Hoek',
                                pricingperperson: 299,
                                inclusions: 'All things nice',
                                exclusions: 'All things rice',
                                attachments_attributes:
                                {
                                  attachment1: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment2: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment3: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment4: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment5: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  },
                                  attachment6: {
                                    file: Rails.root.join('spec/fixtures/images/offerings/offering_image_1.jpg').open,
                                    file_cache: ''
                                  }
                                }
                              }
                            ])

# Reservations
reservations = Reservation.create([
                                    {
                                      user_id: 1,
                                      offering: Offering.find(1),
                                      booking_date: '2017-06-19 22:05:31',
                                      start_time: '2017-06-19 22:05:31',
                                      end_time: '2017-06-19 22:05:31',
                                      status: 'booked',
                                      trip: Trip.find(5)
                                    },
                                    {
                                      user_id: 1,
                                      offering: Offering.find(1),
                                      booking_date: '2017-06-19 22:05:31',
                                      start_time: '2017-06-19 22:05:31',
                                      end_time: '2017-06-19 22:05:31',
                                      status: 'pending',
                                      trip: Trip.find(4)
                                    },
                                    {
                                      user_id: 1,
                                      offering: Offering.find(1),
                                      booking_date: '2017-06-19 22:05:31',
                                      start_time: '2017-06-19 22:05:31',
                                      end_time: '2017-06-19 22:05:31',
                                      status: 'booked',
                                      trip: Trip.find(3)
                                    },
                                    {
                                      user_id: 1,
                                      offering: Offering.find(1),
                                      booking_date: '2017-06-19 22:05:31',
                                      start_time: '2017-06-19 22:05:31',
                                      end_time: '2017-06-19 22:05:31',
                                      status: 'reserved',
                                      trip: Trip.find(2)
                                    },
                                    {
                                      user_id: 1,
                                      offering: Offering.find(1),
                                      booking_date: '2017-06-19 22:05:31',
                                      start_time: '2017-06-19 22:05:31',
                                      end_time: '2017-06-19 22:05:31',
                                      status: 'booked',
                                      trip: Trip.find(1)
                                    }
                                  ])

# Users
user1 = User.new(
  {
    email: 'admin1@admin.com',
    password: 'password',
    password_confirmation: 'password',
    admin: true
  }
)
user1.save


user2 = User.new(
  {
    email: 'superadmin1@testing.com',
    password: 'password',
    password_confirmation: 'password',
    admin:false
  }
)
user2.save