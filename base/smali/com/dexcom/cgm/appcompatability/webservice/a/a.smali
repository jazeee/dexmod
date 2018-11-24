.class public final Lcom/dexcom/cgm/appcompatability/webservice/a/a;
.super Ljava/lang/Object;
.source "DexcomAppCompatEndpoint.java"

# interfaces
.implements Lretrofit/Endpoint;


# instance fields
.field private m_url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/dexcom/cgm/appcompatability/webservice/a/a;->m_url:Ljava/net/URL;

    .line 20
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/a/a;->m_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
