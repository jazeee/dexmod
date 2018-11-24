.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/EGVCircleUpdateJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "EGVCircleUpdateJSON.java"


# instance fields
.field private EGVValue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EGV Value"
    .end annotation
.end field

.field private Indicators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private State:Ljava/lang/String;

.field private TrendArrow:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Trend Arrow"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 22
    const-string v0, "EGV Circle"

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/EGVCircleUpdateJSON;->State:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/h/a/b;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/h/a/b;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 22
    const-string v0, "EGV Circle"

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/EGVCircleUpdateJSON;->State:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getEgv()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/EGVCircleUpdateJSON;->EGVValue:I

    .line 35
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getTrendArrow()Lcom/dexcom/cgm/h/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/a/e;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/EGVCircleUpdateJSON;->TrendArrow:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/EGVCircleUpdateJSON;->Indicators:Ljava/util/List;

    .line 38
    return-void
.end method
