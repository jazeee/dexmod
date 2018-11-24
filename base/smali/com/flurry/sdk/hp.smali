.class public final Lcom/flurry/sdk/hp;
.super Lcom/flurry/sdk/eq;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/flurry/sdk/ho;

.field public c$7f7b619d:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "com.flurry.android.sdk.FlurrySessionEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/eq;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
