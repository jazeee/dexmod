.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/QuickGlanceUpdateJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "QuickGlanceUpdateJSON.java"


# instance fields
.field private EGV:Ljava/lang/String;

.field private State:Ljava/lang/String;

.field private TrendArrow:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/h/a/b;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/QuickGlanceUpdateJSON;->State:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getEgv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/QuickGlanceUpdateJSON;->EGV:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getTrendArrow()Lcom/dexcom/cgm/h/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/a/e;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/QuickGlanceUpdateJSON;->TrendArrow:Ljava/lang/String;

    .line 32
    return-void
.end method
