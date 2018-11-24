.class final Lcom/flurry/sdk/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/er;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/er",
        "<",
        "Lcom/flurry/sdk/hp;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/flurry/sdk/cj;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cj;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/flurry/sdk/ck;->a:Lcom/flurry/sdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/eq;)V
    .locals 4

    .prologue
    .line 119
    check-cast p1, Lcom/flurry/sdk/hp;

    .line 1122
    iget-object v0, p0, Lcom/flurry/sdk/ck;->a:Lcom/flurry/sdk/cj;

    invoke-static {v0}, Lcom/flurry/sdk/cj;->a(Lcom/flurry/sdk/cj;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/hp;->b:Lcom/flurry/sdk/ho;

    iget-object v1, p0, Lcom/flurry/sdk/ck;->a:Lcom/flurry/sdk/cj;

    invoke-static {v1}, Lcom/flurry/sdk/cj;->a(Lcom/flurry/sdk/cj;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1126
    :cond_0
    sget-object v0, Lcom/flurry/sdk/cz;->a:[I

    iget v1, p1, Lcom/flurry/sdk/hp;->c$7f7b619d:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1137
    :cond_1
    :goto_0
    return-void

    .line 1128
    :pswitch_0
    iget-object v1, p0, Lcom/flurry/sdk/ck;->a:Lcom/flurry/sdk/cj;

    iget-object v2, p1, Lcom/flurry/sdk/hp;->b:Lcom/flurry/sdk/ho;

    iget-object v0, p1, Lcom/flurry/sdk/hp;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/cj;->a(Lcom/flurry/sdk/ho;Landroid/content/Context;)V

    goto :goto_0

    .line 1132
    :pswitch_1
    iget-object v1, p0, Lcom/flurry/sdk/ck;->a:Lcom/flurry/sdk/cj;

    iget-object v0, p1, Lcom/flurry/sdk/hp;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/cj;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 1136
    :pswitch_2
    iget-object v1, p0, Lcom/flurry/sdk/ck;->a:Lcom/flurry/sdk/cj;

    iget-object v0, p1, Lcom/flurry/sdk/hp;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/cj;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 1140
    :pswitch_3
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/ck;->a:Lcom/flurry/sdk/cj;

    invoke-static {v2}, Lcom/flurry/sdk/cj;->b(Lcom/flurry/sdk/cj;)Lcom/flurry/sdk/er;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/es;->b(Ljava/lang/String;Lcom/flurry/sdk/er;)V

    .line 1142
    iget-object v0, p0, Lcom/flurry/sdk/ck;->a:Lcom/flurry/sdk/cj;

    iget-wide v2, p1, Lcom/flurry/sdk/hp;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/cj;->a(J)V

    goto :goto_0

    .line 1126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
