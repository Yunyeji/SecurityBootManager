----------------------------------------------------------------
# Configuring Authentication Types (인증 구성 타입)
----------------------------------------------------------------

*번역 페이지 : http://www.cisco.com/c/en/us/td/docs/wireless/access_point/12-3_7_JA/configuration/guide/i1237sc/s37auth.html*

참고 : 번역중입니다.

**Understanding Authenication Types [인증 타입에 대한 이해]**

Eng
```
This section describes the authentication types that you can configure on the access point. 
The authentication types are tied to the SSIDs that you configure for the access point.
If you want to serve different types of client devices with the same access point,you can configure multiple SSIDs. 
See Chapter 7 "Configuring Multiple SSIDs," for complete instructions on configuring multiple SSIDs.
Before a wireless client device can communicate on your network through the access point, 
it must authenticate to the access point using open or shared-key authentication. 
For maximum security, client devices should also authenticate to your network 
using MAC-address or EAP authentication, authentication types that rely on an authentication server on your network.
```

Kor
```
이 장은 당신이 AP에서 설정할 수 있는 인증 타입에 대해 설명합니다.
인증 타입은 당신이 설정하고자 하는 AP의 SSID에 묶여 있습니다. 
만약 같은 AP로 클라이언트 장치의 각각 다른 타입들을 제공하고 싶다면 다중 SSID를 설정할 수 있습니다. 
알고 싶다면 Chapter 7을 보세요.
무선 클라이언트 장치는 AP를 통하여 네트워크와 통신하기 전에 반드시  
AP는 open 이나 shared-key를 이용하여 인증 절차를 밟아야 하며,  
최선의 보안을 위하여, 클라이언트 장치도 역시 반드시 MAC address나 EAP 인증이나 
또는 인증 서버에 의존하고 있는 인증 타입들을 이용하여 당신의 네트워크를 인증 받아야 합니다.
```


Note
Eng
```
By default, the access point sends reauthentication requests 
to the authentication server with the service-type attribute set to authenticate-only. 
However, some Microsoft IAS servers do not support the authenticate-only service-type attribute. 
Changing the service-type attribute to login-only ensures that Microsoft IAS servers recognize 
reauthentication requests from the access point. 
Use the dot11 aaa authentication attributes service-type login-only global configuration 
command to set the service-type attribute in reauthentication requests to login-only.
```
Kor
```
기본적으로, 인증서버(authentication server)가 서비스 타입 속성(service-type attribute)을 
authenticate-only(인증 전용)로 설정하기 위해 AP(Access Point)는 재인증 요청을 보냅니다. 
그러나 몇몇 일부의 Microsoft IAS Server는 authenticate-only이라는 서비스 타입 속성을 지원하지 않습니다. 
서비스 타입 속성을 login-only(로그인 전용)로 바꾸어 Microsoft IAS Server들이 AP로 부터 온 재요청을 통하여 인증 되도록 보장합니다. 
dot11 aaa authentication attributes service-type login-only (dot11 aaa 로그인 전용 서비스 타입 속성들) 을 사용하세요. 
그것이 재요청 시 서비스 타입 속성을 login-only을 요청하도록 만듭니다.
```

Eng
```
The access point uses several authentication mechanisms or types and can use more than one at the same time. 
These sections explain each authentication type:
•Open Authentication to the Access Point
•Shared Key Authentication to the Access Point
•EAP Authentication to the Network
•MAC Address Authentication to the Network
•Combining MAC-Based, EAP, and Open Authentication
```
Kor
```
AP는 여러 인증 메카니즘 또는 타입을 가지고 있고 동시에 여러개를 사용할 수 있습니다. 
메카니즘은 다음과 같은 방식이 있는데 상단의 사이트에 들어가셔서 링크로 직접 들어가셔서 보시길 바래요.
•Open Authentication to the Access Point
•Shared Key Authentication to the Access Point
•EAP Authentication to the Network
•MAC Address Authentication to the Network
•Combining MAC-Based, EAP, and Open Authentication
```

**Open Authentication to the Access Point[AP로 부터 Open 인증]**
Eng
```
Open authentication allows any device to authenticate and then attempt to communicate with the access point. 
Using open authentication, any wireless device can authenticate with the access point, 
but the device can communicate only if its WEP keys match the access point's. 
Devices not using WEP do not attempt to authenticate with an access point that is using WEP. 
Open authentication does not rely on a RADIUS server on your network.

Figure 11-1 shows the authentication sequence between a device trying to authenticate and 
an access point using open authentication. 
In this example, the device's WEP key does not match the access point's key, 
so it can authenticate but not pass data.
```
Kor
```
AP로 부터 Open 인증
Open 인증은 어떤 기계든 인증을 허용하며, 동시에 AP와 통신을 시도합니다. 
Open 인증을 사용하면 어떤 무선 기계든 AP에 인증 받을 수 있지만, 
무선기계의 WEP키와 AP의 키가 맞아야만 통신이 가능합니다. 
WEP을 사용하지 않는 장치들은 WEP을 사용하고 있는 AP와 인증할 수 없습니다. 
Open 인증 은 RADIUS 서버에 의존하지 않습니다.

그림 11-1 는 장치와 AP간의 인증 시도를 Open 인증을 이용하여 순차적으로 보여주고 있습니다. 
이 예는, 장치의 WEP key가 AP의 WEP키와 맞지 않은 것을 보여주고 있습니다. 
따라서 인증 받지 못하는 것을 볼 수 있습니다.
```

