.class public abstract Lcom/flurry/sdk/eq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "com.flurry.android.sdk.ReplaceMeWithAProperEventName"

    iput-object v0, p0, Lcom/flurry/sdk/eq;->g:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event must have a name!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/eq;->g:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/eq;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/eq;)V

    .line 26
    return-void
.end method
