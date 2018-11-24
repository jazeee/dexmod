.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertFailedJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "AlertFailedJSON.java"


# instance fields
.field private AlertCount:I

.field private FailureType:Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

.field private MaxVolume:I

.field private Name:Ljava/lang/String;

.field private Port:Lcom/dexcom/cgm/model/enums/SpeakerType;

.field private Sound:Ljava/lang/String;

.field private Volume:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/h/a/a/a;Lcom/dexcom/cgm/model/enums/AlertSound;IIILcom/dexcom/cgm/model/enums/SpeakerType;Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertFailedJSON;->Name:Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/enums/AlertSound;->getAlertSoundString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertFailedJSON;->Sound:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertFailedJSON;->Volume:I

    .line 42
    iput p4, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertFailedJSON;->MaxVolume:I

    .line 43
    iput p5, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertFailedJSON;->AlertCount:I

    .line 44
    iput-object p6, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertFailedJSON;->Port:Lcom/dexcom/cgm/model/enums/SpeakerType;

    .line 45
    iput-object p7, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertFailedJSON;->FailureType:Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    .line 46
    return-void
.end method
