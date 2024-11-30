import Debug "mo:base/Debug";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Time "mo:base/Time";
import Float "mo:base/Float";
import Int64 "mo:base/Int64";
import Text "mo:base/Text";
import Array "mo:base/Array";

actor Test{
  var a = 100;
  a := 150;
  stable var b = 250;
  // Debug.print("this is a test");
  public func Mult(){
    var b = a * 2;
    b += 50;
    Debug.print(debug_show(b));
  };

  public func Add(firstNum:Int,secNum:Int): async Int{
    var total:Int = firstNum + secNum;
    return total;
  };

  public func WithDraw(withDrawVal:Nat){
    var curFinal:Int = 150 - 10;
    var total:Int  = curFinal - withDrawVal;
    if(total <= 0){
        Debug.print("you cannot withdraw the money");
    }else{
      var message = "you can withdraw" # " $ " #Int.toText(total);
      Debug.print(message)
    }
  };

  public query func showFinalData():async Int{
    return a;
  };

  public func addTob(){
    b += 300;
  };

  public query func callb(): async Int{
    return b;
  };
  
  public func nullifier(varible:Int): async Int{
    var updated = varible;
    updated := 0;
    return updated;
  };

  public func startTime(){
    var currentTime = Time.now();
    var timeInSec = currentTime / 1000000000;
    var localTimeZone:Float = 3.5 * 3600;

    var message = "the current time is"#" "#Int.toText(currentTime);
    Debug.print(message);
  };

  public func register(){

  };

  public query func selector(): async Text{
    return "mainStorage";
  };
}