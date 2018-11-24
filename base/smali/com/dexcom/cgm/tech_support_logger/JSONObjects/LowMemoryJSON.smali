.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/LowMemoryJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "LowMemoryJSON.java"


# instance fields
.field private m_lastTrimLevel:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 21
    iput p1, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/LowMemoryJSON;->m_lastTrimLevel:I

    .line 22
    return-void
.end method
