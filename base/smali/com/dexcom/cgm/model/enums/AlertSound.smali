.class public final enum Lcom/dexcom/cgm/model/enums/AlertSound;
.super Ljava/lang/Enum;
.source "AlertSound.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/AlertSound;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum BabyCry:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum Beep:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum BlamoDings:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum BuzzerAlarmClock:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum Dinging:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum Doorbell:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum FallRate:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum FiveOhSiren:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum High:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum HighAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum Low:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum LowAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum NerdAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum None:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum RiseRate:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum ShortBeeps:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum SignalLossAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum SonarHorn:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum Tacataca:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum TruckSiren:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum UhOh:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum UrgentLow:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum UrgentLowAlarm:Lcom/dexcom/cgm/model/enums/AlertSound;

.field public static final enum VibrateOnly:Lcom/dexcom/cgm/model/enums/AlertSound;


# instance fields
.field private m_alertSoundFileName:Ljava/lang/String;

.field private m_alertSoundServerString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "VibrateOnly"

    const-string v2, "Vibrate Only"

    const-string v3, "vibrate_only"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->VibrateOnly:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "BabyCry"

    const-string v2, "Baby Cry"

    const-string v3, "baby_cry"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->BabyCry:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "Beep"

    const-string v2, "Beep"

    const-string v3, "beep"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->Beep:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "BlamoDings"

    const-string v2, "Blamo Dings"

    const-string v3, "blamo_dings"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->BlamoDings:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "BuzzerAlarmClock"

    const-string v2, "Buzzer Alarm Clock"

    const-string v3, "buzzer_alarm_clock_long"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->BuzzerAlarmClock:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "Dinging"

    const/4 v2, 0x5

    const-string v3, "Dinging"

    const-string v4, "dinging"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->Dinging:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "Doorbell"

    const/4 v2, 0x6

    const-string v3, "Door Bell"

    const-string v4, "door_bell"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->Doorbell:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "FallRate"

    const/4 v2, 0x7

    const-string v3, "Fall Rate"

    const-string v4, "fall_rate"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->FallRate:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "FiveOhSiren"

    const/16 v2, 0x8

    const-string v3, "Siren"

    const-string v4, "five_oh_siren"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->FiveOhSiren:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "HighAlert"

    const/16 v2, 0x9

    const-string v3, "High Alert"

    const-string v4, "high_alert"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->HighAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "High"

    const/16 v2, 0xa

    const-string v3, "High"

    const-string v4, "high"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->High:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "LowAlert"

    const/16 v2, 0xb

    const-string v3, "Low Alert"

    const-string v4, "low_alert"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->LowAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "Low"

    const/16 v2, 0xc

    const-string v3, "Low"

    const-string v4, "low"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->Low:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "NerdAlert"

    const/16 v2, 0xd

    const-string v3, "Nerd Alert"

    const-string v4, "nerd_alert"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->NerdAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "RiseRate"

    const/16 v2, 0xe

    const-string v3, "Rise Rate"

    const-string v4, "rise_rate"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->RiseRate:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "ShortBeeps"

    const/16 v2, 0xf

    const-string v3, "Short Beeps"

    const-string v4, "short_beeps"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->ShortBeeps:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "SignalLossAlert"

    const/16 v2, 0x10

    const-string v3, "Signal Loss Alert"

    const-string v4, "signal_loss_alert"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->SignalLossAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "SonarHorn"

    const/16 v2, 0x11

    const-string v3, "Sonar Horn"

    const-string v4, "sonar_hort_horn"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->SonarHorn:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "Tacataca"

    const/16 v2, 0x12

    const-string v3, "Tacataca"

    const-string v4, "tacataca"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->Tacataca:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "TruckSiren"

    const/16 v2, 0x13

    const-string v3, "Truck Siren"

    const-string v4, "truck_siren"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->TruckSiren:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 35
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "UhOh"

    const/16 v2, 0x14

    const-string v3, "Uh-oh"

    const-string v4, "uh_oh"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->UhOh:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "UrgentLowAlarm"

    const/16 v2, 0x15

    const-string v3, "Urgent Low Alarm"

    const-string v4, "urgent_low_alarm"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->UrgentLowAlarm:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 37
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "UrgentLow"

    const/16 v2, 0x16

    const-string v3, "Urgent Low"

    const-string v4, "urgent_low"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->UrgentLow:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 38
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    const-string v1, "None"

    const/16 v2, 0x17

    const-string v3, "None"

    const-string v4, "none"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlertSound;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 13
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/AlertSound;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSound;->VibrateOnly:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSound;->BabyCry:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSound;->Beep:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSound;->BlamoDings:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSound;->BuzzerAlarmClock:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->Dinging:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->Doorbell:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->FallRate:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->FiveOhSiren:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->HighAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->High:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->LowAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->Low:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->NerdAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->RiseRate:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->ShortBeeps:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->SignalLossAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->SonarHorn:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->Tacataca:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->TruckSiren:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->UhOh:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->UrgentLowAlarm:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->UrgentLow:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->$VALUES:[Lcom/dexcom/cgm/model/enums/AlertSound;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/dexcom/cgm/model/enums/AlertSound;->m_alertSoundServerString:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/dexcom/cgm/model/enums/AlertSound;->m_alertSoundFileName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlertSound;
    .locals 5

    .prologue
    .line 67
    invoke-static {}, Lcom/dexcom/cgm/model/enums/AlertSound;->values()[Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 69
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertSound;->getAlertSoundString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    :goto_1
    return-object v0

    .line 67
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlertSound;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/AlertSound;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->$VALUES:[Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/AlertSound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/AlertSound;

    return-object v0
.end method


# virtual methods
.method public final getAlertSoundFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dexcom/cgm/model/enums/AlertSound;->m_alertSoundFileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlertSoundString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/model/enums/AlertSound;->m_alertSoundServerString:Ljava/lang/String;

    return-object v0
.end method
