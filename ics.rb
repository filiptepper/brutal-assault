#!/usr/bin/env ruby

require 'bundler'

Bundler.require

events = {
  Date.new(2018, 8, 8) => {
    '14:00-14:30' => 'Jasad',
    '14:30-15:10' => 'Obscure Sphinx',
    '15:10-15:50' => 'Bleed From Within',
    '15:50-16:35' => 'Armored Saint',
    '16:35-17:25' => 'Shelter',
    '17:25-18:20' => 'Steve \'n\' Seagulls',
    '18:20-19:10' => 'Comeback Kid',
    '19:10-20:00' => 'Brujeria',
    '20:00-20:55' => 'Black Dahlia Murder',
    '20:55-21:50' => 'Helmet',
    '21:50-22:55' => 'Cannibal Corpse',
    '22:55-00:05' => 'Gojira',
    '00:05-01:10' => 'Paradise Lost',
    '01:10-02:20' => 'Tormentor',

    '15:30-16:30' => '[MG] Anime Torment',
    '16:30-17:30' => '[MG] Nervochaos',
    '17:30-18:30' => '[MG] Ingested',
    '18:30-19:35' => '[MG] Act of Defiance',
    '19:35-20:40' => '[MG] Wisdom In Chains',
    '20:40-22:00' => '[MG] Toxic Holocaust',
    '22:00-23:20' => '[MG] Evergreen Terrace',
    '23:20-00:30' => '[MG] Whoredom Rife',
    '00:30-01:50' => '[MG] Ratos De Porao',
    '01:50-02:50' => '[MG] Horskh',

    '19:40-20:45' => '[O] Kurokuma',
    '20:45-22:00' => '[O] Oraculum',
    '22:00-23:00' => '[O] Lvmen',

    '17:30-18:40' => '[KAL] Izanasz',
    '18:40-20:10' => '[KAL] 777 Babalon',
    '20:10-21:10' => '[KAL] Shantidas'
  },

  Date.new(2018, 8, 9) => {
    '10:30-11:05' => 'Godless Truth',
    '11:05-11:40' => 'Ramchat',
    '11:40-12:15' => 'Diabolical',
    '12:15-12:55' => 'Broken Hope',
    '12:55-13:35' => 'Persefone',
    '13:35-14:15' => 'Sadistic Intent',
    '14:14-15:00' => 'Counterparts',
    '15:00-15:50' => 'Exhorder',
    '15:50-16:35' => 'H2O',
    '16:35-17:25' => 'Municipal Waste',
    '17:25-18:10' => 'SSOGE',
    '18:10-19:00' => 'Carnifex',
    '19:00-19:55' => 'Green Carnation',
    '19:55-20:50' => 'Dying Fetus',
    '20:50-21:45' => 'Myrkur',
    '21:45-22:55' => 'Pain',
    '22:55-00:15' => 'Laibach',
    '00:15-01:10' => 'Converge',
    '01:10-02:10' => 'Marduk',

    '15:30-16:30' => '[MG] Daerrwin',
    '16:30-17:30' => '[MG] TBA',
    '17:30-18:30' => '[MG] Blood Incantation',
    '18:30-19:40' => '[MG] Mortiis',
    '19:40-21:05' => '[MG] Pallbearer',
    '21:05-22:15' => '[MG] Pillorian',
    '22:15-23:35' => '[MG] Bolzer',
    '23:35-00:45' => '[MG] Uncured',
    '00:45-02:05' => '[MG] Jasta',
    '02:05-03:05' => '[MG] Innersphere',

    '19:45-21:00' => '[O] Ravelin 7',
    '21:00-22:50' => '[O] Grave Pleasures',
    '22:50-00:00' => '[O] Obscure Sphinx',

    '17:30-19:00' => '[KAL] Angel Epilepsia',
    '19:00-20:15' => '[KAL] Phelios',
    '20:15-22:00' => '[KAL] Lamia Vox',
    '22:00-23:00' => '[KAL] Void Ov Voices',
  },
  Date.new(2017, 8, 10) => {
    '10:30-11:05' => 'Cutterred Flesh',
    '11:05-11:40' => 'Depresy',
    '11:40-12:15' => 'Victims',
    '12:15-12:50' => 'Insanity Alert',
    '12:50-13:30' => 'E-Force',
    '13:30-14:10' => 'Hypnos',
    '14:10-14:50' => 'Inhume',
    '14:50-15:35' => 'Harakiri For The Sky',
    '15:35-16:20' => 'Hate',
    '16:20-17:05' => 'Hentai Corporation',
    '17:05-17:55' => 'Nasty',
    '17:55-18:45' => 'Pestilence',
    '18:45-19:40' => 'Misery Index',
    '19:40-20:45' => 'Terror',
    '20:45-21:50' => 'At The Gates',
    '21:50-23:05' => 'Ministry',
    '23:05-00:20' => 'Behemoth',
    '00:20-01:15' => 'Carpathian Forest',
    '01:15-02:15' => 'Dead Congregation',

    '15:30-16:30' => '[MG] Frontside',
    '16:30-17:30' => '[MG] Poppy Seed Grinder',
    '17:30-18:30' => '[MG] Neocesar',
    '18:30-19:40' => '[MG] Prvni Hore',
    '19:40-20:55' => '[MG] Azarath',
    '20:55-22:05' => '[MG] Wrathprayer',
    '22:05-23:25' => '[MG] Dragged Into Sunlight',
    '23:25-00:35' => '[MG] Cruachan',
    '00:35-01:50' => '[MG] Ulsect',
    '01:50-02:50' => '[MG] Malokarpatan',

    '19:45-21:00' => '[O] Eskhaton',
    '21:00-22:30' => '[O] Misþyrming',
    '22:30-00:00' => '[O] Aluk Tudolo',

    '18:00-19:15' => '[KAL] Mollusk King',
    '19:15-20:45' => '[KAL] She Spread Sorrow',
    '20:45-22:15' => '[KAL] Sektion B',
    '00:00-00:30' => '[KAL] Apoptose'
  },
  Date.new(2017, 8, 11) => {
    '10:30-11:05' => 'Guineapig',
    '11:05-11:40' => 'Coffins',
    '11:40-12:20' => 'Angelmaker',
    '12:20-12:55' => 'Akercocke',
    '12:55-13:35' => 'Northlane',
    '13:35-14:15' => 'Plini',
    '14:15-15:00' => 'Integrity',
    '15:00-15:45' => 'Origin',
    '15:45-16:35' => 'Unleashed',
    '16:35-17:25' => 'Messiah',
    '17:25-18:15' => 'Dog Eat Dog',
    '18:15-19:05' => 'Nocturnus AD',
    '19:05-20:00' => 'Belphegor',
    '20:00-22:55' => 'Pain of Salvation',
    '21:05-22:00' => 'Sepultura',
    '22:00-23:15' => 'Danzig',
    '23:15-00:30' => 'Wardruna',
    '00:30-01:20' => 'Perturbator',
    '01:20-02:20' => 'Esoteric',

    '15:30-16:30' => '[MG] Broken Teeth',
    '16:30-17:30' => '[MG] Arkhon Infaustus',
    '17:30-18:30' => '[MG] Rolo Tomassi',
    '18:30-19:50' => '[MG] Celeste',
    '19:50-21:05' => '[MG] Protector',
    '21:05-22:25' => '[MG] Unsane',
    '22:25-23:40' => '[MG] Aura Noir',
    '23:40-00:50' => '[MG] Full of Hell',
    '00:50-02:00' => '[MG] Hirax',
    '02:00-03:00' => '[MG] Wiegedood',

    '19:45-21:00' => '[O] Abysmal Grief',
    '21:00-22:30' => '[O] Goblin',
    '22:30-00:00' => '[O] Dodecahedron',

    '16:00-17:30' => '[KAL] LOFN',
    '17:30-19:15' => '[KAL] Geography of Hell',
    '19:15-20:30' => '[KAL] Lahka Muza',
    '20:30-22:00' => '[KAL] Opening Performance Orchestra',
    '22:00-23:30' => '[KAL] Hecate Vs. Instinct Primal',
  }
}

c = Icalendar::Calendar.new

events.each do |date, bands|
  bands.each do |time, band|
    c.event do |e|
      day_start = date.day
      day_end   = date.day

      if time.split('-')[0].split(':')[0].to_i < 10
        day_start += 1
      end

      if time.split('-')[1].split(':')[0].to_i < 10
        day_end += 1
      end

      e.dtstart = Icalendar::Values::DateTime.new(
        DateTime.new(
          date.year,
          date.month,
          day_start,
          time.split('-')[0].split(':')[0].to_i,
          time.split('-')[0].split(':')[1].to_i,
          0
        )
      )
      e.dtend   = Icalendar::Values::DateTime.new(
        DateTime.new(
          date.year,
          date.month,
          day_end,
          time.split('-')[1].split(':')[0].to_i,
          time.split('-')[1].split(':')[1].to_i,
          0
        )
      )
      e.summary = band
    end
  end
end

File.open('brutal-assault.ics', 'w+') { |f| f.write(c.to_ical) }
