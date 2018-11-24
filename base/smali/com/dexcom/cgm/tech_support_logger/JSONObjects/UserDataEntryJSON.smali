.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/UserDataEntryJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "UserDataEntryJSON.java"


# instance fields
.field private Data:Ljava/lang/String;

.field private ScreenName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/UserDataEntryJSON;->ScreenName:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/UserDataEntryJSON;->Data:Ljava/lang/String;

    .line 13
    return-void
.end method
