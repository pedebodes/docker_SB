import sys

# sys.path.insert(0, "/superbuy/deploy/sbflaskapps")
sys.path.insert(0, "repositorios/portal/web")

import os

os.environ["NLS_LANG"] = "BRAZILIAN PORTUGUESE_BRAZIL.WE8ISO8859P1"

from newsuperbuy import app


from newsuperbuy.proxy_fix import ProxyFix

application = ProxyFix(app)


# if __name__ == "__main__":
#     app.run()
