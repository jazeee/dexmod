.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BatteryStatusJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "BatteryStatusJSON.java"


# instance fields
.field private IsCharging:Z

.field private Level:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BatteryStatusJSON;->IsCharging:Z

    .line 24
    iput p2, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BatteryStatusJSON;->Level:I

    .line 25
    return-void
.end method
