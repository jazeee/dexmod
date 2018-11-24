.class final enum Lcom/dexcom/cgm/d/f;
.super Ljava/lang/Enum;
.source "KeyValueAccessorComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/d/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/d/f;

.field public static final enum AppCompatAppUpgradeURL:Lcom/dexcom/cgm/d/f;

.field public static final enum AppCompatMessage:Lcom/dexcom/cgm/d/f;

.field public static final enum AppCompatMoreInfoURL:Lcom/dexcom/cgm/d/f;

.field public static final enum AppCompatUrl:Lcom/dexcom/cgm/d/f;

.field public static final enum AppCompatValidity:Lcom/dexcom/cgm/d/f;

.field public static final enum AppCompatabilityCount:Lcom/dexcom/cgm/d/f;

.field public static final enum AppCompatabilityFrequency:Lcom/dexcom/cgm/d/f;

.field public static final enum BulkDataApplicationID:Lcom/dexcom/cgm/d/f;

.field public static final enum BulkDataUploadUrl:Lcom/dexcom/cgm/d/f;

.field public static final enum DeviceShuttingDown:Lcom/dexcom/cgm/d/f;

.field public static final enum GraphHeight:Lcom/dexcom/cgm/d/f;

.field public static final enum HasCompletedInitialSetupWizard:Lcom/dexcom/cgm/d/f;

.field public static final enum HasCompletedShareTutorial:Lcom/dexcom/cgm/d/f;

.field public static final enum HasSelectedNeverAskAgainLocation:Lcom/dexcom/cgm/d/f;

.field public static final enum HasUsersPasswordChanged:Lcom/dexcom/cgm/d/f;

.field public static final enum InstallationID:Lcom/dexcom/cgm/d/f;

.field public static final enum IsClinicalTrialMode:Lcom/dexcom/cgm/d/f;

.field public static final enum LastAlertSettingsUploadTime:Lcom/dexcom/cgm/d/f;

.field public static final enum LastDeviceSettingsUploadTime:Lcom/dexcom/cgm/d/f;

.field public static final enum LastEgvReceivedTimeStamp:Lcom/dexcom/cgm/d/f;

.field public static final enum LastRegisteredTransmitterId:Lcom/dexcom/cgm/d/f;

.field public static final enum LastReportedRemainingTimeForTransmitter:Lcom/dexcom/cgm/d/f;

.field public static final enum LastSHealthEGVTimeStamp:Lcom/dexcom/cgm/d/f;

.field public static final enum LastShareEGVTimeStamp:Lcom/dexcom/cgm/d/f;

.field public static final enum NamedValueNeedsUpload:Lcom/dexcom/cgm/d/f;

.field public static final enum NextAppCompatabilityCheck:Lcom/dexcom/cgm/d/f;

.field public static final enum NextAppCompatabilityFrequency:Lcom/dexcom/cgm/d/f;

.field public static final enum Password:Lcom/dexcom/cgm/d/f;

.field public static final enum PublisherID:Lcom/dexcom/cgm/d/f;

.field public static final enum ShareApplicationID:Lcom/dexcom/cgm/d/f;

.field public static final enum ShareEnabled:Lcom/dexcom/cgm/d/f;

.field public static final enum ShareRealtimeUrl:Lcom/dexcom/cgm/d/f;

.field public static final enum ShowPersistentNotifications:Lcom/dexcom/cgm/d/f;

.field public static final enum StartSensorWarmupDialogEnabled:Lcom/dexcom/cgm/d/f;

.field public static final enum TransmitterID:Lcom/dexcom/cgm/d/f;

.field public static final enum UserAvatar:Lcom/dexcom/cgm/d/f;

.field public static final enum UserDisplayName:Lcom/dexcom/cgm/d/f;

.field public static final enum UserEmail:Lcom/dexcom/cgm/d/f;

.field public static final enum Username:Lcom/dexcom/cgm/d/f;

