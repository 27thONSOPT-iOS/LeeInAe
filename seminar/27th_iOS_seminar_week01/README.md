#  1주차 
## App Lifecycle

- Not running: 앱이 실행되지 않거나 종료된 상태

### foreGround

- Inactive: 실행중이지만 어떠한 이벤트도 받지않고있는 상태
- active: 앱이 전면에서 실행 중이며 이벤트를 받고 있는 상태

### BackGround

- background: 백그라운드에 있지만 여전히 코드가 실행중 (파일 다운로드, 업로드 등)
- suspended: 앱이 보이지 않고 코드 실행도 아닌 단계. 메모리에 유지는 되고 있으나 iOS 시스템은 메모리가 부족하면 `suspend` 상태에 있는 앱들을 정리함

## 화면 상 요소를 제어하기 위한 타입

IB는 interface Builder의 약자

## @IBOutlet

처리 결과를 View에 알리고 원하는 동작을 이끔, view에 존재하는 요소와 controller를 연결하기 위한 변수

*외부에서 값을 직접 대입할 수 없는 변수! 외부에서 직접 참조할 수 없는 변수!

→ 대입하기 위해서는 따로 값을 지정해줘야한다.

## @IBAction

유저의 특정 이벤트를 감지해서 controller에 알리는 역할

특정 이벤트 발생 시 실행될 동작들을 정의

