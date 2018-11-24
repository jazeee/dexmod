.class public final enum Lcom/dexcom/cgm/test/api/TestRequestType;
.super Ljava/lang/Enum;
.source "TestRequestType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/TestRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum AccelerateTime:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum CrashTheApp:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum DeleteAuthenticationKey:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum DeleteGlucoseFromSHealth:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum DisableTransmitterService:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum EnableTransmitterService:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum FreezeTime:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum GetAuthenticationKey:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum GetCurrentConnectionState:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum GetTestApiVersion:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum GetTime:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum MockLoginLockout:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum ModifyAlertSetting:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum ReadAlertSetting:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum ReadAllRecords:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum ReadLatestRecord:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum ReadRecordIndexRange:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum ReadRecords:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum RealDatabaseCorruption:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SendCalibration:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SendNotification:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SetAlert:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SetBluetooth:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SetDiskSpace:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SetInternet:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SetMockOrientation:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SetServerAvailable:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SetTime:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SetTransmitterID:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SimulateConnectionCreated:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SimulateConnectionErrorEvent:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SimulateConnectionSuccessEvent:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SimulateConnectionSuccessEvents:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SimulateIncompatibleTransmitter:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SimulateIntervalEvent:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SkipSetupWizard:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum SkipShareTutorial:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum StartSession:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public static final enum StopSession:Lcom/dexcom/cgm/test/api/TestRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "GetTestApiVersion"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->GetTestApiVersion:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SkipSetupWizard"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SkipSetupWizard:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SkipShareTutorial"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SkipShareTutorial:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "GetTime"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->GetTime:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SetTime"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SetTime:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "AccelerateTime"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->AccelerateTime:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "EnableTransmitterService"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->EnableTransmitterService:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "DisableTransmitterService"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->DisableTransmitterService:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SimulateConnectionCreated"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SimulateConnectionCreated:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SimulateConnectionSuccessEvent"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SimulateConnectionSuccessEvent:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SimulateConnectionSuccessEvents"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SimulateConnectionSuccessEvents:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SimulateConnectionErrorEvent"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SimulateConnectionErrorEvent:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SimulateIntervalEvent"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SimulateIntervalEvent:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SimulateIncompatibleTransmitter"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SimulateIncompatibleTransmitter:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SendNotification"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SendNotification:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "FreezeTime"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->FreezeTime:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SetAlert"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SetAlert:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "ReadAlertSetting"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->ReadAlertSetting:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "ModifyAlertSetting"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->ModifyAlertSetting:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SetInternet"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SetInternet:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SetServerAvailable"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SetServerAvailable:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "MockLoginLockout"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->MockLoginLockout:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SetBluetooth"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SetBluetooth:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SetTransmitterID"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SetTransmitterID:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 35
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SetMockOrientation"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SetMockOrientation:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "RealDatabaseCorruption"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->RealDatabaseCorruption:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 37
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "ReadRecords"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->ReadRecords:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 38
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "ReadRecordIndexRange"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->ReadRecordIndexRange:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "ReadAllRecords"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->ReadAllRecords:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 40
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "ReadLatestRecord"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->ReadLatestRecord:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 41
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SetDiskSpace"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SetDiskSpace:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 42
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "SendCalibration"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->SendCalibration:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 43
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "StartSession"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->StartSession:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 44
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "StopSession"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->StopSession:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 45
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "GetAuthenticationKey"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->GetAuthenticationKey:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 46
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "DeleteAuthenticationKey"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->DeleteAuthenticationKey:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 47
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "GetCurrentConnectionState"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->GetCurrentConnectionState:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 48
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "CrashTheApp"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->CrashTheApp:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 49
    new-instance v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    const-string v1, "DeleteGlucoseFromSHealth"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->DeleteGlucoseFromSHealth:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 9
    const/16 v0, 0x27

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/TestRequestType;

    sget-object v1, Lcom/dexcom/cgm/test/api/TestRequestType;->GetTestApiVersion:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/TestRequestType;->SkipSetupWizard:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/test/api/TestRequestType;->SkipShareTutorial:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/test/api/TestRequestType;->GetTime:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/test/api/TestRequestType;->SetTime:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->AccelerateTime:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->EnableTransmitterService:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->DisableTransmitterService:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SimulateConnectionCreated:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SimulateConnectionSuccessEvent:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SimulateConnectionSuccessEvents:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SimulateConnectionErrorEvent:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SimulateIntervalEvent:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SimulateIncompatibleTransmitter:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SendNotification:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->FreezeTime:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SetAlert:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->ReadAlertSetting:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->ModifyAlertSetting:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SetInternet:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SetServerAvailable:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->MockLoginLockout:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SetBluetooth:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SetTransmitterID:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SetMockOrientation:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->RealDatabaseCorruption:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->ReadRecords:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->ReadRecordIndexRange:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->ReadAllRecords:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->ReadLatestRecord:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SetDiskSpace:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->SendCalibration:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->StartSession:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->StopSession:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->GetAuthenticationKey:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->DeleteAuthenticationKey:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->GetCurrentConnectionState:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->CrashTheApp:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/dexcom/cgm/test/api/TestRequestType;->DeleteGlucoseFromSHealth:Lcom/dexcom/cgm/test/api/TestRequestType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->$VALUES:[Lcom/dexcom/cgm/test/api/TestRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/TestRequestType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/TestRequestType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/TestRequestType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/test/api/TestRequestType;->$VALUES:[Lcom/dexcom/cgm/test/api/TestRequestType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/TestRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/TestRequestType;

    return-object v0
.end method
