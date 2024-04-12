AUTHOR = "Leonardo Giordani"
SITENAME = "The Mau Book"
SITEURL = ""
DEBUG = True
# WEBASSETS_DEBUG = True  # This unfortunately messes up the scrolling in the page

PATH = "content"

TIMEZONE = "Europe/London"

DEFAULT_LANG = "en"

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

THEME = "docs-ui"

SOCIAL = [
    {"name": "Twitter", "icon": "twitter", "url": "https://twitter.com/thedigicat"},
    {
        "name": "GitHub",
        "icon": "github",
        "url": "https://github.com/TheDigitalCatOnline",
    },
]

RELATIVE_URLS = True

DEFAULT_PAGINATION = 9

# Uncomment following line if you want document-relative URLs when developing
# RELATIVE_URLS = True

STATIC_PATHS = [
    "images",
]


MAU = {
    "pelican": True,
    "website": True,
    "visitor": {
        "templates_directory": "mau/templates",
        "pygments": {
            "html": {
                "nowrap": True,
            },
        },
    },
}
