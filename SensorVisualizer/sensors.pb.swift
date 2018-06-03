// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: sensors.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Car {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sensors: [Sensor] = []

  var obstacles: [Obstacle] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Sensor {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var type: Sensor.SensorType {
    get {return _storage._type ?? .camera}
    set {_uniqueStorage()._type = newValue}
  }
  /// Returns true if `type` has been explicitly set.
  var hasType: Bool {return _storage._type != nil}
  /// Clears the value of `type`. Subsequent reads from it will return its default value.
  mutating func clearType() {_storage._type = nil}

  var translation: Sensor.Translate {
    get {return _storage._translation ?? Sensor.Translate()}
    set {_uniqueStorage()._translation = newValue}
  }
  /// Returns true if `translation` has been explicitly set.
  var hasTranslation: Bool {return _storage._translation != nil}
  /// Clears the value of `translation`. Subsequent reads from it will return its default value.
  mutating func clearTranslation() {_storage._translation = nil}

  var rotation: Sensor.Rotate {
    get {return _storage._rotation ?? Sensor.Rotate()}
    set {_uniqueStorage()._rotation = newValue}
  }
  /// Returns true if `rotation` has been explicitly set.
  var hasRotation: Bool {return _storage._rotation != nil}
  /// Clears the value of `rotation`. Subsequent reads from it will return its default value.
  mutating func clearRotation() {_storage._rotation = nil}

  var cameraParams: Sensor.CameraParams {
    get {return _storage._cameraParams ?? Sensor.CameraParams()}
    set {_uniqueStorage()._cameraParams = newValue}
  }
  /// Returns true if `cameraParams` has been explicitly set.
  var hasCameraParams: Bool {return _storage._cameraParams != nil}
  /// Clears the value of `cameraParams`. Subsequent reads from it will return its default value.
  mutating func clearCameraParams() {_storage._cameraParams = nil}

  var accelParams: Sensor.AccelParams {
    get {return _storage._accelParams ?? Sensor.AccelParams()}
    set {_uniqueStorage()._accelParams = newValue}
  }
  /// Returns true if `accelParams` has been explicitly set.
  var hasAccelParams: Bool {return _storage._accelParams != nil}
  /// Clears the value of `accelParams`. Subsequent reads from it will return its default value.
  mutating func clearAccelParams() {_storage._accelParams = nil}

  var speedParams: Sensor.SpeedParams {
    get {return _storage._speedParams ?? Sensor.SpeedParams()}
    set {_uniqueStorage()._speedParams = newValue}
  }
  /// Returns true if `speedParams` has been explicitly set.
  var hasSpeedParams: Bool {return _storage._speedParams != nil}
  /// Clears the value of `speedParams`. Subsequent reads from it will return its default value.
  mutating func clearSpeedParams() {_storage._speedParams = nil}

  var radarParams: Sensor.RadarParams {
    get {return _storage._radarParams ?? Sensor.RadarParams()}
    set {_uniqueStorage()._radarParams = newValue}
  }
  /// Returns true if `radarParams` has been explicitly set.
  var hasRadarParams: Bool {return _storage._radarParams != nil}
  /// Clears the value of `radarParams`. Subsequent reads from it will return its default value.
  mutating func clearRadarParams() {_storage._radarParams = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum SensorType: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case camera // = 0
    case acceleration // = 1
    case speed // = 2
    case radar // = 3

    init() {
      self = .camera
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .camera
      case 1: self = .acceleration
      case 2: self = .speed
      case 3: self = .radar
      default: return nil
      }
    }

    var rawValue: Int {
      switch self {
      case .camera: return 0
      case .acceleration: return 1
      case .speed: return 2
      case .radar: return 3
      }
    }

  }

  struct Translate {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Axis defined to be positive out of camera.
    var x: Double {
      get {return _x ?? 0}
      set {_x = newValue}
    }
    /// Returns true if `x` has been explicitly set.
    var hasX: Bool {return self._x != nil}
    /// Clears the value of `x`. Subsequent reads from it will return its default value.
    mutating func clearX() {self._x = nil}

    var y: Double {
      get {return _y ?? 0}
      set {_y = newValue}
    }
    /// Returns true if `y` has been explicitly set.
    var hasY: Bool {return self._y != nil}
    /// Clears the value of `y`. Subsequent reads from it will return its default value.
    mutating func clearY() {self._y = nil}

    var z: Double {
      get {return _z ?? 0}
      set {_z = newValue}
    }
    /// Returns true if `z` has been explicitly set.
    var hasZ: Bool {return self._z != nil}
    /// Clears the value of `z`. Subsequent reads from it will return its default value.
    mutating func clearZ() {self._z = nil}

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _x: Double? = nil
    fileprivate var _y: Double? = nil
    fileprivate var _z: Double? = nil
  }

  struct Rotate {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var x: Double {
      get {return _x ?? 0}
      set {_x = newValue}
    }
    /// Returns true if `x` has been explicitly set.
    var hasX: Bool {return self._x != nil}
    /// Clears the value of `x`. Subsequent reads from it will return its default value.
    mutating func clearX() {self._x = nil}

    var y: Double {
      get {return _y ?? 0}
      set {_y = newValue}
    }
    /// Returns true if `y` has been explicitly set.
    var hasY: Bool {return self._y != nil}
    /// Clears the value of `y`. Subsequent reads from it will return its default value.
    mutating func clearY() {self._y = nil}

    var z: Double {
      get {return _z ?? 0}
      set {_z = newValue}
    }
    /// Returns true if `z` has been explicitly set.
    var hasZ: Bool {return self._z != nil}
    /// Clears the value of `z`. Subsequent reads from it will return its default value.
    mutating func clearZ() {self._z = nil}

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _x: Double? = nil
    fileprivate var _y: Double? = nil
    fileprivate var _z: Double? = nil
  }

  struct CameraParams {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Supplied in radians.
    var fov: Double {
      get {return _storage._fov ?? 0}
      set {_uniqueStorage()._fov = newValue}
    }
    /// Returns true if `fov` has been explicitly set.
    var hasFov: Bool {return _storage._fov != nil}
    /// Clears the value of `fov`. Subsequent reads from it will return its default value.
    mutating func clearFov() {_storage._fov = nil}

    var focalLength: Double {
      get {return _storage._focalLength ?? 0}
      set {_uniqueStorage()._focalLength = newValue}
    }
    /// Returns true if `focalLength` has been explicitly set.
    var hasFocalLength: Bool {return _storage._focalLength != nil}
    /// Clears the value of `focalLength`. Subsequent reads from it will return its default value.
    mutating func clearFocalLength() {_storage._focalLength = nil}

    var imageSize: Sensor.CameraParams.ImageSize {
      get {return _storage._imageSize ?? Sensor.CameraParams.ImageSize()}
      set {_uniqueStorage()._imageSize = newValue}
    }
    /// Returns true if `imageSize` has been explicitly set.
    var hasImageSize: Bool {return _storage._imageSize != nil}
    /// Clears the value of `imageSize`. Subsequent reads from it will return its default value.
    mutating func clearImageSize() {_storage._imageSize = nil}

    var bitVal: Double {
      get {return _storage._bitVal ?? 0}
      set {_uniqueStorage()._bitVal = newValue}
    }
    /// Returns true if `bitVal` has been explicitly set.
    var hasBitVal: Bool {return _storage._bitVal != nil}
    /// Clears the value of `bitVal`. Subsequent reads from it will return its default value.
    mutating func clearBitVal() {_storage._bitVal = nil}

    var unknownFields = SwiftProtobuf.UnknownStorage()

    struct ImageSize {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      var width: Int32 {
        get {return _width ?? 0}
        set {_width = newValue}
      }
      /// Returns true if `width` has been explicitly set.
      var hasWidth: Bool {return self._width != nil}
      /// Clears the value of `width`. Subsequent reads from it will return its default value.
      mutating func clearWidth() {self._width = nil}

      var height: Int32 {
        get {return _height ?? 0}
        set {_height = newValue}
      }
      /// Returns true if `height` has been explicitly set.
      var hasHeight: Bool {return self._height != nil}
      /// Clears the value of `height`. Subsequent reads from it will return its default value.
      mutating func clearHeight() {self._height = nil}

      var unknownFields = SwiftProtobuf.UnknownStorage()

      init() {}

      fileprivate var _width: Int32? = nil
      fileprivate var _height: Int32? = nil
    }

    init() {}

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  struct AccelParams {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var accel: Double {
      get {return _accel ?? 0}
      set {_accel = newValue}
    }
    /// Returns true if `accel` has been explicitly set.
    var hasAccel: Bool {return self._accel != nil}
    /// Clears the value of `accel`. Subsequent reads from it will return its default value.
    mutating func clearAccel() {self._accel = nil}

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _accel: Double? = nil
  }

  struct SpeedParams {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var speed: Double {
      get {return _speed ?? 0}
      set {_speed = newValue}
    }
    /// Returns true if `speed` has been explicitly set.
    var hasSpeed: Bool {return self._speed != nil}
    /// Clears the value of `speed`. Subsequent reads from it will return its default value.
    mutating func clearSpeed() {self._speed = nil}

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _speed: Double? = nil
  }

  struct RadarParams {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var range: Double {
      get {return _range ?? 0}
      set {_range = newValue}
    }
    /// Returns true if `range` has been explicitly set.
    var hasRange: Bool {return self._range != nil}
    /// Clears the value of `range`. Subsequent reads from it will return its default value.
    mutating func clearRange() {self._range = nil}

    var responseTime: Double {
      get {return _responseTime ?? 0}
      set {_responseTime = newValue}
    }
    /// Returns true if `responseTime` has been explicitly set.
    var hasResponseTime: Bool {return self._responseTime != nil}
    /// Clears the value of `responseTime`. Subsequent reads from it will return its default value.
    mutating func clearResponseTime() {self._responseTime = nil}

    /// in degrees or radians
    var beamX: Double {
      get {return _beamX ?? 0}
      set {_beamX = newValue}
    }
    /// Returns true if `beamX` has been explicitly set.
    var hasBeamX: Bool {return self._beamX != nil}
    /// Clears the value of `beamX`. Subsequent reads from it will return its default value.
    mutating func clearBeamX() {self._beamX = nil}

    var beamY: Double {
      get {return _beamY ?? 0}
      set {_beamY = newValue}
    }
    /// Returns true if `beamY` has been explicitly set.
    var hasBeamY: Bool {return self._beamY != nil}
    /// Clears the value of `beamY`. Subsequent reads from it will return its default value.
    mutating func clearBeamY() {self._beamY = nil}

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _range: Double? = nil
    fileprivate var _responseTime: Double? = nil
    fileprivate var _beamX: Double? = nil
    fileprivate var _beamY: Double? = nil
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Car: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Car"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sensors"),
    2: .same(proto: "obstacles"),
  ]

  public var isInitialized: Bool {
    if !SwiftProtobuf.Internal.areAllInitialized(self.sensors) {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.sensors)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.obstacles)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sensors.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.sensors, fieldNumber: 1)
    }
    if !self.obstacles.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.obstacles, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Car) -> Bool {
    if self.sensors != other.sensors {return false}
    if self.obstacles != other.obstacles {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Sensor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Sensor"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "translation"),
    3: .same(proto: "rotation"),
    4: .standard(proto: "camera_params"),
    5: .standard(proto: "accel_params"),
    6: .standard(proto: "speed_params"),
    7: .standard(proto: "radar_params"),
  ]

  fileprivate class _StorageClass {
    var _type: Sensor.SensorType? = nil
    var _translation: Sensor.Translate? = nil
    var _rotation: Sensor.Rotate? = nil
    var _cameraParams: Sensor.CameraParams? = nil
    var _accelParams: Sensor.AccelParams? = nil
    var _speedParams: Sensor.SpeedParams? = nil
    var _radarParams: Sensor.RadarParams? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _type = source._type
      _translation = source._translation
      _rotation = source._rotation
      _cameraParams = source._cameraParams
      _accelParams = source._accelParams
      _speedParams = source._speedParams
      _radarParams = source._radarParams
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._type == nil {return false}
      if let v = _storage._cameraParams, !v.isInitialized {return false}
      if let v = _storage._accelParams, !v.isInitialized {return false}
      if let v = _storage._speedParams, !v.isInitialized {return false}
      if let v = _storage._radarParams, !v.isInitialized {return false}
      return true
    }
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularEnumField(value: &_storage._type)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._translation)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._rotation)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._cameraParams)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._accelParams)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._speedParams)
        case 7: try decoder.decodeSingularMessageField(value: &_storage._radarParams)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._type {
        try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
      }
      if let v = _storage._translation {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._rotation {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._cameraParams {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._accelParams {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._speedParams {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if let v = _storage._radarParams {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Sensor) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._type != other_storage._type {return false}
        if _storage._translation != other_storage._translation {return false}
        if _storage._rotation != other_storage._rotation {return false}
        if _storage._cameraParams != other_storage._cameraParams {return false}
        if _storage._accelParams != other_storage._accelParams {return false}
        if _storage._speedParams != other_storage._speedParams {return false}
        if _storage._radarParams != other_storage._radarParams {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Sensor.SensorType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CAMERA"),
    1: .same(proto: "ACCELERATION"),
    2: .same(proto: "SPEED"),
    3: .same(proto: "RADAR"),
  ]
}

extension Sensor.Translate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Sensor.protoMessageName + ".Translate"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "x"),
    2: .same(proto: "y"),
    3: .same(proto: "z"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularDoubleField(value: &self._x)
      case 2: try decoder.decodeSingularDoubleField(value: &self._y)
      case 3: try decoder.decodeSingularDoubleField(value: &self._z)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._x {
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 1)
    }
    if let v = self._y {
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 2)
    }
    if let v = self._z {
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Sensor.Translate) -> Bool {
    if self._x != other._x {return false}
    if self._y != other._y {return false}
    if self._z != other._z {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Sensor.Rotate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Sensor.protoMessageName + ".Rotate"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "x"),
    2: .same(proto: "y"),
    3: .same(proto: "z"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularDoubleField(value: &self._x)
      case 2: try decoder.decodeSingularDoubleField(value: &self._y)
      case 3: try decoder.decodeSingularDoubleField(value: &self._z)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._x {
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 1)
    }
    if let v = self._y {
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 2)
    }
    if let v = self._z {
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Sensor.Rotate) -> Bool {
    if self._x != other._x {return false}
    if self._y != other._y {return false}
    if self._z != other._z {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Sensor.CameraParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Sensor.protoMessageName + ".CameraParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "fov"),
    2: .standard(proto: "focal_length"),
    3: .standard(proto: "image_size"),
    4: .standard(proto: "bit_val"),
  ]

  fileprivate class _StorageClass {
    var _fov: Double? = nil
    var _focalLength: Double? = nil
    var _imageSize: Sensor.CameraParams.ImageSize? = nil
    var _bitVal: Double? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _fov = source._fov
      _focalLength = source._focalLength
      _imageSize = source._imageSize
      _bitVal = source._bitVal
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._fov == nil {return false}
      if _storage._focalLength == nil {return false}
      if _storage._imageSize == nil {return false}
      if _storage._bitVal == nil {return false}
      if let v = _storage._imageSize, !v.isInitialized {return false}
      return true
    }
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularDoubleField(value: &_storage._fov)
        case 2: try decoder.decodeSingularDoubleField(value: &_storage._focalLength)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._imageSize)
        case 4: try decoder.decodeSingularDoubleField(value: &_storage._bitVal)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._fov {
        try visitor.visitSingularDoubleField(value: v, fieldNumber: 1)
      }
      if let v = _storage._focalLength {
        try visitor.visitSingularDoubleField(value: v, fieldNumber: 2)
      }
      if let v = _storage._imageSize {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._bitVal {
        try visitor.visitSingularDoubleField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Sensor.CameraParams) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._fov != other_storage._fov {return false}
        if _storage._focalLength != other_storage._focalLength {return false}
        if _storage._imageSize != other_storage._imageSize {return false}
        if _storage._bitVal != other_storage._bitVal {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Sensor.CameraParams.ImageSize: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Sensor.CameraParams.protoMessageName + ".ImageSize"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "width"),
    2: .same(proto: "height"),
  ]

  public var isInitialized: Bool {
    if self._width == nil {return false}
    if self._height == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self._width)
      case 2: try decoder.decodeSingularInt32Field(value: &self._height)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._width {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    if let v = self._height {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Sensor.CameraParams.ImageSize) -> Bool {
    if self._width != other._width {return false}
    if self._height != other._height {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Sensor.AccelParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Sensor.protoMessageName + ".AccelParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "accel"),
  ]

  public var isInitialized: Bool {
    if self._accel == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularDoubleField(value: &self._accel)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._accel {
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Sensor.AccelParams) -> Bool {
    if self._accel != other._accel {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Sensor.SpeedParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Sensor.protoMessageName + ".SpeedParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "speed"),
  ]

  public var isInitialized: Bool {
    if self._speed == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularDoubleField(value: &self._speed)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._speed {
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Sensor.SpeedParams) -> Bool {
    if self._speed != other._speed {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Sensor.RadarParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Sensor.protoMessageName + ".RadarParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "range"),
    2: .standard(proto: "response_time"),
    3: .standard(proto: "beam_x"),
    4: .standard(proto: "beam_y"),
  ]

  public var isInitialized: Bool {
    if self._range == nil {return false}
    if self._responseTime == nil {return false}
    if self._beamX == nil {return false}
    if self._beamY == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularDoubleField(value: &self._range)
      case 2: try decoder.decodeSingularDoubleField(value: &self._responseTime)
      case 3: try decoder.decodeSingularDoubleField(value: &self._beamX)
      case 4: try decoder.decodeSingularDoubleField(value: &self._beamY)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._range {
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 1)
    }
    if let v = self._responseTime {
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 2)
    }
    if let v = self._beamX {
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 3)
    }
    if let v = self._beamY {
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Sensor.RadarParams) -> Bool {
    if self._range != other._range {return false}
    if self._responseTime != other._responseTime {return false}
    if self._beamX != other._beamX {return false}
    if self._beamY != other._beamY {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
