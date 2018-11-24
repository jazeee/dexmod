.class public final Lcom/dexcom/cgm/j/b;
.super Ljava/lang/Object;
.source "EvSystemHealthAlertUpdate.java"


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


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlertList(Ljava/lang/Iterable;)Lcom/dexcom/cgm/j/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;)",
            "Lcom/dexcom/cgm/j/b;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/dexcom/cgm/j/b;

    invoke-direct {v0}, Lcom/dexcom/cgm/j/b;-><init>()V

    .line 27
    iput-object p0, v0, Lcom/dexcom/cgm/j/b;->m_alerts:Ljava/lang/Iterable;

    .line 28
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
    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/j/b;->m_alerts:Ljava/lang/Iterable;

    return-object v0
.end method
