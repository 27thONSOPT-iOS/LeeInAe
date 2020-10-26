# 1주차 과제
### 화면 구성
<img width="381" alt="스크린샷 2020-10-26 오전 1 55 49" src="https://user-images.githubusercontent.com/26399850/97113534-624bc780-172e-11eb-9a44-8a6dfd15a68c.png">

1. 메인 (viewController)
1. 로그인 (LoginViewController)
1. 회원가입 (RegisterViewController)

```
메인 <-> 로그인 : present, dismiss
로그인 <-> 회원가입 : push, pop
```

## present, dismiss
+ present: 뷰 컨트롤러 모달을 나타나게 한다. (세로로 이동)
**뒤로가기** 버튼이 따로 생기지 않아 `dismiss()`로 화면을 꺼야한다.
+ dismiss: 뷰 컨트롤러 모달을 사라지게 한다.

## push, pop
+ pushViewController: navigation stack에 push하고 navigation이 이동하는 위치로 이동 (가로로 이동)
+ popViewController: navigation stack에 들어온 뷰 컨트롤러를 pop하고 display를 update한다.

## 데이터 전달하기 
+ instantiateViewController
```swift
func instantiateViewController<ViewController>(identifier: String, creator: ((NSCoder) -> ViewController?)? = nil) -> ViewController where ViewController : UIViewController
```
storyBoard Id로 특정 뷰 컨트롤러를 생성하고 커스텀 초기화 코드로 초기화합니다. 특정 id를 가지는 뷰 컨트롤러를 반환합니다.

+ presentingViewController
```swift
var presentingViewController: UIViewController? { get }
```
자신을 호출한 viewController.
`present()`로 뷰를 띄웠다면 property에 나타게 한 뷰가 설정된다. 
현재 뷰 컨트롤러 혹은 상위 뷰 중의 어느 하나가 나타나지 않았다면 이 속성은 **nil**값을 가진다.


+ presentedViewController
```swift
var presentedViewController: UIViewController? { get }
```
자신이 호출한 viewController.
`present()`로 뷰를 띄웠다면 메소드를 호출한 뷰에 새로 나타난 뷰가 property로 설정된다. 만약에 뷰 컨트롤러가 다른 뷰 컨트롤러를 띄우지 않았다면 **nil**값을 가진다.

## 결과
![week01_assign_challenge](https://user-images.githubusercontent.com/26399850/97151146-6faa9580-17b2-11eb-9af2-bef2036e28f5.gif)
