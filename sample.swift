#Autolayout logic
ViewController.swift
override func viewDidLoad() {
  
    super.viewDidLoad()

    let blueView = UIView()
    blueView.backgroundColor = UIColor.blue
    blueView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(blueView)

    let greenView = UIView()
    greenView.backgroundColor = UIColor.green
    greenView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(greenView)

    // 青のビューの左端は、親ビューの左端から30ptの位置
    blueView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30.0).isActive = true
    // 青のビューの縦方向の中心は、親ビューの縦方向の中心と同じ
    blueView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    // 青のビューの幅は、親ビューの幅の1/4
    blueView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25).isActive = true
    // 青のビューの高さは30pt
    blueView.heightAnchor.constraint(equalToConstant: 30.0).isActive = true

    // 緑のビューの左端は、青のビューの右端から20ptの位置
    greenView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: 20.0).isActive = true
    // 緑のビューの上端は、青のビューの上端と同じ位置
    greenView.topAnchor.constraint(equalTo: blueView.topAnchor).isActive = true
    // 緑のビューの幅は、青のビューの幅を1.5倍して30pt加えた大きさ
    greenView.widthAnchor.constraint(equalTo: blueView.widthAnchor, multiplier: 1.5, constant: 30.0).isActive = true
    // 緑のビューの高さは、青のビューの高さと同じ大きさ
    greenView.heightAnchor.constraint(equalTo: blueView.heightAnchor).isActive = true
}
