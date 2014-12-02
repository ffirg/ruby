#!/usr/bin/env ruby

#
# clean up docker containers and images as they can get out of hand, pretty quickly.
#

# Decision time
def if_yes(component)

  print "Delete #{component}? [y/n]: "
  ans = gets.chomp

  if ans == "y"
    cleanup(component)
  end

end

def cleanup(component)

  case component

  when "containers"
    puts "Removing #{component}:"
    containers = %x[docker ps -a -q].strip.gsub(/\s+/, ' ')
    # need to add sanity check here to ensure we have something to get rid of!
    # only run system command if we have something
    containers_cmd = "docker rm #{containers}"
    system("#{containers_cmd}")

  when "images"
    puts "Removing #{component}:"
    images = %x[docker images -q].strip.gsub(/\s+/, ' ')
    # need to add sanity check here to ensure we have something to get rid of!
    # only run system command if we have something
    images_cmd = "docker rmi #{images}"
    system("#{images_cmd}")

  end

end

# STUFF STARTS HAPPENING HERE...
puts "This script will clean up ALL Docker containers AND/OR images."
if_yes ("containers")
if_yes ("images")

# THE END.
