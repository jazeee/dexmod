.class public final Lcom/dexcom/cgm/model/ServerConfiguration;
.super Ljava/lang/Object;
.source "ServerConfiguration.java"


# instance fields
.field private final m_applicationId:Ljava/util/UUID;

.field private final m_url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/util/UUID;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    if-nez p2, :cond_1

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty Application ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    iput-object p1, p0, Lcom/dexcom/cgm/model/ServerConfiguration;->m_url:Ljava/net/URL;

    .line 30
    iput-object p2, p0, Lcom/dexcom/cgm/model/ServerConfiguration;->m_applicationId:Ljava/util/UUID;

    .line 31
    return-void
.end method


# virtual methods
.method public final getApplicationId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/model/ServerConfiguration;->m_applicationId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/model/ServerConfiguration;->m_url:Ljava/net/URL;

    return-object v0
.end method
