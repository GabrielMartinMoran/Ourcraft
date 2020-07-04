from mcrcon import MCRcon

from config import *

with MCRcon(SERVER_IP, RCON_PASSWORD, port=SERVER_PORT) as mcr:
    resp = mcr.command("/data get entity MrKupo")
    print(resp)