## SecurityBootManager
![system architecture](https://cloud.githubusercontent.com/assets/7445459/12144751/38016ebc-b4cd-11e5-8a69-7049e67ccae2.png)
본 프로젝트는 운영체제가 부팅되기 전 단계인 커널이 로드되기 전에 동작하여 수집하고자 하는 장치에 접근하여, 노트북이라면 일체화된 Camera, Wireless Network NIC, Ethernet 통신, 부팅된 시간, 위도 & 경도 등을 이용 할 수 있는 기반 Framework 를 제작하는 것이 목표인 프로젝트로써, 저희 Framework를 이용하게 될 경우 Target Machine 에 설치 되어있는 운영체제의 종류에 종속되지 않고 동작하여 정보를 수집 후 이를 자신의 창작물을 위한 기반으로써 이용이 가능합니다.

이를 효과적으로 보여드리기 위한 예시로써 운영체제의 부팅을 스마트폰으로 제어함으로써 사용자는 필요한 경우 자신의 기기를 부팅시도한 사용자가 누구이며 부팅당시 어느 지점에 존재 하였는지를 파악 할 수 있게 됩니다.

또한 수집된 정보는 추후 포맷으로도 삭제되지 않는 공간에 저장되도록 함으로써 해당 Framework 를 사용하여 구현하고자 하는 개발자들은 이러한 수집된 부팅당시의 전방 이미지사진, 접속당시 연결된 Wifi 정보, 아이피 주소를 기반으로 한 위도 & 경도 파악 등의 정보를 이용할 수 있습니다.

## Demo Movie
![2016-01-21 10 12 05](https://cloud.githubusercontent.com/assets/7445459/12481378/1084e75e-c08c-11e5-9ebe-39aed0049658.png)
- [Demo Movie Link[&nbsp;&nbsp;400p] : https://youtu.be/1Tdsmw2bHso](https://youtu.be/1Tdsmw2bHso)
- [Demo Movie Link[FullHD] : https://youtu.be/9H7Db_Yb_Ko](https://youtu.be/9H7Db_Yb_Ko)

## Project Introduce PPTX(PDF)
[PDF Link : I_WILL_FIND_YOU_ Security Booting Manager .pdf](https://github.com/IWillFindYou/SecurityBootManager/files/79895/I_WILL_FIND_YOU_.Security.Booting.Manager.pdf)
 
## Developer
[@kbu1564](https://github.com/kbu1564)
[@JuHyun Yu](https://github.com/formfoxk)
[@dong-Hwan,Jung](https://github.com/tyburn117)
 
## Development operating environment and Related metters
1. Security Multi-BootManager Development Operating Environment : ubuntu 14.04 / Grub
2. Security Multi-BootManager App Version API 17 : Android 4.2 (Jelly Bean) 이상
  
## License
- [GPL3.0](https://github.com/IWillFindYou/SecurityBootManager/blob/develop/LICENSE)
- [GNU](https://www.gnu.org/license/licenses.html)

## Used OpenSource List
- Grub2 : GPLv3.0 License : [Grub2 Site](https://www.gnu.org/software/grub/)
- iPXE : GPLv2.0 License : [iPXE Site](http://ipxe.org/)
