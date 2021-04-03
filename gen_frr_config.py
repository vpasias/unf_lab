import subprocess
import ipaddress
from jinja2 import Template
# Python 3.5 script
# subprocess module from stdlib improved in later versions

frr_config_template = '''frr version {{ frr_version }}
frr defaults traditional
hostname {{ router_hostname }}
service integrated-vtysh-config
username cumulus nopassword
!
{% for interface in mpls_interfaces %}
interface {{ interface }}
 ip router isis ISIS
 isis circuit-type level-2-only
 isis network point-to-point
!
{% endfor %}
interface lo
 ip router isis ISIS
 isis passive
!
{% if edge_router %}
router bgp 65010
 neighbor {{ neighbor_loopback }} remote-as 65010
 neighbor {{ neighbor_loopback }} update-source {{ local_loopback }}
 !
 address-family ipv4 vpn
  neighbor {{ neighbor_loopback }} activate
 exit-address-family
!
router bgp 65010 vrf vrf_cust1
 !
 address-family ipv4 unicast
  redistribute connected
  label vpn export auto
  rd vpn export 65010:10
  rt vpn both 1:1
  export vpn
  import vpn
 exit-address-family
!
router bgp 65010 vrf vrf_cust2
 !
 address-family ipv4 unicast
  redistribute connected
  label vpn export auto
  rd vpn export 65010:20
  rt vpn both 2:2
  export vpn
  import vpn
 exit-address-family
!
{% endif %}
mpls ldp
 router-id {{ local_loopback }}
 !
 address-family ipv4
  discovery transport-address {{ local_loopback }}
  !
  {% for interface in mpls_interfaces %}
  interface {{ interface }}
  !
  {% endfor %}
 exit-address-family
 !
!
router isis ISIS
 net {{ iso_net }}
 metric-style wide
!
line vty
!'''
mpls_int_map = {
    'P1': ['eth1', 'eth2'],
    'PE1': ['eth3'],
    'PE2': ['eth3']
    }