.field public static final enum WhatsNewTimeSpent:Lcom/dexcom/cgm/d/f;

.field public static final enum WhatsNewVersionCompleted:Lcom/dexcom/cgm/d/f;

.field public static final enum flurryAlertEGV:Lcom/dexcom/cgm/d/f;

.field public static final enum flurryAlertStartTime:Lcom/dexcom/cgm/d/f;

.field public static final enum flurryAlertType:Lcom/dexcom/cgm/d/f;

.field public static final enum flurryShareBackfill:Lcom/dexcom/cgm/d/f;

.field public static final enum flurryTime_OOR:Lcom/dexcom/cgm/d/f;

.field public static final enum isNewUser:Lcom/dexcom/cgm/d/f;

.field public static final enum manualSNTimeSpent:Lcom/dexcom/cgm/d/f;

.field public static final enum numberOfFollowers:Lcom/dexcom/cgm/d/f;

.field public static final enum previousCompatValues:Lcom/dexcom/cgm/d/f;

.field public static final enum scheduleSetupWizardTimeSpent:Lcom/dexcom/cgm/d/f;

.field public static final enum setupWizardTimeSpent:Lcom/dexcom/cgm/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "Username"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->Username:Lcom/dexcom/cgm/d/f;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "Password"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->Password:Lcom/dexcom/cgm/d/f;

    .line 43
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "PublisherID"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->PublisherID:Lcom/dexcom/cgm/d/f;

    .line 47
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "ShareEnabled"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->ShareEnabled:Lcom/dexcom/cgm/d/f;

    .line 51
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "UserDisplayName"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->UserDisplayName:Lcom/dexcom/cgm/d/f;

    .line 55
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "UserEmail"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->UserEmail:Lcom/dexcom/cgm/d/f;

    .line 60
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "NamedValueNeedsUpload"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->NamedValueNeedsUpload:Lcom/dexcom/cgm/d/f;

    .line 64
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "GraphHeight"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->GraphHeight:Lcom/dexcom/cgm/d/f;

    .line 68
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "TransmitterID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->TransmitterID:Lcom/dexcom/cgm/d/f;

    .line 72
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "UserAvatar"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->UserAvatar:Lcom/dexcom/cgm/d/f;

    .line 76
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "HasCompletedInitialSetupWizard"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->HasCompletedInitialSetupWizard:Lcom/dexcom/cgm/d/f;

    .line 80
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "HasSelectedNeverAskAgainLocation"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->HasSelectedNeverAskAgainLocation:Lcom/dexcom/cgm/d/f;

    .line 84
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "NextAppCompatabilityCheck"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->NextAppCompatabilityCheck:Lcom/dexcom/cgm/d/f;

    .line 88
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "AppCompatabilityCount"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->AppCompatabilityCount:Lcom/dexcom/cgm/d/f;

    .line 93
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "AppCompatabilityFrequency"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->AppCompatabilityFrequency:Lcom/dexcom/cgm/d/f;

    .line 97
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "NextAppCompatabilityFrequency"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->NextAppCompatabilityFrequency:Lcom/dexcom/cgm/d/f;

    .line 101
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "AppCompatValidity"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->AppCompatValidity:Lcom/dexcom/cgm/d/f;

    .line 105
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "AppCompatMessage"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->AppCompatMessage:Lcom/dexcom/cgm/d/f;

    .line 109
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "AppCompatMoreInfoURL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->AppCompatMoreInfoURL:Lcom/dexcom/cgm/d/f;

    .line 113
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "AppCompatAppUpgradeURL"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->AppCompatAppUpgradeURL:Lcom/dexcom/cgm/d/f;

    .line 117
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "HasCompletedShareTutorial"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->HasCompletedShareTutorial:Lcom/dexcom/cgm/d/f;

    .line 123
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "LastReportedRemainingTimeForTransmitter"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->LastReportedRemainingTimeForTransmitter:Lcom/dexcom/cgm/d/f;

    .line 127
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "scheduleSetupWizardTimeSpent"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->scheduleSetupWizardTimeSpent:Lcom/dexcom/cgm/d/f;

    .line 132
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "setupWizardTimeSpent"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->setupWizardTimeSpent:Lcom/dexcom/cgm/d/f;

    .line 136
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "manualSNTimeSpent"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->manualSNTimeSpent:Lcom/dexcom/cgm/d/f;

    .line 140
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "flurryAlertStartTime"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->flurryAlertStartTime:Lcom/dexcom/cgm/d/f;

    .line 144
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "flurryAlertType"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->flurryAlertType:Lcom/dexcom/cgm/d/f;

    .line 148
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "flurryAlertEGV"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->flurryAlertEGV:Lcom/dexcom/cgm/d/f;

    .line 152
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "flurryShareBackfill"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->flurryShareBackfill:Lcom/dexcom/cgm/d/f;

    .line 156
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "flurryTime_OOR"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->flurryTime_OOR:Lcom/dexcom/cgm/d/f;

    .line 160
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "numberOfFollowers"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->numberOfFollowers:Lcom/dexcom/cgm/d/f;

    .line 161
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "LastDeviceSettingsUploadTime"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->LastDeviceSettingsUploadTime:Lcom/dexcom/cgm/d/f;

    .line 162
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "LastAlertSettingsUploadTime"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->LastAlertSettingsUploadTime:Lcom/dexcom/cgm/d/f;

    .line 163
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "StartSensorWarmupDialogEnabled"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->StartSensorWarmupDialogEnabled:Lcom/dexcom/cgm/d/f;

    .line 164
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "LastSHealthEGVTimeStamp"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->LastSHealthEGVTimeStamp:Lcom/dexcom/cgm/d/f;

    .line 165
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "LastShareEGVTimeStamp"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->LastShareEGVTimeStamp:Lcom/dexcom/cgm/d/f;

    .line 166
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "ShowPersistentNotifications"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->ShowPersistentNotifications:Lcom/dexcom/cgm/d/f;

    .line 167
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "previousCompatValues"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->previousCompatValues:Lcom/dexcom/cgm/d/f;

    .line 168
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "DeviceShuttingDown"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->DeviceShuttingDown:Lcom/dexcom/cgm/d/f;

    .line 169
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "LastEgvReceivedTimeStamp"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->LastEgvReceivedTimeStamp:Lcom/dexcom/cgm/d/f;

    .line 170
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "IsClinicalTrialMode"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->IsClinicalTrialMode:Lcom/dexcom/cgm/d/f;

    .line 171
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "HasUsersPasswordChanged"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->HasUsersPasswordChanged:Lcom/dexcom/cgm/d/f;

    .line 172
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "AppCompatUrl"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->AppCompatUrl:Lcom/dexcom/cgm/d/f;

    .line 173
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "ShareRealtimeUrl"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->ShareRealtimeUrl:Lcom/dexcom/cgm/d/f;

    .line 174
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "BulkDataUploadUrl"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->BulkDataUploadUrl:Lcom/dexcom/cgm/d/f;

    .line 175
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "ShareApplicationID"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->ShareApplicationID:Lcom/dexcom/cgm/d/f;

    .line 176
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "BulkDataApplicationID"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->BulkDataApplicationID:Lcom/dexcom/cgm/d/f;

    .line 177
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "InstallationID"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->InstallationID:Lcom/dexcom/cgm/d/f;

    .line 178
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "LastRegisteredTransmitterId"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->LastRegisteredTransmitterId:Lcom/dexcom/cgm/d/f;

    .line 179
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "isNewUser"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->isNewUser:Lcom/dexcom/cgm/d/f;

    .line 180
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "WhatsNewTimeSpent"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->WhatsNewTimeSpent:Lcom/dexcom/cgm/d/f;

    .line 181
    new-instance v0, Lcom/dexcom/cgm/d/f;

    const-string v1, "WhatsNewVersionCompleted"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/d/f;->WhatsNewVersionCompleted:Lcom/dexcom/cgm/d/f;

    .line 30
    const/16 v0, 0x34

    new-array v0, v0, [Lcom/dexcom/cgm/d/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->Username:Lcom/dexcom/cgm/d/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/d/f;->Password:Lcom/dexcom/cgm/d/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/d/f;->PublisherID:Lcom/dexcom/cgm/d/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/d/f;->ShareEnabled:Lcom/dexcom/cgm/d/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/d/f;->UserDisplayName:Lcom/dexcom/cgm/d/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/d/f;->UserEmail:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/d/f;->NamedValueNeedsUpload:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/d/f;->GraphHeight:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/d/f;->TransmitterID:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/d/f;->UserAvatar:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/d/f;->HasCompletedInitialSetupWizard:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/d/f;->HasSelectedNeverAskAgainLocation:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/d/f;->NextAppCompatabilityCheck:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/d/f;->AppCompatabilityCount:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/d/f;->AppCompatabilityFrequency:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/d/f;->NextAppCompatabilityFrequency:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/d/f;->AppCompatValidity:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/d/f;->AppCompatMessage:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/d/f;->AppCompatMoreInfoURL:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/d/f;->AppCompatAppUpgradeURL:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/d/f;->HasCompletedShareTutorial:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/d/f;->LastReportedRemainingTimeForTransmitter:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/d/f;->scheduleSetupWizardTimeSpent:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/d/f;->setupWizardTimeSpent:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dexcom/cgm/d/f;->manualSNTimeSpent:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dexcom/cgm/d/f;->flurryAlertStartTime:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/dexcom/cgm/d/f;->flurryAlertType:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/dexcom/cgm/d/f;->flurryAlertEGV:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/dexcom/cgm/d/f;->flurryShareBackfill:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/dexcom/cgm/d/f;->flurryTime_OOR:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/dexcom/cgm/d/f;->numberOfFollowers:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/dexcom/cgm/d/f;->LastDeviceSettingsUploadTime:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/dexcom/cgm/d/f;->LastAlertSettingsUploadTime:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/dexcom/cgm/d/f;->StartSensorWarmupDialogEnabled:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/dexcom/cgm/d/f;->LastSHealthEGVTimeStamp:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/dexcom/cgm/d/f;->LastShareEGVTimeStamp:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/dexcom/cgm/d/f;->ShowPersistentNotifications:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/dexcom/cgm/d/f;->previousCompatValues:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/dexcom/cgm/d/f;->DeviceShuttingDown:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/dexcom/cgm/d/f;->LastEgvReceivedTimeStamp:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/dexcom/cgm/d/f;->IsClinicalTrialMode:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/dexcom/cgm/d/f;->HasUsersPasswordChanged:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/dexcom/cgm/d/f;->AppCompatUrl:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/dexcom/cgm/d/f;->ShareRealtimeUrl:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/dexcom/cgm/d/f;->BulkDataUploadUrl:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/dexcom/cgm/d/f;->ShareApplicationID:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/dexcom/cgm/d/f;->BulkDataApplicationID:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/dexcom/cgm/d/f;->InstallationID:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/dexcom/cgm/d/f;->LastRegisteredTransmitterId:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/dexcom/cgm/d/f;->isNewUser:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/dexcom/cgm/d/f;->WhatsNewTimeSpent:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/dexcom/cgm/d/f;->WhatsNewVersionCompleted:Lcom/dexcom/cgm/d/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/d/f;->$VALUES:[Lcom/dexcom/cgm/d/f;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/d/f;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/dexcom/cgm/d/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/d/f;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/d/f;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dexcom/cgm/d/f;->$VALUES:[Lcom/dexcom/cgm/d/f;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/d/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/d/f;

    return-object v0
.end method
