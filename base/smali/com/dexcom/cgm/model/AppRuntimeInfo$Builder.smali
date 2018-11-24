.class public Lcom/dexcom/cgm/model/AppRuntimeInfo$Builder;
.super Ljava/lang/Object;
.source "AppRuntimeInfo.java"


# instance fields
.field appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/dexcom/cgm/model/AppRuntimeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/AppRuntimeInfo;-><init>(Lcom/dexcom/cgm/model/AppRuntimeInfo$1;)V

    iput-object v0, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo$Builder;->appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    .line 89
    return-void
.end method


# virtual methods
.method public build()Lcom/dexcom/cgm/model/AppRuntimeInfo;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo$Builder;->appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dexcom/cgm/model/AppRuntimeInfo$Builder;->appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    .line 95
    return-object v0
.end method
