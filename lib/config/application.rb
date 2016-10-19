
ActiveRecord::Base.logger = Logger.new($PATH + '/config/debug.log')
db_conf = YAML::load(File.open(File.join($PATH,'config','databases.yml')))

CENTER_CONF = db_conf["center"]['production']
WEBSITE_CONF = db_conf["website"]['production']
