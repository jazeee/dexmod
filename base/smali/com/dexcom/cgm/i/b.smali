.class public final Lcom/dexcom/cgm/i/b;
.super Ljava/lang/Object;
.source "CgmPresentationExtension.java"


# instance fields
.field m_internalSettings:Lcom/dexcom/cgm/b/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromInternal(Lcom/dexcom/cgm/b/s;)Lcom/dexcom/cgm/i/b;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/dexcom/cgm/i/b;

    invoke-direct {v0}, Lcom/dexcom/cgm/i/b;-><init>()V

    .line 28
    iput-object p0, v0, Lcom/dexcom/cgm/i/b;->m_internalSettings:Lcom/dexcom/cgm/b/s;

    .line 29
    return-object v0
.end method


# virtual methods
.method public final getUserAlertProperties()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/i/b;->m_internalSettings:Lcom/dexcom/cgm/b/s;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/s;->getUserAlertProperties()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    return-object v0
.end method
