#!/usr/bin/ruby
# Associate two Proof of Authority validator nodes to each other
# pretty gross but hey, it'll work

require 'http'

response = HTTP[:accept => "application/json"].post("http://localhost:8540", :json => {jsonrpc: "2.0",method:"parity_enode",params:[],id:0} )
enode = response.parse['result']

HTTP[:accept => "application/json"].post("http://localhost:8541", :json => {jsonrpc: "2.0",method:"parity_addReservedPeer",params:[enode],id:0} )
