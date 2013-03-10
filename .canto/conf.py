# Feeds

add( 'http://rss.slashdot.org/slashdot/Slashdot')
add( 'http://api.sr.se/api/rss/program/83?format=1' )
add( 'http://agroinnovations.com/feed/' )
add( 'http://agroinnovations.com/podcast/feed/' )

# Link handlers

import os

if os.getenv( "TERM" ) == "linux":
	link_handler( "elinks \"%u\"", text = True )
else:
	link_handler( "firefox \"%u\"" )

link_handler( "mplayer \"%u\"", ext = "mp3" )
link_handler( "evince \"%u\"", ext = "pdf", fetch = True )
image_handler( "feh \"%u\"", text = True, fetch = True )
