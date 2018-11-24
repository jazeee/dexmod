.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogDisappearingJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "DialogDisappearingJSON.java"


# instance fields
.field DisplayedText:Ljava/lang/String;

.field private Duration:J

.field private Transition:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 11
    const-string v0, "Leaving Alert"

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogDisappearingJSON;->Transition:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 11
    const-string v0, "Leaving Alert"

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogDisappearingJSON;->Transition:Ljava/lang/String;

    .line 25
    iput-wide p2, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogDisappearingJSON;->Duration:J

    .line 26
    iput-object p1, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogDisappearingJSON;->DisplayedText:Ljava/lang/String;

    .line 27
    return-void
.end method
