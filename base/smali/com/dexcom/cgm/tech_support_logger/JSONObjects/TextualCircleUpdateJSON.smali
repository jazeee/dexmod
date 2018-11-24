.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TextualCircleUpdateJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "TextualCircleUpdateJSON.java"


# instance fields
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

.field private Text:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TextualCircleUpdateJSON;->State:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TextualCircleUpdateJSON;->Text:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TextualCircleUpdateJSON;->Indicators:Ljava/util/List;

    .line 32
    return-void
.end method
