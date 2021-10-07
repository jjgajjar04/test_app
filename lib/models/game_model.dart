import 'dart:convert';

class GameModel {
  String? marketId;
  String? sectionId;
  String? nation;
  int? b1;
  int? bs1;
  int? l1;
  int? ls1;
  String? Srno;
  String? gameType;
  String? UpdateTime;
  String? gstatus;
  String? remark;
  String? lasttime;
  String? min;
  String? max;
  String? C1;
  String? C2;
  String? C3;

  GameModel({
    this.marketId,
    this.sectionId,
    this.nation,
    this.b1,
    this.bs1,
    this.l1,
    this.ls1,
    this.Srno,
    this.gameType,
    this.UpdateTime,
    this.gstatus,
    this.remark,
    this.lasttime,
    this.min,
    this.max,
    this.C1,
    this.C2,
    this.C3,
  });

  Map<String, dynamic> toMap() {
    return {
      'marketId': marketId,
      'sectionId': sectionId,
      'nation': nation,
      'b1': b1,
      'bs1': bs1,
      'l1': l1,
      'ls1': ls1,
      'Srno': Srno,
      'gameType': gameType,
      'UpdateTime': UpdateTime,
      'gstatus': gstatus,
      'remark': remark,
      'lasttime': lasttime,
      'min': min,
      'max': max,
      'C1': C1,
      'C2': C2,
      'C3': C3,
    };
  }

  factory GameModel.fromMap(Map<String, dynamic> map) {
    return GameModel(
      marketId: map['marketId'],
      sectionId: map['sectionId'],
      nation: map['nation'],
      b1: map['b1'],
      bs1: map['bs1'],
      l1: map['l1'],
      ls1: map['ls1'],
      Srno: map['Srno'],
      gameType: map['gameType'],
      UpdateTime: map['UpdateTime'],
      gstatus: map['gstatus'],
      remark: map['remark'],
      lasttime: map['lasttime'],
      min: map['min'],
      max: map['max'],
      C1: map['C1'],
      C2: map['C2'],
      C3: map['C3'],
    );
  }

  String toJson() => json.encode(toMap());

  factory GameModel.fromJson(String source) =>
      GameModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GameModel(marketId: $marketId, sectionId: $sectionId, nation: $nation, b1: $b1, bs1: $bs1, l1: $l1, ls1: $ls1, Srno: $Srno, gameType: $gameType, UpdateTime: $UpdateTime, gstatus: $gstatus, remark: $remark, lasttime: $lasttime, min: $min, max: $max, C1: $C1, C2: $C2, C3: $C3)';
  }
}
