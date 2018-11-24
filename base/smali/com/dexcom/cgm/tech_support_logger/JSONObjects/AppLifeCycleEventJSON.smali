.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AppLifeCycleEventJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "AppLifeCycleEventJSON.java"


# instance fields
.field PhoneDescription:Ljava/lang/String;

.field ProcessId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 13
    iput p1, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AppLifeCycleEventJSON;->ProcessId:I

    .line 14
    iput-object p2, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AppLifeCycleEventJSON;->PhoneDescription:Ljava/lang/String;

    .line 15
    return-void
.end method
