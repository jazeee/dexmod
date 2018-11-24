.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenDisappearingJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "ScreenDisappearingJSON.java"


# instance fields
.field private Duration:J

.field private ScreenHint:Ljava/lang/String;

.field private ScreenName:Ljava/lang/String;

.field private Transition:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 15
    const-string v0, "Leaving"

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenDisappearingJSON;->Transition:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 15
    const-string v0, "Leaving"

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenDisappearingJSON;->Transition:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenDisappearingJSON;->ScreenName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenDisappearingJSON;->ScreenHint:Ljava/lang/String;

    .line 32
    iput-wide p3, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenDisappearingJSON;->Duration:J

    .line 33
    return-void
.end method
