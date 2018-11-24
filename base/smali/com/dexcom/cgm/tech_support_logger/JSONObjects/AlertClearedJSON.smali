.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertClearedJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "AlertClearedJSON.java"


# instance fields
.field private Name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/AlertKind;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertClearedJSON;->Name:Ljava/lang/String;

    .line 24
    return-void
.end method
