.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertReceivedJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "AlertReceivedJSON.java"


# instance fields
.field private AlertCount:I

.field private MaxVolume:I

.field private Name:Ljava/lang/String;

.field private Port:Lcom/dexcom/cgm/model/enums/SpeakerType;

.field private Sound:Ljava/lang/String;

.field private TotalSilence:Z

.field private Volume:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertSound;IIILcom/dexcom/cgm/model/enums/SpeakerType;Z)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/AlertKind;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertReceivedJSON;->Name:Ljava/lang/String;

    .line 38
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/enums/AlertSound;->getAlertSoundString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertReceivedJSON;->Sound:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertReceivedJSON;->Volume:I

    .line 40
    iput p4, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertReceivedJSON;->MaxVolume:I

    .line 41
    iput p5, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertReceivedJSON;->AlertCount:I

    .line 42
    iput-object p6, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertReceivedJSON;->Port:Lcom/dexcom/cgm/model/enums/SpeakerType;

    .line 43
    iput-boolean p7, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertReceivedJSON;->TotalSilence:Z

    .line 44
    return-void
.end method
