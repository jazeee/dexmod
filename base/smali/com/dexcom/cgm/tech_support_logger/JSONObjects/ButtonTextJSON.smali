.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ButtonTextJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "ButtonTextJSON.java"


# instance fields
.field private final ButtonText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ButtonTextJSON;->ButtonText:Ljava/lang/String;

    .line 12
    return-void
.end method
