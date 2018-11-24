.class public final enum Lcom/dexcom/cgm/i/a/a/a;
.super Ljava/lang/Enum;
.source "DexAlertSound.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/i/a/a/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum BabyCry:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum Beep:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum BlamoDings:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum BuzzerAlarmClock:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum Dinging:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum Doorbell:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum FallRate:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum FiveOhSiren:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum High:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum HighAlert:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum Low:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum LowAlert:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum NerdAlert:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum None:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum RiseRate:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum ShortBeeps:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum SignalLossAlert:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum SonarHorn:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum Tacataca:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum TruckSiren:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum UhOh:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum UrgentLow:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum UrgentLowAlarm:Lcom/dexcom/cgm/i/a/a/a;

.field public static final enum VibrateOnly:Lcom/dexcom/cgm/i/a/a/a;


# instance fields
.field private m_alertSoundFileName:Ljava/lang/String;

.field private m_alertSoundServerString:Ljava/lang/String;

.field private m_durationInSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x5

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v5, 0x1

    const/4 v12, 0x2

    .line 14
    new-instance v0, Lcom/dexcom/cgm/i/a/a/a;

    const-string v1, "VibrateOnly"

    const/4 v2, 0x0

    const-string v3, "Vibrate Only"

    const-string v4, "vibrate_only"

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/a;->VibrateOnly:Lcom/dexcom/cgm/i/a/a/a;

    .line 15
    new-instance v3, Lcom/dexcom/cgm/i/a/a/a;

    const-string v4, "BabyCry"

    const-string v6, "Baby Cry"

    const-string v7, "baby_cry"

    const/16 v8, 0x13

    invoke-direct/range {v3 .. v8}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/dexcom/cgm/i/a/a/a;->BabyCry:Lcom/dexcom/cgm/i/a/a/a;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/i/a/a/a;

    const-string v1, "Beep"

    const-string v3, "Beep"

    const-string v4, "beep"

    move v2, v12

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/a;->Beep:Lcom/dexcom/cgm/i/a/a/a;

    .line 17
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "BlamoDings"

    const-string v9, "Blamo Dings"

    const-string v10, "blamo_dings"

    move v8, v13

    move v11, v13

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->BlamoDings:Lcom/dexcom/cgm/i/a/a/a;

    .line 18
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "BuzzerAlarmClock"

    const-string v9, "Buzzer Alarm Clock"

    const-string v10, "buzzer_alarm_clock_long"

    const/16 v11, 0x1d

    move v8, v14

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->BuzzerAlarmClock:Lcom/dexcom/cgm/i/a/a/a;

    .line 19
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "Dinging"

    const-string v9, "Dinging"

    const-string v10, "dinging"

    move v8, v15

    move v11, v13

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->Dinging:Lcom/dexcom/cgm/i/a/a/a;

    .line 20
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "Doorbell"

    const/4 v8, 0x6

    const-string v9, "Door Bell"

    const-string v10, "door_bell"

    move v11, v15

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->Doorbell:Lcom/dexcom/cgm/i/a/a/a;

    .line 21
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "FallRate"

    const/4 v8, 0x7

    const-string v9, "Fall Rate"

    const-string v10, "fall_rate"

    move v11, v12

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->FallRate:Lcom/dexcom/cgm/i/a/a/a;

    .line 22
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "FiveOhSiren"

    const/16 v8, 0x8

    const-string v9, "Siren"

    const-string v10, "five_oh_siren"

    const/16 v11, 0x1e

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->FiveOhSiren:Lcom/dexcom/cgm/i/a/a/a;

    .line 23
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "HighAlert"

    const/16 v8, 0x9

    const-string v9, "High Alert"

    const-string v10, "high_alert"

    move v11, v12

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->HighAlert:Lcom/dexcom/cgm/i/a/a/a;

    .line 24
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "High"

    const/16 v8, 0xa

    const-string v9, "High"

    const-string v10, "high"

    move v11, v13

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->High:Lcom/dexcom/cgm/i/a/a/a;

    .line 25
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "LowAlert"

    const/16 v8, 0xb

    const-string v9, "Low Alert"

    const-string v10, "low_alert"

    move v11, v12

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->LowAlert:Lcom/dexcom/cgm/i/a/a/a;

    .line 26
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "Low"

    const/16 v8, 0xc

    const-string v9, "Low"

    const-string v10, "low"

    move v11, v12

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->Low:Lcom/dexcom/cgm/i/a/a/a;

    .line 27
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "NerdAlert"

    const/16 v8, 0xd

    const-string v9, "Nerd Alert"

    const-string v10, "nerd_alert"

    move v11, v14

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->NerdAlert:Lcom/dexcom/cgm/i/a/a/a;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/i/a/a/a;

    const-string v1, "RiseRate"

    const/16 v2, 0xe

    const-string v3, "Rise Rate"

    const-string v4, "rise_rate"

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/a;->RiseRate:Lcom/dexcom/cgm/i/a/a/a;

    .line 29
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "ShortBeeps"

    const/16 v8, 0xf

    const-string v9, "Short Beeps"

    const-string v10, "short_beeps"

    move v11, v13

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->ShortBeeps:Lcom/dexcom/cgm/i/a/a/a;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/i/a/a/a;

    const-string v1, "SignalLossAlert"

    const/16 v2, 0x10

    const-string v3, "Signal Loss Alert"

    const-string v4, "signal_loss_alert"

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/a;->SignalLossAlert:Lcom/dexcom/cgm/i/a/a/a;

    .line 31
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "SonarHorn"

    const/16 v8, 0x11

    const-string v9, "Sonar Horn"

    const-string v10, "sonar_hort_horn"

    const/16 v11, 0x8

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->SonarHorn:Lcom/dexcom/cgm/i/a/a/a;

    .line 32
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "Tacataca"

    const/16 v8, 0x12

    const-string v9, "Tacataca"

    const-string v10, "tacataca"

    move v11, v15

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->Tacataca:Lcom/dexcom/cgm/i/a/a/a;

    .line 33
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "TruckSiren"

    const/16 v8, 0x13

    const-string v9, "Truck Siren"

    const-string v10, "truck_siren"

    const/16 v11, 0x1c

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->TruckSiren:Lcom/dexcom/cgm/i/a/a/a;

    .line 34
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "UhOh"

    const/16 v8, 0x14

    const-string v9, "Uh-oh"

    const-string v10, "uh_oh"

    move v11, v14

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->UhOh:Lcom/dexcom/cgm/i/a/a/a;

    .line 35
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "UrgentLowAlarm"

    const/16 v8, 0x15

    const-string v9, "Urgent Low Alarm"

    const-string v10, "urgent_low_alarm"

    move v11, v12

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->UrgentLowAlarm:Lcom/dexcom/cgm/i/a/a/a;

    .line 36
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "UrgentLow"

    const/16 v8, 0x16

    const-string v9, "Urgent Low"

    const-string v10, "urgent_low"

    move v11, v12

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->UrgentLow:Lcom/dexcom/cgm/i/a/a/a;

    .line 37
    new-instance v6, Lcom/dexcom/cgm/i/a/a/a;

    const-string v7, "None"

    const/16 v8, 0x17

    const-string v9, "None"

    const-string v10, "none"

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/dexcom/cgm/i/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/dexcom/cgm/i/a/a/a;->None:Lcom/dexcom/cgm/i/a/a/a;

    .line 12
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/dexcom/cgm/i/a/a/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->VibrateOnly:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/dexcom/cgm/i/a/a/a;->BabyCry:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/i/a/a/a;->Beep:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v1, v0, v12

    sget-object v1, Lcom/dexcom/cgm/i/a/a/a;->BlamoDings:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v1, v0, v13

    sget-object v1, Lcom/dexcom/cgm/i/a/a/a;->BuzzerAlarmClock:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v1, v0, v14

    sget-object v1, Lcom/dexcom/cgm/i/a/a/a;->Dinging:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v1, v0, v15

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->Doorbell:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->FallRate:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->FiveOhSiren:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->HighAlert:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->High:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->LowAlert:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->Low:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->NerdAlert:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->RiseRate:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->ShortBeeps:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->SignalLossAlert:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->SonarHorn:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->Tacataca:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->TruckSiren:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->UhOh:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->UrgentLowAlarm:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->UrgentLow:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/i/a/a/a;->None:Lcom/dexcom/cgm/i/a/a/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/i/a/a/a;->$VALUES:[Lcom/dexcom/cgm/i/a/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/dexcom/cgm/i/a/a/a;->m_alertSoundServerString:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/dexcom/cgm/i/a/a/a;->m_alertSoundFileName:Ljava/lang/String;

    .line 47
    iput p5, p0, Lcom/dexcom/cgm/i/a/a/a;->m_durationInSeconds:I

    .line 48
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/dexcom/cgm/i/a/a/a;
    .locals 5

    .prologue
    .line 76
    invoke-static {}, Lcom/dexcom/cgm/i/a/a/a;->values()[Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 78
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    :goto_1
    return-object v0

    .line 76
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/i/a/a/a;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/dexcom/cgm/i/a/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/i/a/a/a;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/i/a/a/a;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dexcom/cgm/i/a/a/a;->$VALUES:[Lcom/dexcom/cgm/i/a/a/a;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/i/a/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/i/a/a/a;

    return-object v0
.end method


# virtual methods
.method public final getAlertSoundFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/a/a;->m_alertSoundFileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlertSoundString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/a/a;->m_alertSoundServerString:Ljava/lang/String;

    return-object v0
.end method

.method public final getDurationInSeconds()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/dexcom/cgm/i/a/a/a;->m_durationInSeconds:I

    return v0
.end method

.method public final toInternal()Lcom/dexcom/cgm/model/enums/AlertSound;
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/dexcom/cgm/model/enums/AlertSound;->values()[Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/i/a/a/a;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
