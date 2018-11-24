.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenAppearingJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "ScreenAppearingJSON.java"


# instance fields
.field private ScreenHint:Ljava/lang/String;

.field private ScreenName:Ljava/lang/String;

.field private Transition:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 13
    const-string v0, "Entering"

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenAppearingJSON;->Transition:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenAppearingJSON;->ScreenName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenAppearingJSON;->ScreenHint:Ljava/lang/String;

    .line 22
    return-void
.end method
