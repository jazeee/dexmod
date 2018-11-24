.class public final Lcom/dexcom/cgm/b/t;
.super Ljava/lang/Object;
.source "EvCgmAlertUpdate.java"


# instance fields
.field private m_alerts:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private m_inactivateAll:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/b/t;->m_inactivateAll:Z

    return-void
.end method

.method public static createAlertList(Ljava/lang/Iterable;)Lcom/dexcom/cgm/b/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;)",
            "Lcom/dexcom/cgm/b/t;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/dexcom/cgm/b/t;

    invoke-direct {v0}, Lcom/dexcom/cgm/b/t;-><init>()V

    .line 36
    iput-object p0, v0, Lcom/dexcom/cgm/b/t;->m_alerts:Ljava/lang/Iterable;

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dexcom/cgm/b/t;->m_inactivateAll:Z

    .line 38
    return-object v0
.end method

.method public static createInactivateAllAlerts()Lcom/dexcom/cgm/b/t;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/dexcom/cgm/b/t;

    invoke-direct {v0}, Lcom/dexcom/cgm/b/t;-><init>()V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/dexcom/cgm/b/t;->m_alerts:Ljava/lang/Iterable;

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dexcom/cgm/b/t;->m_inactivateAll:Z

    .line 52
    return-object v0
.end method


# virtual methods
.method public final getAlerts()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/b/t;->m_alerts:Ljava/lang/Iterable;

    return-object v0
.end method

.method public final isInactivateAll()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/dexcom/cgm/b/t;->m_inactivateAll:Z

    return v0
.end method
