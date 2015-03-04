Song.destroy_all

puts 'Adding songs'
Song.create(title: "Song 1", url: '<iframe style="border: 0; width: 100%; height: 42px;" src="http://bandcamp.com/EmbeddedPlayer/album=1688332877/size=small/bgcol=333333/linkcol=fe7eaf/transparent=true/" seamless><a href="http://shop.silentseason.com/album/aeterna">Aeterna by Seraphim Rytm</a></iframe>')
Song.create(title: "Song 2", url: '<iframe style="border: 0; width: 100%; height: 42px;" src="http://bandcamp.com/EmbeddedPlayer/album=2703797172/size=small/bgcol=333333/linkcol=fe7eaf/transparent=true/" seamless><a href="http://shop.silentseason.com/album/wandering-compilation-sscd06">Wandering Compilation [SSCD06] by Silent Season</a></iframe>')
