class role::master_server {
  include profile::base
  
  #Adding a profile to this role which creates extra nodes using docketagent module.
  include profile::agent_nodes
}
