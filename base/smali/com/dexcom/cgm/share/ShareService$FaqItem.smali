.class public final Lcom/dexcom/cgm/share/ShareService$FaqItem;
.super Ljava/lang/Object;
.source "ShareService.java"


# instance fields
.field private Title:Ljava/lang/String;

.field private WebViewUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/share/ShareService$FaqItem;->Title:Ljava/lang/String;

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/share/ShareService$FaqItem;->WebViewUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareService$FaqItem;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebViewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareService$FaqItem;->WebViewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/ShareService$FaqItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
