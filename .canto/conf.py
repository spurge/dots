# Feeds

#add( 'https://news.ycombinator.com/rss' )
add( 'http://rss.slashdot.org/slashdot/Slashdot')
add( 'http://api.sr.se/api/rss/program/83?format=1' )
add( 'http://www.stockholmresilience.org/4.aeea46911a3127427980005758/12.7cf9c5aa121e17bab42800023070.portlet?state=rss&sv.contenttype=text/xml;charset=UTF-8' )
#add( 'http://agroinnovations.com/feed/' )
#add( 'http://agroinnovations.com/podcast/feed/' )

# Link handlers

import os

#if os.getenv( "TERM" ) == "linux":
link_handler( "elinks \"%u\"", text = True )
#else:
#	link_handler( "firefox \"%u\"" )

link_handler( "mplayer \"%u\"", ext = "mp3" )
link_handler( "evince \"%u\"", ext = "pdf", fetch = True )
image_handler( "feh \"%u\"", text = True, fetch = True )
