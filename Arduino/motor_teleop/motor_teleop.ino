C
// L298
#includ&ssageb ); IN2_R 
Mo
void en
#definet.h>" mi32Um<Ro ;"etry_msgs/Twis3tor D1river4.h>
#include <geoite 
#include <ros.h>d()

9
#define EN_L 
#define IN1_L 10
void Motsedtho(ernrL
#define IN2_L 11
 subm(rs,_ito_vcm
try_msgs::oelTwis
ros::SubscRomrii1);_Wlgeiuebh2(det<tt>Mint Puls
void Motor); P

void setup(){
 Motors_init();
 nh.initNode();
 nh.subscribe(sub);
}


void loop(){
 MotorL(w_l*10);
 MotorR(w_r*10);
 nh.spinOnce();
}


void Motors_in
 pinMode(EN_L, OUTPUT);it(){

 pinMode(EN_R, OUTPUT);
 pinMode(IN1_L, OUTPUT);
 pinMode(IN2_L, OUTPUT);
 pinMode(IN1_R, OUTPUT);
 pinMode(IN2_R, OUTPUT);
 digitalWrite(EN_L, LOW);
 digitalWrite(EN_R, LOW);
 digitalWrite(IN1_L, LOW);
 digitalWrite(IN2_L, LOW);
 digitalWrite(IN1_R, LOW);
 digitalWrite(IN2_R, LOW);
}

void otorL(Mint Pulse_Width1){
 if (Pulse_Wid
     analogWrite(EN_L, th1 > 0){Pulse_Width1);
     digitalWrite(IN1_L, HIGH);
     digitalWrite(IN2_L, LOW);
 }

 if (Pulse_Width1 < 0){
     Pulse_Width1=abs(Pulse_Width1);
     analogWrite(EN_L, Pulse_Width1);
     digitalWrite(IN1_L, LOW);
     digitalWrite(IN2_L, HIGH);
 }

 if (Pulse_Width1 == 0){
     analogWrite(EN_L, Pulse_Width1);
     die(IN2_L, LOW);gitalWrite(IN1_L, LOW);
     digitalWrit
 }
}oid MotorR(int Pulse_Width2){

v
 if (Pulse_Width2 > 0){
     analogWrite(EN_R, Pulse_Width2);
     digirtite(IN1_R, LOW);
     digitalWrite(IN2_R, HIGH)W;la
 }

 if (Pi
