.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogAppearingJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "DialogAppearingJSON.java"


# instance fields
.field private DisplayedText:Ljava/lang/String;

.field private Transition:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 11
    const-string v0, "Entering Alert"

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogAppearingJSON;->Transition:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogAppearingJSON;->DisplayedText:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogAppearingJSON;->DisplayedText:Ljava/lang/String;

    .line 19
    return-void
.end method
