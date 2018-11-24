.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/StateCheckJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "StateCheckJSON.java"


# instance fields
.field private m_message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/StateCheckJSON;->m_message:Ljava/lang/String;

    .line 15
    return-void
.end method
