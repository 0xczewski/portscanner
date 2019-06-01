#!/usr/bin/env ruby
#simple port scanner
#created by: Czewski
#Twitter: @0xczeski 

require 'socket'
require 'timeout'

print "Tartget IP: "
target_ip = gets.chomp
print "Begin port: "
begin_port = gets.chomp
print "End port: "
end_port = gets.chomp 
ports = begin_port..end_port

ports.each do |sc|
    begin 
      Timeout::timeout(10){ socket = TCPSocket.new("#{tartget_ip}", ports) }
    rescue 
            puts "CLOSED: #{sc}"
        else
            puts "OPEN: #{sc}"
        end
    end