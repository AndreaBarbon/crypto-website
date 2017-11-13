
class Trade < ApplicationRecord
  
  TRADEABLE_COINS = ['1ST','2GIVE','ABY','ADT','ADX','AEON','AGRS','AMP','ANT','APX','ARDR','ARK','AUR','BAT','BAY','BCC','BCH','BCN','BCY','BELA','BITB','BLITZ','BLK','BLOCK','BNT','BRK','BRX','BSD','BTA','BTCD','BTM','BTS','BURST','BYC','CANN','CFI','CLAM','CLOAK','CLUB','COVAL','CPC','CRB','CRW','CURE','CVC','DAR','DASH','DCR','DCT','DGB','DGD','DMD','DOGE','DOPE','DRACO','DTB','DYN','EBST','EDG','EFL','EGC','EMC','EMC2','ENRG','ERC','ETC','ETH','EXCL','EXP','FAIR','FCT','FLDC','FLO','FTC','FUN','GAM','GAME','GAS','GBG','GBYTE','GCR','GEO','GLD','GNO','GNT','GOLOS','GRC','GRS','GUP','HMQ','HUC','INCNT','INFX','IOC','ION','IOP','KMD','KORE','LBC','LGD','LMC','LSK','LTC','LUN','MAID','MCO','MEME','MLN','MONA','MTL','MUE','MUSIC','MYST','NAUT','NAV','NBT','NEO','NEOS','NLG','NMC','NMR','NOTE','NXC','NXS','NXT','OK','OMG','OMNI','PART','PASC','PAY','PDC','PINK','PIVX','PKB','POT','PPC','PTC','PTOY','QRL','QTUM','QWARK','RADS','RBY','RDD','REP','RIC','RISE','RLC','SAFEX','SBD','SC','SEQ','SHIFT','SIB','SJCX','SLR','SLS','SNGLS','SNRG','SNT','SPHR','SPR','START','STEEM','STORJ','STR','STRAT','SWIFT','SWT','SYNX','SYS','THC','TIME','TKN','TKS','TRIG','TRST','TRUST','TX','UBQ','UNB','UNO','VIA','VOX','VRC','VRM','VTC','VTR','WAVES','WINGS','XAUR','XBC','XCP','XDN','XEL','XEM','XLM','XMG','XMR','XMY','XPM','XRP','XST','XVC','XVG','XWC','XZC','ZCL','ZEC','ZEN','ZRX']

  self.primary_key = "index"
  default_scope { order('date_buy DESC') }

  def crypto_compare_link
  	"https://www.cryptocompare.com/coins/#{self.ticker}/overview/BTC"
  end
end
