# name of your application
APPLICATION = vemac

# If no BOARD is found in the environment, use this default:
BOARD ?= unwd-range-l1-r3

# This has to be the absolute path to the RIOT base directory:
RIOTBASE ?= $(CURDIR)/../..

USEMODULE += lptimer

# LoRa definitions
USEMODULE += sx127x
USEMODULE += crypto
USEMODULE += hashes

# We need CRYPTO_AES for loramac, as it uses Riot's crypto
CFLAGS += -DCRYPTO_AES

# Comment this out to disable code in RIOT that does safety checking
# which is not needed in a production environment but helps in the
# development process:
DEVELHELP ?= 1

# Change this to 0 show compiler invocation lines by default:
QUIET ?= 1

include $(RIOTBASE)/Makefile.include
