.class final Lcom/flurry/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/flurry/sdk/hp;


# direct methods
.method constructor <init>(Lcom/flurry/android/b;Lcom/flurry/sdk/hp;)V
    .locals 0

    .prologue
    .line 91
    iput-object p2, p0, Lcom/flurry/android/c;->a:Lcom/flurry/sdk/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/flurry/android/d;->a:[I

    iget-object v1, p0, Lcom/flurry/android/c;->a:Lcom/flurry/sdk/hp;

    iget v1, v1, Lcom/flurry/sdk/hp;->c$7f7b619d:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    invoke-static {}, Lcom/flurry/android/a;->a$53c20f78()Lcom/dexcom/cgm/h/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/flurry/android/a;->a$53c20f78()Lcom/dexcom/cgm/h/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/h/b;->onSessionStarted()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
