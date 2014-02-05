# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.create(title: '云南高黎贡山标本采集',
             description: '计划7-8月份对云南高黎贡山部分高海拔地区进行全面的野外调查和标本采集',
             start_at: '2014-08-12',
             end_at: '2014-08-30',
             member: 10,
             address: '云南高黎贡山')
Event.create(title: '云南无量山标本采集',
              description: '计划7-8月份对云南无量山部分地区进行全面的野外调查和标本采集',
              start_at: '2014-09-12',
              end_at: '2014-09-30',
              member: 5,
              address: '云南无量山')
Event.create(title: '四川贡嘎山标本采集',
             description: '计划7-8月份对四川贡嘎山部分地区进行全面的野外调查和标本采集',
             start_at: '2014-05-12',
             end_at: '2014-06-30',
             member: 3,
             address: '四川贡嘎山')
Event.create(title: '湖北武当山标本采集',
          description: '计划5-6月份对湖北武当山地区进行全面的野外调查和标本采集',
          start_at: '2014-05-12',
          end_at: '2014-06-30',
          member: 2,
          address: '湖北武当山')