![54583](https://cloud.githubusercontent.com/assets/11253623/12608706/fd9157b0-c520-11e5-9cd0-5db86a8b43e6.jpg)

***Figure 11-1 Sequence for Open Authentication(그림 11-1)***


**Shared Key Authentication to the Access Point[AP로 부터 공유키 인증]**
Eng
```
Cisco provides shared key authentication to comply with the IEEE 802.11b standard. 
However, because of shared key's security flaws, Cisco recommends that you avoid using it.
During shared key authentication, the access point sends an unencrypted challenge text string 
to any device attempting to communicate with the access point. 
The device requesting authentication encrypts the challenge text and sends it back to the access point. 
If the challenge text is encrypted correctly, the access point allows the requesting device to authenticate. 
Both the unencrypted challenge and the encrypted challenge can be monitored, 
however, which leaves the access point open to attack from an intruder who calculates the WEP key 
by comparing the unencrypted and encrypted text strings. 
Because of this weakness, shared key authentication can be less secure than open authentication. 
Like open authentication, shared key authentication does not rely on a RADIUS server on your network.
Figure 11-2 shows the authentication sequence between a device trying to authenticate and 
an access point using shared key authentication. 
In this example the device's WEP key matches the access point's key, so it can authenticate and communicate.
```

Kor
```
시스코는 IEEE 802.11b 표준을 준수하여 공유키 인증을 제공합니다. 
그러나 공유키의 보안적 결점 때문에 시스코는 이 방법을 피하는 것을 추천합니다.
공유키 인증을 사용하는 동안, AP는 암호화 되지 않은 문자열을 자신과 연결하고자 하는 모든 장치에게 보냅니다. 
인증을 요청한 장치는 전송받은 문자열을 암호화 하고 다시 AP에게 보냅니다. 
만약 문자열이 올바르게 암호화 되어 보내졌다면 AP는 인증을 요청한 장치를 승인합니다. 
그러나 AP로 보내진 암호화 되지 않은 문장, 감시가 가능한 암호화 문장은 문장을 일일이 검사하여 
대조하여 WEP key를 계산하는 침입자들에게 공격될 수 있습니다. 
이러한 취약점으로 인해, 공유키 인증은 공개 인증보다 낮은 보안을 가질 수 있습니다. 
Open인증과 마찬가지로, 공유키 인증은 RADIUS서버에 의존하지 않습니다.

Figure 11-2는 장치와 AP간의 인증 시도를 공유키 인증을 이용하여 순차적으로 보여주고 있습니다. 
이 예는 장치의 WEP키와 AP의 WEP키와 매치하여 인증과 통신을 할 수 있는 모습입니다.
```

![231083](https://cloud.githubusercontent.com/assets/11253623/12608705/fd911f34-c520-11e5-8a9b-f3de960b7250.jpg)

***Figure 11-2 Sequence for Shared Key Authentication(그림 11-2)***

**EAP Authentication to the Network [네트워크를 통한 EAP인증]**

Eng
```
This authentication type provides the highest level of security for your wireless network. 
By using the Extensible Authentication Protocol (EAP) to interact with an EAP-compatible RADIUS server, 
the access point helps a wireless client device and the RADIUS server to perform mutual authentication and 
derive a dynamic unicast WEP key. 
The RADIUS server sends the WEP key to the access point, 
which uses it for all unicast data signals that it sends to or receives from the client. 
The access point also encrypts its broadcast WEP key (entered in the access point's WEP key slot 1) 
with the client's unicast key and sends it to the client.
When you enable EAP on your access points and client devices, 
authentication to the network occurs in the sequence shown in Figure 11-3:
```

Kor
```
이 인증 방법은 당신의 무선 네트워크 상에서 가장 높은 수준의 보안을 제공합니다. 
EAP와 호환되는 RADIUS서버를 이용하는 확장가능한 인증 프로토콜(EAP)를 이용함으로서, 
AP는 무선 클라이언트 장치와 상호간 인증을 수행하고 dynamic unicast WEP key를 얻어내는 
RADIUS server를 도와줍니다. RADIUS server는 WEP키를 클라이언트와 unicast data 신호를 주고 받는 AP로 보내집니다. 
AP는 broadcast로 보내질 WEP key(AP의 WEP key slot 1에 들어가는)를 클라이언트의 
unicast key와 함께 암호화 하여 클라이언트에게 보냅니다.
AP와 클라이언트 장치 위에 EAP를 사용가능하게 할 때, 
네트워크로 부터의 인증은 다음 Figure 11-3그림의 순차적으로 이루어집니다.
```

![65583](https://cloud.githubusercontent.com/assets/11253623/12608707/fd9be7de-c520-11e5-8de1-3623be47bdee.jpg)

***Figure 11-3 Sequence for EAP Authentication (그림 11-3)***

Eng
```
In Steps 1 through 9 in Figure 11-3, 
a wireless client device and a RADIUS server on the wired LAN use 802.1x and EAP to perform a mutual authentication 
through the access point. The RADIUS server sends an authentication challenge to the client. 
The client uses a one-way encryption of the user-supplied password to generate a response to the challenge and 
sends that response to the RADIUS server. 
Using information from its user database, the RADIUS server creates its own response and 
compares that to the response from the client. When the RADIUS server authenticates the client, 
the process repeats in reverse, and the client authenticates the RADIUS server.
When mutual authentication is complete, the RADIUS server and the client determine a WEP key 
that is unique to the client and provides the client with the appropriate level of network access, 
thereby approximating the level of security in a wired switched segment to an individual desktop. 
The client loads this key and prepares to use it for the logon session.
During the logon session, the RADIUS server encrypts and sends the WEP key, 
called a session key, over the wired LAN to the access point. 
The access point encrypts its broadcast key with the session key and 
sends the encrypted broadcast key to the client, which uses the session key to decrypt it. 
The client and access point activate WEP and use the session and 
broadcast WEP keys for all communications during the remainder of the session.
There is more than one type of EAP authentication, but the access point behaves the same way for each type: 
it relays authentication messages from the wireless client device to the RADIUS server and 
from the RADIUS server to the wireless client device. 
See the "Assigning Authentication Types to an SSID" section for instructions on setting up EAP on the access point.
```

Kor
```
그림 11-3에서 1~9 단계에서, 무선 클라이언트 장치와 유선 RADIUS 서버는 802.1x와 EAP를 AP를 통하여 인증을 교류하기 위해 사용합니다. 
RADIUS 서버는 클라이언트로 인증 시도를 합니다. 클라이언트는 인증 시도의 응답으로 만들어진 사용자-제공 비밀번호를 
단방향 암호로 만들어 사용하고, 그 응답을 RADIUS 서버로 보냅니다. 
사용자의 데이터베이스로 부터 정보를 사용하여, RADIUS 서버는 자신의 응답을 만들고 클라이언트로 온 응답을 비교합니다. 
RADIUS서버가 클라이언트를 인증할 때, 위의 과정을 역으로 수행하여, 클라이언트는 RADIUS서버를 인증합니다.
서로의 인증이 끝날때, RADIUS서버와 클라이언트는 클라이언트에게 유일하고 클라이언트에게 
적합한 네트워크 접근 단계을 제공하는 WEP key 를 결정합니다. 
그 때문에 개별의 데스크탑에서 wired switched segment에서의 보안 인증 단계에 가깝습니다. 
클라이언트는 이 키를 가져오고 로그온 세션을 사용할 준비를 합니다.
로그온 세션 단계에서, RADIUS 서버는 WEP key를 암호화 하여 보냅니다. 이것을 세션 키라고 불립니다. 
이것은 wired LAN을 타고 AP로 갑니다. AP는 AP의 broaddcast key와 세션 키를 암호화 하고 
암호화된 broadcast key를  세션 키를 이용하여 broadcast key를 해독할 클라이언트에게 보냅니다. 
클라이언트와 AP는 WEP를 활성화 하고 그 세션과 broadcast WEP key를 세션이 유지되는 동안 모든 통신에서 사용합니다.
더 많은 EAP 인증 타입(방법)이 있지만 AP는 각각 방법에 같은 방법으로 행동을 합니다: 
그 방법은 무선 클라이언트 디바이스와 RADIUS server간 교대로 인증 메시지를 주고 받는 방법입니다. 
"Assigning Authentication Types to an SSID" 을 보시면 AP에서 EAP를 설정하는 방법을 보실 수 있습니다.
```




Eng
```
If you use EAP authentication, you can select open or shared key authentication, but you don't have to. 
EAP authentication controls authentication both to your access point and to your network.
```
Kor
```
만약 EAP 인증(Authentication)을 사용한다면, key authentication을 공개할 것인지 공유할 것인지 선택할 수 있지만, 
그럴 필요는 없어요. EAP 인증은 두가지 방법을 모두 제공하거든요. AP와 당신의 network에게 말이죠.
```

Eng
```
If you don't have a RADIUS server on your network, you can create a list of allowed MAC addresses 
on the access point's Advanced Security: MAC Address Authentication page. 
Devices with MAC addresses not on the list are not allowed to authenticate.
```
Kor
```
만약 RADIUS서버가 당신의 network상에 없다면, 당신은 AP의 Advanced Security(MAC Address Authentication page) 
상의 할당된 MAC 주소 목록을 생성할 수 있습니다. MAC address을 가지고 있음에도 불구하고 MAC 주소 목록에 없는 장치들은 
인증을 허가 받지 않은 겁니다.
```

Eng
```
In Cisco IOS releases 12.3(4)JA and later, you cannot enable both MAC-address authentication and WPA-PSK.
```

Kor
```
12.3(4)JA 그리고 그 이후 버전으로 출시된 Cisco IOS에서, 당신은 MAC-address 인증과 WPA-PSK인증을 활성화 할 수 없습니다.
```

Eng
```
Unicast and multicast cipher suites advertised in WPA information element (and negotiated during 802.11 association) 
may potentially mismatch with the cipher suite supported in an explicitly assigned VLAN. 
If the RADIUS server assigns a new vlan ID which uses a different cipher suite from the previously negotiated cipher suite, 
there is no way for the access point and client to switch back to the new cipher suite. 
Currently, the WPA protocol do not allow the cipher suite to be changed after the initial 802.11 cipher negotiation phase. 
In this scenario, the client device is disassociated from the wireless LAN.
```
Kor
```
WPA information element에서 명시된 (그리고 802.11연합에서 협의된) Unicast 또는 Multicast 암호 집합(cipher suites) 들은 
완전히 할당된 VLAN 안에서 지원되는 암호 집합들과 잠재적으로 불일치 할 가능성이 있습니다. 
만약 RADIUS server가 전에 협상된 암호 집합과 다른 암호 집합을 사용하는 새로운 vlan ID를 할당한다면 
AP와 client의 암호 집합을 새로운 암호 집합으로 바꾸는 방법은 없습니다.(의역)
현재, WPA 프로토콜은 암호 집합을 초기의 802.11 암호 협상 과정 후에 바꾸는 것을 허락하지 않았습니다. 
결국 이렇게 되면, 클라이언트 기기는 무선 랜으로 부터 미연결(disassociated)상태가 됩니다.
```

Eng
```
When you configure TKIP-only cipher encryption (not TKIP + WEP 128 or TKIP + WEP 40) on any radio interface or VLAN, 
every SSID on that radio or VLAN must be set to use WPA key management. 
If you configure TKIP on a radio or VLAN but you do not configure key management on the SSIDs, client authentication fails on the SSIDs.
```
Kor
```
어떤 radio interface나 vlan에서 TKIP(TKIP + WEP 128 , TKIP + WEP 40같은거 말고 순수한 TKIP) 암호화 방법을 설정할 때, 
그 radio나 vlan의 모든 SSID 반드시 WPA key 관리를 사용하도록 설정해야 합니다. 
만약 radio 나 VALN의  TKIP를 설정하는데 SSID들의 key management를 설정하지 않는다면 SSID에서 client인증은 실패하게 됩니다.
```

Eng
```
Some non-Cisco Aironet client adapters do not perform 802.1x authentication 
to the access point unless you configure Open authentication with EAP. 
To allow both Cisco Aironet clients using LEAP and non-Cisco Aironet clients using LEAP to associate using the same SSID, 
you might need to configure the SSID for both Network EAP authentication and Open authentication with EAP.
Likewise, to allow both Cisco Aironet 802.11a/b/g client adapters (CB21AG and PI21AG) running EAP-FAST and 
non-Cisco Aironet clients using EAP-FAST or LEAP to associate using the same SSID, 
you might need to configure the SSID for both Network EAP authentication and Open authentication with EAP.
```
Kor
```
몇몇의 Cisco Aironet client가 아닌 어댑터들은 Open authenication with EAP를 
설정하지 않으면 AP 802.1x 인증을 하지 못합니다. 
LEAP를 사용하는 Cisco Aironet client와 LEAP를 사용하는 non-Cisco Aironet client가 같은 SSID로 사용하면서 
연결하게 하기 위해서는 Network EAP 인증과  Open authenication with EAP를 SSID에 설정해야 합니다.
게다가, EAP-FAST위에 돌아가는 Cisco Aironet 802.11a/b/g client 어댑터들( CB21AG,PI21AG)과 
EAP-FAST나 LEAP 위에 돌아가는 non-Cisco Aironet clients, 이 두개의 Client가 서로 같은 SSID를 사용하며 연결되는것을 
허용하기 위해서는 이것또한 Network EAP 인증과 Open authenication with EAP를 SSID에 설정해야 합니다.  
```
