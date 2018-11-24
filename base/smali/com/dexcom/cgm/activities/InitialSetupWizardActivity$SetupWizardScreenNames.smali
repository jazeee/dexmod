.class final enum Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;
.super Ljava/lang/Enum;
.source "InitialSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum AGREEMENT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum ALERTS_INTRO:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum BLUETOOTH_ON:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum HIGH_ALERT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum INVALID_FRAGMENT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum LOW_ALERT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum PHOTO_OR_ENTER_SN:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum PHOTO_SN:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum SAFETY_ACETAMINOPHEN:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum SAFETY_MRI:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum SAFETY_NUMBER_AND_ARROW:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum SAFETY_SYMPTOMS_MATCH_READING:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum SENSOR_VIDEO:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum SOUND_SETTINGS:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum SOUND_SETTINGS_EXCEPTIONS:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum TRANSMITTER_BLUETOOTH:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum TRANSMITTER_INTRO:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum TREATMENT_DECISIONS_USE_METER_UNTIL:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum TREATMENT_DECISIONS_WITH_VIDEO_LINK:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

.field public static final enum WELCOME:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "WELCOME"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->WELCOME:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 58
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "AGREEMENT"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->AGREEMENT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 59
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "SAFETY_SYMPTOMS_MATCH_READING"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SAFETY_SYMPTOMS_MATCH_READING:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 60
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "SAFETY_NUMBER_AND_ARROW"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SAFETY_NUMBER_AND_ARROW:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 61
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "TREATMENT_DECISIONS_USE_METER_UNTIL"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->TREATMENT_DECISIONS_USE_METER_UNTIL:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 62
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "TREATMENT_DECISIONS_WITH_VIDEO_LINK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->TREATMENT_DECISIONS_WITH_VIDEO_LINK:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 63
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "SAFETY_ACETAMINOPHEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SAFETY_ACETAMINOPHEN:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 64
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "SAFETY_MRI"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SAFETY_MRI:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 65
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "ALERTS_INTRO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->ALERTS_INTRO:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 66
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "LOW_ALERT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->LOW_ALERT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 67
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "HIGH_ALERT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->HIGH_ALERT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 68
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "SOUND_SETTINGS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SOUND_SETTINGS:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 69
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "SOUND_SETTINGS_EXCEPTIONS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SOUND_SETTINGS_EXCEPTIONS:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 70
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "TRANSMITTER_INTRO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->TRANSMITTER_INTRO:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 71
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "TRANSMITTER_BLUETOOTH"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->TRANSMITTER_BLUETOOTH:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 72
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "BLUETOOTH_ON"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->BLUETOOTH_ON:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 73
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "PHOTO_OR_ENTER_SN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->PHOTO_OR_ENTER_SN:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 74
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "PHOTO_SN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->PHOTO_SN:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 75
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "SENSOR_VIDEO"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SENSOR_VIDEO:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 76
    new-instance v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    const-string v1, "INVALID_FRAGMENT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->INVALID_FRAGMENT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    .line 55
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    sget-object v1, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->WELCOME:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->AGREEMENT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SAFETY_SYMPTOMS_MATCH_READING:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SAFETY_NUMBER_AND_ARROW:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->TREATMENT_DECISIONS_USE_METER_UNTIL:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->TREATMENT_DECISIONS_WITH_VIDEO_LINK:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SAFETY_ACETAMINOPHEN:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SAFETY_MRI:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->ALERTS_INTRO:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->LOW_ALERT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->HIGH_ALERT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SOUND_SETTINGS:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SOUND_SETTINGS_EXCEPTIONS:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->TRANSMITTER_INTRO:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->TRANSMITTER_BLUETOOTH:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->BLUETOOTH_ON:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->PHOTO_OR_ENTER_SN:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->PHOTO_SN:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->SENSOR_VIDEO:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->INVALID_FRAGMENT:Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->$VALUES:[Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getNumberOfScreens()I
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->values()[Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->$VALUES:[Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    return-object v0
.end method


# virtual methods
.method public final getNext()Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 86
    invoke-static {}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->values()[Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 88
    invoke-static {}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->values()[Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 90
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->values()[Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final getPrevious()Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 96
    if-gez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;->values()[Lcom/dexcom/cgm/activities/InitialSetupWizardActivity$SetupWizardScreenNames;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method
